using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using backendapi.Models;
using backendapi.Services;
using backendapi.DTO;
using backendapi.Utils;
using MongoDB.Bson;

namespace backendapi.Controllers
{

  
    [Route("api/[controller]")]
    [ApiController]
    public class NeedsController : ControllerBase
    {
        private readonly NeedService _needsService;
        private readonly UserService _userService;

        public NeedsController(NeedService needService, UserService userService)
        {
            _needsService = needService;
            _userService = userService;
        }


        [HttpGet("get/unassigned/{id:length(24)}")]
        public ActionResult<List<EditNeedDTO>> Get(string id)
        {

            List<EditNeedDTO> ListUnassignedDTO = new List<EditNeedDTO>();
            var user = _userService.GetUser(id);

            if(user == null)
            {
                return NotFound();
            }

            ISet<ObjectId> AssignedNeedsSet = new HashSet<ObjectId>(user.NeedsIds);

            _needsService.Get().ForEach(need =>
             {
                 if (!(AssignedNeedsSet.Contains(new ObjectId(need.Id))))
                 {
                     EditNeedDTO EDT = new EditNeedDTO()
                     {
                         Title =  need.Title,
                         Description = need.Description,
                         Date = need.Date,
                         State =  need.State,
                         City  = user.Address,
                         Id = need.Id
                     };
                     ListUnassignedDTO.Add(EDT);
                 }

             });

            return ListUnassignedDTO;
        }


        [HttpGet("getNeed/{id:length(24)}", Name = "GetNeed")]
        public ActionResult<EditNeedDTO> GetNeed(string id)
        {
            var need = _needsService.GetNeed(id);
            if (need == null)
            {
                return NotFound();
            }
            var UserNeed = _userService.GetUser(need.UserId.ToString());

   
            if (UserNeed == null)
            {
                return NotFound();
            }
         
            EditNeedDTO needDTO = new EditNeedDTO
            {
                Title = need.Title,
                Description = need.Description,
                Date = need.Date,
                State = need.State,
                City = UserNeed.Address
            };
            
            return needDTO;
        }

        [HttpGet("{id:length(24)}", Name = "GetNeeds")]
        public ActionResult<List<Need>> GetNeeds(string id)
        {
         
            return _needsService.GetNeedsByUser(id);
        }

        [HttpGet("getDone/{id:length(24)}", Name = "GetDoneNeeds")]
        public ActionResult<List<Need>> GetDoneNeeds(string id)
        {

            return _needsService.GetDoneNeedsByUser(id);
        }

        [HttpPut("{id:length(24)}")]
        public ActionResult<Need> UpdateNeed(string id, [FromBody] Need need)
        {

            var NeedCheck = _needsService.GetNeed(id);
            if (NeedCheck == null)
            {
                return NotFound();
            }

            _needsService.UpdateNeed(id, need);
            return NoContent();
        }



        [HttpPost("{id:length(24)}")]
        public ActionResult<Need> Create(string id, [FromBody] NeedCreateDTO NeedDTO)
        {

            Need NeedCreated = new Need
            {
                Title = NeedDTO.Title,
                Description = NeedDTO.Description,
                UserId = ObjectId.Parse(id),
                Date = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss"),
                State = Utils.Utils.NEED_STATE_UNASSIGNED
            };

            _needsService.CreateNeed(NeedCreated);
            return CreatedAtRoute("GetNeed", new { id = NeedCreated.Id.ToString() }, NeedCreated);
        }

        [HttpDelete("{id:length(24)}")]
        public ActionResult<Need> DeleteNeed(string id)
        {

            var NeedCheck = _needsService.GetNeed(id);
            if (NeedCheck == null)
            {
                return NotFound();
            }

            _needsService.DeleteNeed(id);
            return NoContent();
        }

        [HttpGet("get/assigned/{id:length(24)}", Name = "GetAssignedNeeds")]
        public ActionResult<List<EditNeedDTO>> GetAssignedNeeds(string id)
        {
            var user = _userService.GetUser(id);
            if (user == null)
            {
                return NotFound();
            }

            List<EditNeedDTO> ListOfAssigned = new List<EditNeedDTO>();
            System.Diagnostics.Debug.WriteLine(user.NeedsIds.Count);

            user.NeedsIds.ForEach(id =>
            {
                var need = _needsService.GetNeed(id.ToString());
                if (need != null && need.State == "Assigned")
                {
                    EditNeedDTO NeedDTO = new EditNeedDTO
                    {
                        Description = need.Description,
                        Date = need.Date,
                        Title = need.Title,
                        State = need.State,
                        City = user.Address,
                        Id = need.Id

                    };
                    ListOfAssigned.Add(NeedDTO);
                }
          
            }
            );

            return ListOfAssigned;
        }


        [HttpGet("get/done/{id:length(24)}", Name = "GetDoneVolunteerNeeds")]
        public ActionResult<List<EditNeedDTO>> GetDoneVolunteerNeeds(string id)
        {
            var user = _userService.GetUser(id);
            if (user == null)
            {
                return NotFound();
            }

            List<EditNeedDTO> ListOfDone = new List<EditNeedDTO>();
            System.Diagnostics.Debug.WriteLine(user.NeedsIds.Count);

            user.NeedsIds.ForEach(id =>
            {
                var need = _needsService.GetNeed(id.ToString());
                if (need != null && need.State == "Done")
                {
                    EditNeedDTO NeedDTO = new EditNeedDTO
                    {
                        Description = need.Description,
                        Date = need.Date,
                        Title = need.Title,
                        State = need.State,
                        City = user.Address,
                        Id = need.Id

                    };
                    ListOfDone.Add(NeedDTO);
                }

            }
            );

            return ListOfDone;
        }

    }
}
