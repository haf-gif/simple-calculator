# 1. Hum Nginx use karenge jo HTML files ko browser mein dikhata hai
FROM nginx:alpine

# 2. Apni HTML file ko Nginx ke folder mein copy karein
COPY index.html /usr/share/nginx/html/index.html

# 3. Port 80 kholien (Web traffic ke liye)
EXPOSE 80