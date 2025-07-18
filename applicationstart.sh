cd /var/www/html/api
pm2 delete "demo-cicd"
pm2 -f start app.js --name "demo-cicd"