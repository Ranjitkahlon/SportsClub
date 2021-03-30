using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SportsClub.SqlConnection
{
    public class Plan
    {

        public int id { get; set; }

        [Display(Name = "Plan Type")]
        public string planType { get; set; }

        [Display(Name = "Duration ")]
        public string Duration { get; set; }


        [Display(Name = "Price ")]
        public string Price { get; set; }

    }
}
