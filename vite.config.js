import { resolve } from 'path';
import { defineConfig } from 'vite';

export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        'aco-corten': resolve(__dirname, 'aco-corten.html'),
        'aco-inox': resolve(__dirname, 'aco-inox.html'),
        'vidro-curvo': resolve(__dirname, 'vidro-curvo.html'),
        'servicos-especiais': resolve(__dirname, 'servicos-especiais.html'),
        contato: resolve(__dirname, 'contato.html'),
      },
    },
  },
});
