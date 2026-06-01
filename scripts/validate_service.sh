#!/bin/bash
# Local health check script to verify that the server is serving traffic
# If curl fails or doesn't return status 200, the script exits with an error code (1)
for i in {1..5}; do
    if curl -sf http://localhost:80/ > /dev/null; then
        echo "Application is healthy and running smoothly."
        exit 0
    fi
    echo "Waiting for web server to respond... attempt $i"
    sleep 5
done

echo "Application health check failed!"
exit 1
