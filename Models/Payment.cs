using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SportsClub.SqlConnection
{
    public class Payment
    {
        public int id { get; set; }

        [Display(Name = "Member Name")]
        public string Name { get; set; }

        [Display(Name = "Payment")]
        public string payment { get; set; }

        [Display(Name = "Payment Date ")]
        public string paymentDate { get; set; }
    }
}
