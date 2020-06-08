using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using backendapi.Models;
using backendapi.Services;
using backendapi.DTO;
using MongoDB.Bson;


namespace backendapi.Controllers
{

    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {

        private readonly UserService _userService;
        private readonly NeedService _needService;

        public UsersController(UserService userService, NeedService needService)
        {
            _userService = userService;
            _needService = needService;
        }

        [HttpGet]
        public ActionResult<List<User>> Get() => _userService.Get();

        [HttpPost]
        [Route("Register")]
        public ActionResult<string> Create(User user)
        {
            var userCheck = _userService.GetUserByEmail(user.Email);

            if (userCheck != null)
            {
                return NotFound();
            }
            _userService.Create(user);
            CreatedAtRoute("GetUser", new { id = user.Id.ToString() }, user);

            LoginUserDTO loginUserDTO = new LoginUserDTO
            {
                Id = user.Id,
                Type = user.Type,

            };

            return UserService.SerialGenerator(loginUserDTO);

        }

        [HttpGet("getUser/{id:length(24)}", Name = "GetUser")]
        public ActionResult<EditUserDTO> GetUser(string id)
        {
            var user = _userService.GetUser(id);

            EditUserDTO UserDTO;
            if (user == null)
            {
                return NotFound();
            }
            else
            {
                UserDTO = new EditUserDTO
                {
                    Lastname = user.Lastname,
                    Firstname = user.Firstname,
                    Email = user.Email,
                    Telephone = user.Telephone,
                    Address = user.Address,

                };
            }

            return UserDTO;
        }

        [HttpGet("{id:length(24)}", Name = "GetNeedsIds")]
        public ActionResult<List<MongoDB.Bson.ObjectId>> Get(string id)
        {
            var ListsIds = _userService.GetUserNeedsIds(id);
            
            if (ListsIds == null)
            {
                return NotFound();
            }
          
      
            return ListsIds;
        }

        [HttpPut("updateUser/{id:length(24)}", Name = "UpdateUser")]
        public ActionResult<User> UpdateUser(string id, [FromBody] User user)
        {
            var UserCheck = _userService.GetUser(id);

            if (UserCheck == null)
            {
                return NotFound();
            }

            user.Id = id;
            user.Password = UserCheck.Password;
            user.Type = UserCheck.Type;
            user.NeedsIds = UserCheck.NeedsIds;
         

            _userService.UpdateUser(id, user);
            return NoContent();
        }

        [HttpPut("assign/{uid:length(24)}/{nid:length(24)}", Name = "AssignUserNeed")]
        public ActionResult<User> AssignUserNeed(string uid, [FromRouteAttribute] string nid)
        {
            var UserCheck = _userService.GetUser(uid);
            if (UserCheck == null)
            {
                return NotFound();
            }
            ObjectId nidy = new ObjectId(nid);

            List<Need> ListOfAssigned = new List<Need>();
            UserCheck.NeedsIds.ForEach(uid =>
            {
                var need = _needService.GetNeed(uid.ToString());
                ListOfAssigned.Add(need);
            }
            );

            var NeedGet = _needService.GetNeed(nid);
            if (NeedGet == null)
            {
                return NotFound();
            }
            NeedGet.State = Utils.Utils.NEED_STATE_ASSIGNED;
           
            UserCheck.NeedsIds.Add(nidy);
            _needService.UpdateNeed(nid, NeedGet);
            _userService.AssignUserNeed(uid, nidy, UserCheck);
            return NoContent();
        }

        [HttpPut("unassign/{uid:length(24)}/{nid:length(24)}", Name = "UnassignUserNeed")]
        public ActionResult<User> UnassignUserNeed(string uid, [FromRouteAttribute] string nid)
        {
            var UserCheck = _userService.GetUser(uid);
            if (UserCheck == null)
            {
                return NotFound();
            }
            ObjectId nidy = new ObjectId(nid);

            var NeedGet = _needService.GetNeed(nid);
            if (NeedGet == null)
            {
                return NotFound();
            }
            NeedGet.State = Utils.Utils.NEED_STATE_UNASSIGNED;
           
            UserCheck.NeedsIds.Remove(nidy);
            _needService.UpdateNeed(nid, NeedGet);
            _userService.AssignUserNeed(uid, nidy, UserCheck);
            return NoContent();
        }

        [HttpPut("done/{uid:length(24)}/{nid:length(24)}", Name = "DoneUserNeed")]
        public ActionResult<User> DoneUserNeed(string uid, [FromRouteAttribute] string nid)
        {
          
            var NeedGet = _needService.GetNeed(nid);
            if (NeedGet == null)
            {
                return NotFound();
            }
            NeedGet.State = Utils.Utils.NEED_STATE_DONE;
          

            _needService.UpdateNeed(nid, NeedGet);
            return NoContent();
        }

        [HttpPost]
        [Route("Login")]

        public ActionResult<string> Login(User user)
        {

            var status = _userService.Login(user.Email, user.Password);

            if (status == null)
            {

                return NotFound();
            }

            else
            {
                LoginUserDTO loginUserDTO = new LoginUserDTO
                {
                    Id = status.Id,
                    Type = status.Type,

                };

                return UserService.SerialGenerator(loginUserDTO);
            }

        }

    }
}
