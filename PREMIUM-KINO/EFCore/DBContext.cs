using System.Reflection;
using Microsoft.EntityFrameworkCore;
using PREMIUM_KINO.EFCore.Entities;

namespace PREMIUM_KINO.EFCore
{
    public class DBContext : DbContext
    {
        private const string Connection =
            @"Data Source = (localdb)\MSSQLLocalDB;Initial Catalog = PREMIUM_KINO; Integrated Security = True; Connect Timeout = 30; Encrypt=False;Trust Server Certificate=False;Application Intent = ReadWrite; Multi Subnet Failover=False";
        public DbSet<Users> Users { get; set; }
        public DbSet<Movie> Movie { get; set; }
        public DbSet<Schedule> Schedule { get; set; }
        public DbSet<Orders> Orders { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder builder) 
            => builder.UseSqlServer(Connection);

        protected override void OnModelCreating(ModelBuilder modelBuilder) 
            => modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
    }
}
