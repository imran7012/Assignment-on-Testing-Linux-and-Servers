#!/bin/bash
# backup_web.sh - Simple Apache & Nginx backup script

BACKUP_DIR="/backups"
DATE=$(date +%F)
mkdir -p "$BACKUP_DIR"

# Apache (Sarah)
tar -czf "$BACKUP_DIR/apache_backup_$DATE.tar.gz" /etc/httpd/ /var/www/html/
tar -tzf "$BACKUP_DIR/apache_backup_$DATE.tar.gz" >/dev/null && echo "Apache backup verified: apache_backup_$DATE.tar.gz"

# Nginx (Mike)
tar -czf "$BACKUP_DIR/nginx_backup_$DATE.tar.gz" /etc/nginx/ /usr/share/nginx/html/
tar -tzf "$BACKUP_DIR/nginx_backup_$DATE.tar.gz" >/dev/null && echo "Nginx backup verified: nginx_backup_$DATE.tar.gz"
