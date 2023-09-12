mkdir collect
cd collect
mkdir energy force
cd ..
for i in 300K 450K 900K
do
     cd $i
     bash collect.sh
     cp collect/energy/EN* ../collect/energy
     cp collect/force/Force-all-$i ../collect/force
     cd ..
done