
# Gene Expression Data Analysis

This project uses public dataset (microarray and RNA-seq) to analyze the treatment effect
of Dexamethasone on epidermal keratinocytes and A549 cell line.

## Dataset

### RNA-seq dataset

The control is mRNA-seq on A549 cell line treated with 100 nM dexamethasone for 0 mins
with 3 biological replicates. ([link](https://www.encodeproject.org/experiments/ENCSR937WIG/)).

The test is mRNA-seq on A549 cell line treated with 100 nM dexamethasone for **4 hours**
with 4 biological replicates ([link](https://www.encodeproject.org/experiments/ENCSR326PTW/)).


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


## Download the dataset

Within the project root directory, run

```sh
./script/download_microarray_dataset.sh
./script/download_rnaseq_dataset.sh
```


