#!/bin/bash
for t in 1 2 4 6 8
do
  for n in 1 10 100 1000 10000 50000 100000 500000 750000 1000000 1500000 2000000
  do
     g++   proj01.cpp  -DNUMT=$t -DNUMTRIALS=$n  -o proj01  -lm  -fopenmp
    ./proj01
  done
done