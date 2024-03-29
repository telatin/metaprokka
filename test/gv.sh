#!/bin/bash
set -euxo pipefail


SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
BIN_DIR=$SCRIPT_DIR/../bin
prokka --setupdb
for GCODE in 11 4 15;
do
    echo Testing genetic code: $GCODE
    $BIN_DIR/prokka-gv --cpus 1 -o tmp_$GCODE --force $SCRIPT_DIR/genome_${GCODE}.fa
    CODE_DETECTED=$(grep "Genetic code predicted" tmp_$GCODE/*.log | rev | cut -f 1 -d ":" | rev | sed 's/ //g')
    if [ "$CODE_DETECTED" != "$GCODE" ]; then
        echo "ERROR: Genetic code detected: $CODE_DETECTED, expected: $GCODE"
        exit 1
    else
        echo "OK: Genetic code detected: $CODE_DETECTED, expected: $GCODE"
    fi
    rm -rf tmp_$GCODE
done