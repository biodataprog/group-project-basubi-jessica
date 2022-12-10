#!/usr/bin/bash -l
#sbatch -p short -N 1 -n 1 -c 32 --mem 128gb --job-name="PRODIGAL2r" --out logs/PDG.2r.%a.log

#healthy-SRA SRR12131164
module load prodigal
prodigal -i ~/bigdata/GEN220_finalproject/analysis/megahit_result2/final.contigs2.fna -o coords_healthy.gbk -a proteins_healthy.faa -p anon
