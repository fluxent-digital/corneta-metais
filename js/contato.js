/* ============================================
   CORNETA METAIS — Contact Page Logic
   Form → WhatsApp redirect
   ============================================ */

document.addEventListener('DOMContentLoaded', () => {
  const form = document.getElementById('contact-form');
  if (!form) return;

  form.addEventListener('submit', (e) => {
    e.preventDefault();

    const nome = document.getElementById('contact-name')?.value?.trim() || '';
    const telefone = document.getElementById('contact-phone')?.value?.trim() || '';
    const mensagem = document.getElementById('contact-message')?.value?.trim() || '';

    if (!mensagem) {
      alert('Por favor, escreva sua mensagem.');
      return;
    }

    // Build WhatsApp message
    let text = '';
    if (nome) text += `*Nome:* ${nome}\n`;
    if (telefone) text += `*Telefone:* ${telefone}\n`;
    text += `\n${mensagem}`;

    const encodedText = encodeURIComponent(text);
    const whatsappUrl = `https://wa.me/5543999913349?text=${encodedText}`;

    window.open(whatsappUrl, '_blank');
  });
});
