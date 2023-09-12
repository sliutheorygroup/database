#copy dpmodel
cd model
mv *.pb graph.pb
cd ..
cp model/graph.pb data/AIMD-fit/script
cp model/graph.pb data/fitting/script

for i in 300K 450K 900K
do 
     cp model/graph.pb data/MD/$i/script
     cp model/graph.pb data/MD/$i/script-cal
done

for i in BT PT ST KN KNN PST PZT a-PIN_PMN_PT b-PIN_PMN_PT

do
     cp model/graph.pb data/phase-transition/$i
done

#copy json files
for i in 300K 450K 900K
do 
     cp json/machine.json data/MD/$i/script
     cp json/job-md.json data/MD/$i/script
     mv data/MD/$i/script/job-md.json data/MD/$i/script/job.json
done

for i in BT PT ST KN KNN PST PZT a-PIN_PMN_PT b-PIN_PMN_PT
do
     cp json/job-phase.json data/phase-transition/$i
     mv data/phase-transition/$i/job-phase.json data/phase-transition/$i/job.json 
done
