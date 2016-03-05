#!/bin/bash

FILE="${1}"

LINES="$(grep -B99999 'class Intro' "${FILE}" | grep -A99999 -P '^\tclass Vehicles' | tail -n '+4' | wc -l)"

grep -B99999 'class Intro' "${FILE}" | \
    grep -A99999 -P '^\tclass Vehicles' | \
    tail -n '+4' | \
    head -n "$(( ${LINES} - 3 ))"
