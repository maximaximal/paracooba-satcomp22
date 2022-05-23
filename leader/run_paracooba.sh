#!/usr/bin/bash

echo "Run Paracs"

export LD_LIBRARY_PATH="/competition/"

/competition/paracs \
	"$1" \
	--resplit \
	--cadical-cubes \
	--initial-cube-depth 15 \
	--initial-minimal-cube-depth 12 \
	--concurrent-cube-tree-count 4 \
	--distribute-tree-learnt-clauses-max-level 4 \
	--worker $(nproc) \
	--id 1 \
	--tcp-listen-address 0.0.0.0
