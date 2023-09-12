for i in BT BZT-BCT NN-BT PMN_PT PZT KNN PIN_PMN_PT PT ST BST
do
	mkdir  $i
	cp ../conf/$i/conf.lmp $i
	cp script/graph.pb input.lammps job.json $i
	cd $i
	lbg job submit -i job.json -p ./ >jobid
	cd ..
done
