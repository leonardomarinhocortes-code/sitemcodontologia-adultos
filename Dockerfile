FROM nginx:alpine

# Site estático single-file: copia o conteúdo para a raiz do nginx
COPY index.html favicon.ico /usr/share/nginx/html/
COPY fotos/ /usr/share/nginx/html/fotos/

EXPOSE 80

# Health check explícito: bate na porta 80 para o EasyPanel saber se o nginx está vivo
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
  CMD wget -qO- http://localhost/ >/dev/null 2>&1 || exit 1

# CMD explícito (mesmo default do nginx:alpine) para remover qualquer ambiguidade
CMD ["nginx", "-g", "daemon off;"]
