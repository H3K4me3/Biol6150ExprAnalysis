#!/usr/bin/env bash

set -x

# Create and enter dir
mkdir -p data/rnaseq
cd data/rnaseq

# Download RNA-seq data

curl -L -o control_rep1_read1.fastq.gz \
https://www.encodeproject.org/files/ENCFF590ISE/@@download/ENCFF590ISE.fastq.gz
curl -L -o control_rep1_read2.fastq.gz \
https://www.encodeproject.org/files/ENCFF177NEJ/@@download/ENCFF177NEJ.fastq.gz

curl -L -o control_rep2_read1.fastq.gz \
https://www.encodeproject.org/files/ENCFF525YBF/@@download/ENCFF525YBF.fastq.gz
curl -L -o control_rep2_read2.fastq.gz \
https://www.encodeproject.org/files/ENCFF640PAH/@@download/ENCFF640PAH.fastq.gz

curl -L -o control_rep3_read1.fastq.gz \
https://www.encodeproject.org/files/ENCFF294FNZ/@@download/ENCFF294FNZ.fastq.gz
curl -L -o control_rep3_read2.fastq.gz \
https://www.encodeproject.org/files/ENCFF643UEP/@@download/ENCFF643UEP.fastq.gz


curl -L -o treat_rep1_read1.fastq.gz \
https://www.encodeproject.org/files/ENCFF193XIT/@@download/ENCFF193XIT.fastq.gz
curl -L -o treat_rep1_read2.fastq.gz \
https://www.encodeproject.org/files/ENCFF459BPH/@@download/ENCFF459BPH.fastq.gz

curl -L -o treat_rep2_read1.fastq.gz \
https://www.encodeproject.org/files/ENCFF741HRD/@@download/ENCFF741HRD.fastq.gz
curl -L -o treat_rep2_read2.fastq.gz \
https://www.encodeproject.org/files/ENCFF509LSP/@@download/ENCFF509LSP.fastq.gz

curl -L -o treat_rep3_read1.fastq.gz \
https://www.encodeproject.org/files/ENCFF754JBR/@@download/ENCFF754JBR.fastq.gz
curl -L -o treat_rep3_read2.fastq.gz \
https://www.encodeproject.org/files/ENCFF550GLP/@@download/ENCFF550GLP.fastq.gz

curl -L -o treat_rep4_read1.fastq.gz \
https://www.encodeproject.org/files/ENCFF584AMD/@@download/ENCFF584AMD.fastq.gz
curl -L -o treat_rep4_read2.fastq.gz \
https://www.encodeproject.org/files/ENCFF925XYU/@@download/ENCFF925XYU.fastq.gz





