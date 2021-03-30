using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using SportsClub.Data;
using SportsClub.SqlConnection;

namespace SportsClub.Pages.Billpayment
{
    public class IndexModel : PageModel
    {
        private readonly SportsClub.Data.SportsClubContext _context;

        public IndexModel(SportsClub.Data.SportsClubContext context)
        {
            _context = context;
        }

        public IList<Payment> Payment { get;set; }

        public async Task OnGetAsync()
        {
            Payment = await _context.Payment.ToListAsync();
        }
    }
}
