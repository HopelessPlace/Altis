#!/bin/bash

LAMPS="Land_LampHarbour_F Land_LampHalogen_F Land_LampAirport_F"

FILE="${1}"

grep -v "Land_LampHarbour_F" ${FILE} | \
    grep -v "Land_LampHalogen_F" | \
    grep -v "Land_LampAirport_F"

for LAMP in ${LAMPS}; do
    grep "${LAMP}" "${FILE}" | sed 's,this enableSimulation false;,this enableSimulation true;,g;'
done

