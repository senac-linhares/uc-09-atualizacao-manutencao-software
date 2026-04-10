using ApiPetshop.Models;
using Microsoft.EntityFrameworkCore;

namespace ApiPetshop.Data;

public static class SeedData
{
    public static void Seed(AppDbContext context)
    {
        if (!context.FotosAntesDepois.Any())
        {
            context.FotosAntesDepois.AddRange(
                new FotoAntesDepois
                {
                    NomeCachorro = "Bob",
                    CaminhoFoto = "uploads/bob-antes-depois.jpg",
                    LinkRedeSocial = null,
                    DataCriacao = DateTime.UtcNow
                },
                new FotoAntesDepois
                {
                    NomeCachorro = "Luna",
                    CaminhoFoto = "uploads/luna-antes-depois.jpg",
                    LinkRedeSocial = null,
                    DataCriacao = DateTime.UtcNow
                },
                new FotoAntesDepois
                {
                    NomeCachorro = "Toby",
                    CaminhoFoto = "uploads/toby-antes-depois.jpg",
                    LinkRedeSocial = null,
                    DataCriacao = DateTime.UtcNow
                }
            );
            context.SaveChanges();
        }
    }
}
