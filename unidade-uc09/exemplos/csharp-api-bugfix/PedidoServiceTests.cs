using Xunit;

namespace Uc09.Exemplos.CSharpApiBugfix.Tests;

public class PedidoServiceTests
{
    private readonly PedidoService _service = new();

    [Fact]
    public void DeveAplicarDescontoCorretamente()
    {
        var total = _service.CalcularTotalComDesconto(200m, 10m);
        Assert.Equal(180m, total);
    }

    [Fact]
    public void DeveClassificarSlaComoNormalAteQuinzeMinutos()
    {
        var classificacao = _service.ClassificarSla(15);
        Assert.Equal("normal", classificacao);
    }
}
