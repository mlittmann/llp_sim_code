#!/bin/bash

n=50
for i in $(seq 0 $((n-1))); do
    echo "Starting run $i"
    k4run /scratch/miralittmann/sim_code/mucoll-benchmarks/reconstruction/k4run/maia_reco_steer.py \
    --inputFile /ospool/uc-shared/project/futurecolliders/miralittmann/maia/sim/1000_10/1000_10_sim${i}.slcio \
    --outputFile /ospool/uc-shared/project/futurecolliders/miralittmann/maia/reco/10pbib/1000_10/1000_10_reco${i}.slcio \
    --OverlayFullPathToMuPlus /ospool/uc-shared/public/futurecolliders/v5/simBIB/mp_pruned \
    --OverlayFullPathToMuMinus /ospool/uc-shared/public/futurecolliders/v5/simBIB/mm_pruned \
    --OverlayFullNumberBackground 19
done
echo "all reco done!"