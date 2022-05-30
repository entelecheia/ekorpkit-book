# PubMed Abstracts Corpus
 
[Sample](../sample/pubmed.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/pubmed.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/pubmed.yaml -->
```yaml
name: pubmed
fullname: PubMed Abstracts Corpus
lang: en
category: academic
description: PubMed Abstracts
license: CC0, CC BY, CC BY-SA, and CC BY-ND
homepage: https://www.ncbi.nlm.nih.gov
version: 1.0.0
num_docs: 22498747
num_docs_before_processing: 33405863
num_segments: 22498747
num_sents: 190907356
num_words: 4281121705
size_in_bytes: 29541848186
num_bytes_before_processing: 29453824325
size_in_human_bytes: 27.51 GiB
data_files_modified: '2022-02-19 02:42:25'
meta_files_modified: '2022-01-13 02:18:54'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: pubmed-train.parquet
meta_files:
  train: meta-pubmed-train.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    pmid: str
    pubdate: str
    title: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
