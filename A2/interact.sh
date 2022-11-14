#!/bin/bash

salloc -A GOV111082 -J LinAlg_A2_interactive -p ct56 -c 14 srun --pty lab.sh
