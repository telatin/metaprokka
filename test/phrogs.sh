#!/usr/bin/env bash

bin/get-phrogs -v
bin/prokka-gv --cpus 1 -o tmp_11 --force test/genome_11.fa
rm -rf tmp_11