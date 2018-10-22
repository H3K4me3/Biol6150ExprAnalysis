#!/usr/bin/env bash

echo "`salmon --version`" at "`which salmon`"

mkdir -p result/salmon_quant

for sample in `ls data/rnaseq | sed -E 's/^((control|treat)_rep.)_read.\.fastq\.gz/\1/' | sort | uniq`
do
    salmon quant                                \
        --index    data/transriptome_index      \
        --libType  A                            \
        --threads  8                            \
        -1 data/rnaseq/"$sample"_read1.fastq.gz \
        -2 data/rnaseq/"$sample"_read2.fastq.gz \
        -o result/salmon_quant/"$sample"        \
        --numBootstraps 30                      \
        --gcBias
done

