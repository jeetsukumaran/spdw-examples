#! /bin/bash

spdw-sim-bdtrees.py --num-tips 5 --birth-rate 0.1 bd
spdw-build-bpp-jobs.py --num-individuals-per-population 2 --num-loci-per-individual 5 --num-characters-per-locus 1000 -f newick --mutation 0.0001 bd.trees

