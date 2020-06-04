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
    public class DonationsController : ControllerBase
    {
        private readonly DonationsService _donationsService;

        public DonationsController(DonationsService donationService)
        {
            _donationsService = donationService;
        }

        [HttpGet]
        public ActionResult<List<Donations>> Get() => _donationsService.Get();


        [HttpGet("{id:length(24)}", Name = "GetDonation")]
        public ActionResult<Donations> Get(string id)
        {
            var donations = _donationsService.GetDonation(id);

            if (donations == null)
            {
                return NotFound();
            }

            return donations;
        }


        [HttpPut("{id:length(24)}")]
        public ActionResult<Donations> UpdateDonation(string id,[FromBody] Donations donations)
        {

            var DonationCheck = _donationsService.GetDonation(id);
            if(DonationCheck == null)
            {
                return NotFound();
            }
               
            _donationsService.UpdateDonation(id, donations);
            return NoContent();
        }


    }
}
