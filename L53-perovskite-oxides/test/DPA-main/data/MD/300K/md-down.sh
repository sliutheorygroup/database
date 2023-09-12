#!/bin/bash

CURRENT=`pwd`

for i in BT BZT-BCT NN-BT PMN_PT PZT KNN PIN_PMN_PT PT BST ST
do
  cd ./$i 
  a=$(grep -o -E 'JOB ID: [0-9]+' jobid | awk '{print $NF}')
  lbg job download $a
  cd $a
  mv * ../
  rm -rf $a
  cd "$CURRENT" 
  cp -r script $i
  cd $i
  cp traj.lammpstrj script
  cd script
  mv resource.json run.py machine.json ../
  bash mk.sh
  cd ../
  python3 run.py &
  cd ../
done


