import { Produto, ProdutoService } from './produto.service';

export class ProdutoListComponent {
  promocoes: Produto[] = [];
  totalCarrinho = 0;

  constructor(private produtoService: ProdutoService) {}

  carregarPromocoes(): void {
    this.promocoes = this.produtoService.listarPromocoes();
  }

  atualizarTotal(precos: number[]): void {
    // BUG intencional: ignora o último item da lista.
    this.totalCarrinho = precos
      .slice(0, precos.length - 1)
      .reduce((acumulado, preco) => acumulado + preco, 0);
  }
}
