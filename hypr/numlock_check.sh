#!/bin/bash

# Get the current state of the Num Lock key
num_lock_state=$(xset q | grep "Num Lock:" | awk '{print $3}')

if [ "$num_lock_state" == "on" ]; then
    echo "Num Lock is active."
else
    echo ""
fi
