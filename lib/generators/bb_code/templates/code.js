document.addEventListener('DOMContentLoaded', (event) => {
  const copyButtons = document.querySelectorAll('.copy-button');

  copyButtons.forEach(button => {
    button.addEventListener('click', () => {
      const codeBlock = button.previousElementSibling.querySelector('.code-block');
      const text = codeBlock.textContent;
      navigator.clipboard.writeText(text).then(() => {
        button.textContent = 'Copied!';
        setTimeout(() => {
          button.textContent = 'Copy';
        }, 2000);
      }).catch(err => {
        console.error('Failed to copy: ', err);
      });
    });
  });
});
