using Microsoft.EntityFrameworkCore;

namespace Accounting.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }

        public DbSet<Product> Products { get; set; }  // Modify this for PMS and Accounting
    }
}
