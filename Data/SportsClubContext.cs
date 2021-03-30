using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using SportsClub.SqlConnection;

namespace SportsClub.Data
{
    public class SportsClubContext : DbContext
    {
        public SportsClubContext (DbContextOptions<SportsClubContext> options)
            : base(options)
        {
        }

        public DbSet<SportsClub.SqlConnection.Member> Member { get; set; }

        public DbSet<SportsClub.SqlConnection.Payment> Payment { get; set; }

        public DbSet<SportsClub.SqlConnection.Plan> Plan { get; set; }
    }
}
