#!/bin/bash
prokka --setupdb
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
BIN_DIR=$SCRIPT_DIR/../bin
$BIN_DIR/get-phrogs -v
$BIN_DIR/prokka-gv --cpus 1 -o tmp_11 --force $SCRIPT_DIR/genome_11.fa
rm -rf tmp_11