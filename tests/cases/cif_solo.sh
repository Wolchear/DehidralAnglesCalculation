#!/bin/sh

script=$1
input_dir=$2
inputFile="$input_dir/1BNA.cif"

./$script $inputFile | tail -n +2
