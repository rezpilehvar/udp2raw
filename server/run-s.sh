#!/bin/bash

echo "starting..."
udp2raw -s -l0.0.0.0:$PORT -r $FORWARD_IP:$FORWARD_PORT -k "${PASSWORD}" --raw-mode faketcp --log-level $LOG_LEVEL --cipher-mode $CIPHER_MODE --auth-mode $AUTH_MODE -a
echo "done."

wait -n

exit $?
