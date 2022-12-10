#!/usr/bin/bash -l
#SBATCH -p batch --nodes=1 --ntasks=1 --cpus-per-task=12 --mem-per-cpu=36G --time=2-00:00:00 --job-name="MEGAHIT" --out logs/MEGA.2.%a.log

module load megahit/1.2.9

megahit -1 ~/bigdata/final/out/SRR12131164_1.fastq.gz -2 ~/bigdata/final/out/SRR12131164_2.fastq.gz -t 12 -o megahit_result2

