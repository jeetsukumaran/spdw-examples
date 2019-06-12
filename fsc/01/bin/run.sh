#! /bin/bash

spdw-sim-bdtrees.py --num-reps 1 --num-tips 5 --birth-rate 0.1 --scale 1000 bd
spdw-build-fsc26-run.py -k 2 -N 1000 --num-loci 4 bd.trees
fsc26 -i fscrun.par -n 1 -T
