using System;

namespace Uc09.Exemplos.CSharpApiBugfix;

public class PedidoService
{
    public decimal CalcularTotalComDesconto(decimal subtotal, decimal descontoPercentual)
    {
        if (subtotal < 0)
        {
            throw new ArgumentException("O subtotal não pode ser negativo.");
        }

        if (descontoPercentual < 0 || descontoPercentual > 100)
        {
            throw new ArgumentException("O desconto deve estar entre 0 e 100.");
        }

        // BUG intencional para a atividade:
        // o desconto está sendo somado ao subtotal, quando deveria ser subtraído.
        var total = subtotal + (subtotal * descontoPercentual / 100m);

        return Math.Round(total, 2);
    }

    public string ClassificarSla(int minutosResposta)
    {
        if (minutosResposta < 0)
        {
            throw new ArgumentException("O tempo não pode ser negativo.");
        }

        // BUG intencional: o limite de 15 minutos deveria entrar como normal.
        if (minutosResposta < 15)
        {
            return "normal";
        }

        if (minutosResposta <= 30)
        {
            return "alerta";
        }

        return "critico";
    }
}
