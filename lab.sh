#!/bin/bash

ml pkg/Anaconda3 sshpass
conda activate linalg

export JUPYTER_PORT=62219

if [ "${HOSTNAME%%.*}" != "lgn301" ]; then
    ssh_nchc -NfR $JUPYTER_PORT:localhost:$JUPYTER_PORT lgn301 &
fi
if [ "${HOSTNAME%%.*}" != "lgn302" ]; then
    ssh_nchc -NfR $JUPYTER_PORT:localhost:$JUPYTER_PORT lgn302 &
fi

cd ~/LinAlg
jupyter lab # --port $JUPYTER_PORT

killall ssh
