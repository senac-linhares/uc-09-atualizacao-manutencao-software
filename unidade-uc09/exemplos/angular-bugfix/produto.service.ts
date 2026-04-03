export interface Produto {
  nome: string;
  preco: number;
  emPromocao: boolean;
}

export class ProdutoService {
  private produtos: Produto[] = [
    { nome: 'Mouse', preco: 80, emPromocao: true },
    { nome: 'Teclado', preco: 120, emPromocao: false },
    { nome: 'Headset', preco: 150, emPromocao: true }
  ];

  listarPromocoes(): Produto[] {
    // BUG intencional: deveria retornar apenas itens em promoção.
    return this.produtos.filter(produto => !produto.emPromocao);
  }

  calcularPrecoComDesconto(preco: number, desconto: number): number {
    // BUG intencional: o desconto está sendo somado ao preço.
    return preco + (preco * desconto / 100);
  }
}
