for i in BST BT BZT-BCT NN-BT PMN_PT PZT KNN PIN_PMN_PT PT ST
do
	cp ./script-calc/abscf2dp.py $i/script 
	cp ./script-calc/graph.pb $i/script
	cd $i/script
	python abscf2dp.py
	dp test -m graph.pb -s deepmd/* -n 200 -d dptest-$i
	cd ../../
done
