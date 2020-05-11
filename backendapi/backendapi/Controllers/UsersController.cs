﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using backendapi.Models;
using backendapi.Services;
using backendapi.DTO;


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
                Error = ""

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
          
            ListsIds.ForEach(objid =>
            {
                System.Diagnostics.Debug.WriteLine(
                    _needService.GetNeed(objid.ToString()).Title
                    );

                System.Diagnostics.Debug.WriteLine(
                    _needService.GetNeed(objid.ToString()).Description
                    );
            });
            return ListsIds;
        }

        [HttpPut("updateUser/{id:length(24)}", Name = "UpdateUser")]
        public ActionResult<User> UpdateUser(string id, [FromBody] User user)
        {
            Console.WriteLine("Am ajuns aici");
            var UserCheck = _userService.GetUser(id);

            user.Id = id;
            user.Password = UserCheck.Password;
            user.Type = UserCheck.Type;
            user.NeedsIds = UserCheck.NeedsIds;
            Console.WriteLine(id + " " + user.Lastname + "aaa");     
            if (UserCheck == null)
            {
                return NotFound();
            }

            _userService.UpdateUser(id, user);
            return NoContent();
        }

        [HttpPost]
        [Route("Login")]

        public ActionResult<string> Login(User user)
        {

            var userCheck = _userService.GetUserByEmail(user.Email);

            LoginUserDTO loginUserDTO;

            if (userCheck == null)
            {

                loginUserDTO = new LoginUserDTO
                {
                    Id = "",
                    Type = "",
                    Error = "user not found"

                };

                return UserService.SerialGenerator(loginUserDTO);
            }

            var status = _userService.Login(user.Email, user.Password);

            if (status == null)
            {

                loginUserDTO = new LoginUserDTO
                {
                    Id = "",
                    Type = "",
                    Error = "wrong password"

                };

                return UserService.SerialGenerator(loginUserDTO);
            }

            else
            {
                loginUserDTO = new LoginUserDTO
                {
                    Id = userCheck.Id,
                    Type = userCheck.Type,
                    Error = ""

                };

                return UserService.SerialGenerator(loginUserDTO);
            }

        }

    }
}
