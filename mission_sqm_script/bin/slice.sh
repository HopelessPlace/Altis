#!/bin/bash

FILE="${1}"

LINES="$(grep -B99999 'class Intro' "${1}" | grep -A99999 'class Vehicles' | tail -n '+4' | wc -l)"

grep -B99999 'class Intro' "${1}" | \
    grep -A99999 'class Vehicles' | \
    tail -n '+4' | \
    head -n "$(( ${LINES} - 3 ))" | \
    sed 's,{,\n  {\n,g;' | \
    sed 's,},\n  }\n,g;' | \
    sed 's,id=,\nid=,g;' | \
    sed 's,;,;\n,g;'

