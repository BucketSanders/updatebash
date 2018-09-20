#!/bin/bash
    
echo "Automatically updating the cert..."
    sleep 2

    fqdn () {
    echo $(hostname --fqdn)
    }

    echo "Running commands..."
    systemctl apache2 stop
    systemctl nginx stop
    certbot renew

    echo "Renewal complete"
    sleep 2