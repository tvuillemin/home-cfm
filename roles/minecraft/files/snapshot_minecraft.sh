#!/usr/bin/bash
systemctl stop minecraft
timestamp=$(date +%Y-%m-%d_%HH%M)
snapshot_name="${timestamp}_minecraft_world"
zip /var/www/html/Minecraft/$snapshot_name /opt/minecraft/world
systemctl start minecraft
