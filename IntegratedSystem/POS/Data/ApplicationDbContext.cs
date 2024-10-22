using Microsoft.EntityFrameworkCore;

namespace POS.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }

        public DbSet<Product> Products { get; set; }  // Modify this for PMS and Accounting
    }
}
