#!/usr/bin/bash

echo "Run Paracs"

/competition/paracs \
	"$1" \
	--resplit \
	--cadical-cubes \
	--initial-cube-depth 15 \
	--initial-minimal-cube-depth 12 \
	--concurrent-cube-tree-count 4 \
	--distribute-tree-learnt-clauses-max-level 4 \
	--worker $(nproc) \
	--id $id \
	--tcp-listen-address 0.0.0.0
