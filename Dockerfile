# Step 1: Secure, lightweight Nginx base image
FROM nginx:alpine

# Step 2: Remove default Nginx welcome page and configs
RUN rm -rf /usr/share/nginx/html/* && rm /etc/nginx/conf.d/default.conf

# Step 3: Copy our professional configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Step 4: Copy the HTML/JS application file
COPY index.html /usr/share/nginx/html/index.html

# Step 5: Fix permissions so the container doesn't crash (Crucial Step)
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /var/cache/nginx /var/log/nginx /etc/nginx/conf.d /usr/share/nginx/html

# Step 6: Use the non-root user for security
USER nginx

# Step 7: Document port
EXPOSE 8080

# Step 8: Start Nginx
CMD ["nginx", "-g", "daemon off;"]