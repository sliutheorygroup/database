#!/bin/bash

# Run Python script to generate output files
python readdata.py

for ((i = 0; i <= 500; i += 5)); do
    dir_name=$(printf "%04d" $i)
    mkdir "$dir_name"
    mv "$dir_name.lammpstrj" "$dir_name"
    cd "$dir_name"
    mv "$dir_name.lammpstrj" last.dump
    python ../dump2pos.py 
    python ../replace.py
    python ../pos2stru.py
    cd ..
    cp INPUT input.lammps job.json "$dir_name"

done

mkdir bk
mv *.lammpstrj bk

