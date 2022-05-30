# Enron Email Corpus
 
[Sample](../sample/enron_mail.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/enron_mail.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/enron_mail.yaml -->
```yaml
name: enron_mail
fullname: Enron Email Corpus
lang: en
category: email
description: Enron Email Dataset
homepage: https://www.cs.cmu.edu/~./enron/
version: 1.0.0
num_docs: 247586
num_docs_before_processing: 517350
num_segments: 2026341
num_sents: 7908959
num_words: 65258456
size_in_bytes: 449170075
num_bytes_before_processing: 950627053
size_in_human_bytes: 428.36 MiB
data_files_modified: '2022-02-22 04:28:58'
meta_files_modified: '2022-02-22 04:28:04'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: enron_mail-train.parquet
meta_files:
  train: meta-enron_mail-train.parquet
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
    subject: str
    text: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
