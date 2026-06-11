FROM nginx:alpine

# Site estático single-file: copia o conteúdo para a raiz do nginx
COPY index.html favicon.ico /usr/share/nginx/html/
COPY fotos/ /usr/share/nginx/html/fotos/

EXPOSE 80
