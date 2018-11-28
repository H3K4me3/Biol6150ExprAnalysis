
# Gene Expression Data Analysis

This project uses public dataset (microarray and RNA-seq) to analyze the treatment effect
of Dexamethasone on epidermal keratinocytes and A549 cell line.

## Dataset

### RNA-seq dataset

[Control samples](https://www.encodeproject.org/experiments/ENCSR937WIG/):

mRNA-seq on A549 cell line treated with 100 nM dexamethasone for 0 mins
with 3 biological replicates.

[Test samples](https://www.encodeproject.org/experiments/ENCSR326PTW/):

mRNA-seq on A549 cell line treated with 100 nM dexamethasone for **4 hours**
with 4 biological replicates.


### Microarray dataset

For microarry dataset, we use

control samples:

- [GSM651310](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM651310)
  Keratinocytes, untreated 4h, rep1
- [GSM651320](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM651320)
  Keratinocytes, untreated 4h, rep2

test samples:

- [GSM651315](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM651315)
  Keratinocytes, DEX-treated 4h, rep1
- [GSM651325](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM651325)
  Keratinocytes, DEX-treated 4h, rep2

The GEO accession of the dataset is
[GSE26487](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE26487)


### Download the dataset

Within the project root directory, run

```sh
./script/download_microarray_dataset.sh
./script/download_rnaseq_dataset.sh
```

It may take a long time to download the RNA-seq data.

We also have to download the transcript fasta file in order to do transcript quantification
with the RNA-seq data.

```sh
mkdir -p data
bash -c 'cd data && curl -O "ftp://ftp.ensembl.org/pub/release-94/fasta/homo_sapiens/cdna/Homo_sapiens.GRCh38.cdna.all.fa.gz"'
gunzip 'data/Homo_sapiens.GRCh38.cdna.all.fa.gz'
```

## RNA-seq data processing

### Build transcriptome index for salmon

```sh
salmon index -t data/Homo_sapiens.GRCh38.cdna.all.fa -i data/transriptome_index -p 8
```

### Transcript Quantification

Run the script to do transccript quantification for the samples.

```sh
./script/salmon_quant.sh
```

The results of the quantification have been added to the repository within the
branch `with_quant_result`.

## Analysis of the microarray data

https://h3k4me3.github.io/Biol6150ExprAnalysis/microarray_explore.html

## Analysis of the RNA-seq data

https://h3k4me3.github.io/Biol6150ExprAnalysis/rnaseq_explore.html

## Reference

- [New RNA-seq workflows](https://www.bioconductor.org/help/course-materials/2016/CSAMA/lect-07-modern-rnaseq/ModernRNAseqAnalysis.pdf)

- [An end to end workflow for differential gene expression using Affymetrix microarrays](https://f1000research.com/articles/5-1384/v1)

- [Analyze your own microarray data in R/Bioconductor](https://wiki.bits.vib.be/index.php/Analyze_your_own_microarray_data_in_R/Bioconductor)

- [From CEL Files to Annotated Gene Lists](https://biochem.wisc.edu/sites/default/files/facilities/bcrf/tutorials/R/R_Bioconductor/CH25/from_cel_files_to_gene_list.html)

- [RNA-seq analysis is easy as 1-2-3 with limma, Glimma and edgeR](https://www.bioconductor.org/packages/release/workflows/vignettes/RNAseq123/inst/doc/limmaWorkflow.html)

- [RNA-seq workflow: gene-level exploratory analysis and differential expression](https://www.bioconductor.org/packages/release/workflows/vignettes/rnaseqGene/inst/doc/rnaseqGene.html)

- [From reads to genes to pathways: differential expression analysis of RNA-Seq experiments using Rsubread and the edgeR quasi-likelihood pipeline](https://www.bioconductor.org/packages/release/workflows/vignettes/RnaSeqGeneEdgeRQL/inst/doc/edgeRQL.html)


