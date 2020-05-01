using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backendapi.DTO
{
    public class EditUserDTO
    {
        public string Lastname { get; set; }

        public string Firstname { get; set; }

        public string Telephone { get; set; }

        public string Email { get; set; }

        public string Address { get; set; }

    }
}
