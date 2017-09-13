#!/bin/sh

$neighbors
for neighbor in $(cat /iri/conf/neighbors.txt); do
  neighbors="$neighbors $neighbor"
done

exec java -Dlogback.configurationFile=/iri/conf/logback.xml -jar /iri/iri-1.3.2.2.jar -p 14265 -u 14777 -t 15777 -n "$neighbors" --remote --remote-limit-api "addNeighbors, removeNeighbors, getNeighbors, attachToTangle" --send-limit 100.0 "$@"
