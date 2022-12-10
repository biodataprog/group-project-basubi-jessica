#!/usr/bin/bash -l
#SBATCH -p batch --nodes=1 --ntasks=1 --cpus-per-task=12 --mem-per-cpu=32G --time=2-00:00:00 --job-name="3MEGAHIT" --out logs/MEGA.3r.%a.log

#disease-SRA SRR12131175

module load megahit/1.2.9

megahit -1 ~/bigdata/final/out/SRR12131175_1.fastq.gz -2 ~/bigdata/final/out/SRR12131175_2.fastq.gz -t 12 -o megahit_resultredo3

