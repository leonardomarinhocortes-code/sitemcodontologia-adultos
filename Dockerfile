FROM nginx:alpine

# Site estático single-file: copia o conteúdo para a raiz do nginx
COPY index.html favicon.ico /usr/share/nginx/html/
COPY fotos/ /usr/share/nginx/html/fotos/

EXPOSE 80

# CMD explícito (mesmo default do nginx:alpine) para remover qualquer ambiguidade
CMD ["nginx", "-g", "daemon off;"]
