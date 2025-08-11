using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_autism.entities
{
    public class et_question
    {
        public string q_no { get; set; }
        public string category { get; set; }
        public string q_answer { get; set; }
        public string question { get; set; }
       
    
        public string option1 { get; set; }
        public string option2 { get; set; }
    }
}
