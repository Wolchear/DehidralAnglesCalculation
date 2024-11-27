#!/bin/sh

script=$1
input_dir=$2
inputFile="$input_dir/1BNA.pdb"

cat $inputFile | tail -n +2 | ./$script | tail -n +2
