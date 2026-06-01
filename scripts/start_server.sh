#!/bin/bash
# Enable Nginx to start on boot and restart the service with new code
systemctl enable nginx
systemctl restart nginx
