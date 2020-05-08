﻿using System;
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
    public class NeedsController : ControllerBase
    {
        private readonly NeedService _needsService;
        private readonly UserService _userService;

        public NeedsController(NeedService needService, UserService userService)
        {
            _needsService = needService;
            _userService = userService;
        }

        [HttpGet]
        public ActionResult<List<Need>> Get() => _needsService.Get();



        [HttpGet("getNeed/{id:length(24)}", Name = "GetNeed")]
        public ActionResult<EditNeedDTO> GetNeed(string id)
        {
            var need = _needsService.GetNeed(id);

            EditNeedDTO needDTO;
            if (need == null)
            {
                return NotFound();
            }
            else
            {
                needDTO = new EditNeedDTO
                {
                    Title = need.Title,
                    Description = need.Description,
                    Date = need.Date
                };
            }

            return needDTO;
        }

        [HttpGet("{id:length(24)}", Name = "GetNeeds")]
        public ActionResult<List<Need>> GetNeeds(string id)
        {
            return _needsService.GetNeedsByUser(id);
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
                Date = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss")
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
            user.NeedsIds.ForEach(id =>
            {
                var need = _needsService.GetNeed(id.ToString());
                EditNeedDTO NeedDTO = new EditNeedDTO
                {
                    Description = need.Description,
                    Date = need.Date,
                    Title = need.Title
               


                };
                ListOfAssigned.Add(NeedDTO);
            }
            );

            return ListOfAssigned;
        }

    }
}
