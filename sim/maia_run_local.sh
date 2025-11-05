#!/bin/bash

n=50
for i in $(seq 0 $((n-1))); do
    echo "Starting run $i"
    ddsim \
    --steeringFile /scratch/miralittmann/sim_code/SteeringMacros/Sim/sim_steer_GEN_CONDOR.py \
    --inputFile /scratch/miralittmann/sim_code/sim/hepmc/1000_10.hepmc \
    --physics.pdgfile /scratch/miralittmann/sim_code/sim/tbl_files/1000_10.tbl \
    --outputFile /ospool/uc-shared/project/futurecolliders/miralittmann/maia/sim/1000_10/1000_10_sim${i}.slcio \
    --numberOfEvents 1 \
    --compactFile /scratch/miralittmann/sim_code/detector-simulation/geometries/MAIA_v0/MAIA_v0.xml
done
echo "all sims done!"