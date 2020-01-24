#! /bin/bash

split -dn 6 "$1" "$1"Parte

find ./fastq -type f ! -name '*.fastq' -a ! -name '*Parte00' | xargs rm

#lineas=$(wc -l "$1"Parte00 | cut -d ' ' -f1)
#i=0
#while [[ $i < $lineas ]] ; do
#	i= $(($i + 6))
#	sed -n "$ip" "$1"Parte00 >> "$1"Lineas 
#done

#mv "$1"Lineas "$1"

mv "$1"Parte00 "$1"


