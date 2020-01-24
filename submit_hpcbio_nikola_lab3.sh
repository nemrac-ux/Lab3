#!/bin/bash
#
#SBATCH -p hpc-bio-nikola 
#SBATCH --workdir=/home/alumno06/Carmen/Lab3
#SBATCH -J TEST-NIKOLA
#SBATCH --error=salida-err
#SBATCH --cpus-per-task=8
#SBATCH --mail-type=NONE   # END/START/NONE
#SBATCH --mail-user=MAIL@um.es

# Affinity
#export KMP_AFFINITY=granularity=fine,compact

# Number of threads
#export OMP_NUM_THREADS=8
#12
 
for fichero in $(find ./fastq -type f -name '*.fastq') ; do
	./filecut.sh "$fichero" &
done

wait
