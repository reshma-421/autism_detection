using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_autism.entities
{
    public class et_doctor
    {
        public string d_name { get; set; }
        public string category { get; set; }
        public string speci { get; set; }
        public string image { get; set; }
        public string phone { get; set; }

        public string g_id { get; set; }
        public string email { get; set; }
        public string ho_id { get; set; }
    }
}
