const valorInput = document.querySelector<HTMLInputElement>('#valor');
const descontoInput = document.querySelector<HTMLInputElement>('#desconto');
const botao = document.querySelector<HTMLButtonElement>('#calcular');
const resultado = document.querySelector<HTMLParagraphElement>('#resultado');

botao?.addEventListener('click', () => {
  const valor = Number(valorInput?.value ?? 0);
  const desconto = Number(descontoInput?.value ?? 0);

  // BUG intencional: o desconto está sendo somado ao valor final.
  const total = valor + (valor * desconto / 100);

  if (resultado) {
    resultado.textContent = `Total com desconto: R$ ${total.toFixed(2)}`;
  }
});
