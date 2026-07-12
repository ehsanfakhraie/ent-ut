FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY op.html /usr/share/nginx/html/op.html
COPY qa.html /usr/share/nginx/html/qa.html
COPY sources /usr/share/nginx/html/sources

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1/healthz || exit 1
