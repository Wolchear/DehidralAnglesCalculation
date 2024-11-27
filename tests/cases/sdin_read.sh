#!/bin/sh

script=$1
input_dir=$2
inputFile="$input_dir/1BNA.pdb"

cat $inputFile |./$script | tail -n +2
