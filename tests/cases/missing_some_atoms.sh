#!/bin/sh

script=$1
input_dir=$2
inputFile="$input_dir/1BNA_missing_some_atoms.pdb"

./$script $inputFile 2>&1 | head -2
