using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backendapi.DTO
{
    [Serializable]
    public class LoginUserDTO
    {
        public string Lastname { get; set; }

        public string Firstname { get; set; }

        public string Error { get; set; }
    }
}