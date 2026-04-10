namespace ApiPetshop.Models;

public class FotoAntesDepois
{
    public int Id { get; set; }
    public string NomeCachorro { get; set; } = string.Empty;
    public string CaminhoFoto { get; set; } = string.Empty;
    public string? LinkRedeSocial { get; set; }
    public DateTime DataCriacao { get; set; } = DateTime.UtcNow;
}


public class UploadFotoDto
{
    public string NomeCachorro { get; set; }
    public IFormFile Arquivo { get; set; }
}