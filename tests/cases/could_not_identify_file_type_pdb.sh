#!/bin/sh

script=$1
input_dir=$2
inputFile="$input_dir/1BNA.pdb"

cat $inputFile | grep -E '^ATOM|^HETATM' | ./$script 2>&1 | head -2
