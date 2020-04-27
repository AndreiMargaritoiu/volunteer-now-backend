using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using backendapi.Models;
using backendapi.Services;

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



        [HttpPost]
        public ActionResult<Need> Create(Need need)
        {
            _needsService.CreateNeed(need);

            return CreatedAtRoute("GetNeed", new { id = need.Id.ToString() }, need);
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
