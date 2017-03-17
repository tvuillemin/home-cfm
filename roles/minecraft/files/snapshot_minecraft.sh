#!/usr/bin/bash
systemctl stop minecraft
timestamp=$(date +%Y-%m-%d_%HH%M)
zip -r /var/www/html/Minecraft/$timestamp /opt/minecraft/world
systemctl start minecraft
