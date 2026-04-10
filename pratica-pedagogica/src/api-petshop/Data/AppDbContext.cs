using ApiPetshop.Models;
using Microsoft.EntityFrameworkCore;

namespace ApiPetshop.Data;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    {
    }

    public DbSet<FotoAntesDepois> FotosAntesDepois { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfiguration(new Configurations.FotoAntesDepoisConfiguration());
        base.OnModelCreating(modelBuilder);
    }
}
