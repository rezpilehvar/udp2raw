#!/bin/bash

echo "starting..."
udp2raw -c -l0.0.0.0:$PORT -r $FORWARD_IP:$FORWARD_PORT -k "${PASSWORD}" --log-level $LOG_LEVEL --raw-mode faketcp --cipher-mode $CIPHER_MODE --auth-mode $AUTH_MODE -a
echo "done."

wait -n

exit $?
