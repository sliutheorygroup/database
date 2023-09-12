rm -rf collect
mkdir collect
cd collect
mkdir energy force
cd ..
for i in BST BT BZT-BCT NN-BT PMN_PT PZT KNN PIN_PMN_PT PT ST
do
	cp ./$i/script/dptest-$i.e.out ./collect/energy
	cp ./$i/script/dptest-$i.f.out ./collect/force
	cd collect/energy
	sed -i '1d' *.out
        mkdir $i
	mv dptest-$i.e.out $i
	cd $i
	mv dptest-$i.e.out 000.e.out
	cd ../../../
	cp ./script-calc/sample-e.py collect/energy/$i
	cd collect/energy/$i
	python sample-e.py
	cp EN ../
	cd ../
	mv EN EN-$i-900K
	cd ../../
done
	cp ./script-calc/sort.sh collect/force
	cp ./script-calc/sample-f.py collect/force
        cd collect/force
        sed -i '1d' *.out
        bash sort.sh
        ulimit -s unlimited
        python sample-f.py
		mv Force-all Force-all-900K

