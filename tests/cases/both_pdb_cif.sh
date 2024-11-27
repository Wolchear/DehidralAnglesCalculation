#!/bin/sh

script=$1
input_dir=$2
inputFile1="$input_dir/1BNA.pdb"
inputFile2="$input_dir/1BNA.cif"

./$script $inputFile $inputFile2 | tail -n +2
