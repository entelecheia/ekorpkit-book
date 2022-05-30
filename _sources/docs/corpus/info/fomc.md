# Federal Open Market Committee (FOMC) Corpus
 
[Sample](../sample/fomc.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/fomc.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/fomc.yaml -->
```yaml
name: fomc
fullname: Federal Open Market Committee (FOMC) Corpus
lang: en
category: formal
description: FOMC
homepage: https://www.federalreserve.gov
version: 1.0.0
num_docs: 2822
num_docs_before_processing: 2855
num_segments: 212208
num_sents: 950620
num_words: 18640148
size_in_bytes: 118136960
num_bytes_before_processing: 119071467
size_in_human_bytes: 112.66 MiB
data_files_modified: '2022-02-23 07:55:31'
meta_files_modified: '2022-02-23 07:49:33'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: fomc-train.parquet
meta_files:
  train: meta-fomc-train.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    date: str
    speaker: str
    title: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
