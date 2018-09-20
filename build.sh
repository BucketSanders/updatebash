#!/bin/bash
    
    if[! -f "certbot" ]; then
    echo "You do not have certbot installed! Install it from somewhere...google it!"

    else

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
fi