#!/bin/bash

mkdir energy-vs-time
for i in  300K 450K 900K
do
  cd $i
  for j in BST BT BZT-BCT KNN NN-BT PIN_PMN_PT PMN_PT PT PZT ST
  do
  cd $j
  cp script/dptest-$j.e.out ../../energy-vs-time/
  cd ../..
  cd energy-vs-time
  mv dptest-$j.e.out  $j-$i.e.out
  cd ../$i
  done 
  cd ..  
done

cd energy-vs-time

for file in *.e.out
do
  sed -i '1d' "$file"
  awk '{print NR, $0}' "$file" > temp_file && mv temp_file "$file"
done

for i in  BST-300K BST-450K BT-300K BT-450K BZT-BCT-300K BZT-BCT-450K NN-BT-300K NN-BT-450K PT-300K PT-450K PZT-300K PZT-450K ST-300K ST-450K ST-900K BST-900K BT-900K BZT-BCT-900K NN-BT-900K PT-900K PZT-900K KNN-300K KNN-450K KNN-900K
do
  mv $i.e.out $i
done

for i in 300K 450K 900K
do
mv PIN_PMN_PT-$i.e.out PIN-PMN-PT-$i
mv PMN_PT-$i.e.out PMN-PT-$i
done