#!/usr/bin/bash -l
#sbatch -p short -N 1 -n 1 -c 32 --mem 128gb --job-name="PRODIGAL3" --out logs/PDG.3.%a.log

#disease-SRA SRR12131175
module load prodigal
prodigal -i ~/bigdata/GEN220_finalproject/analysis/megahit_resultredo3/final.contigs.fa -o coords_disease.gbk -a proteins_disease.faa -p meta

