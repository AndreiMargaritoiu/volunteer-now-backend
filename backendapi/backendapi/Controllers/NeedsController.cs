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
    public class NeedsController : ControllerBase
    {
        private readonly NeedService _needsService;

        public NeedsController(NeedService needService)
        {
            _needsService = needService;
        }

        [HttpGet]
        public ActionResult<List<Need>> Get() => _needsService.Get();


        [HttpGet("{id:length(24)}", Name = "GetNeed")]
        public ActionResult<Need> Get(string id)
        {
            var need = _needsService.GetNeed(id);

            if (need == null)
            {
                return NotFound();
            }

            return need;
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
    }
}
