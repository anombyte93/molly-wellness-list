FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy HTML
COPY index.html /usr/share/nginx/html/index.html

# Railway uses port 80 by default for nginx
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
