using ApiPetshop.Data;
using ApiPetshop.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ApiPetshop.Controllers;

[ApiController]
[Route("api/fotos")]
public class FotosAntesDepoisController : ControllerBase
{
    private readonly AppDbContext _context;

    public FotosAntesDepoisController(AppDbContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<IActionResult> ObterTodas()
    {
        var fotos = await _context.FotosAntesDepois.ToListAsync();
        return Ok(fotos);
    }

    /// <summary>Upload de foto antes/depois</summary>
    [HttpPost("upload")]
    [Consumes("multipart/form-data")]
    public async Task<IActionResult> UploadFoto([FromForm] UploadFotoDto request)
    {
        if (request.Arquivo == null || request.Arquivo.Length == 0)
            return BadRequest("Arquivo não enviado.");

        var uploadsPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "uploads");
        if (!Directory.Exists(uploadsPath))
            Directory.CreateDirectory(uploadsPath);

        var fileName = $"{Guid.NewGuid()}_{request.Arquivo.FileName}";
        var filePath = Path.Combine(uploadsPath, fileName);

        using (var stream = new FileStream(filePath, FileMode.Create))
        {
            await request.Arquivo.CopyToAsync(stream);
        }

        var foto = new FotoAntesDepois
        {
            NomeCachorro = request.NomeCachorro,
            CaminhoFoto = $"uploads/{fileName}",
            DataCriacao = DateTime.UtcNow
        };
        _context.FotosAntesDepois.Add(foto);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(ObterTodas), new { id = foto.Id }, foto);
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> Deletar(int id)
    {
        var foto = await _context.FotosAntesDepois.FindAsync(id);
        if (foto == null)
            return NotFound(new { mensagem = "Foto não encontrada." });

        _context.FotosAntesDepois.Remove(foto);
        await _context.SaveChangesAsync();

        return Ok(new { mensagem = "Foto excluída com sucesso." });
    }
}
