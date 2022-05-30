# KAIST Raw corpus
 
[Sample](../sample/kaist.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/kaist.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/kaist.yaml -->
```yaml
name: kaist
fullname: KAIST Raw corpus
lang: ko
category: formal
description: KAIST Corpus consist of 70,000,000 words Korean raw texts which were
  extracted from various genre such as novel, non-literature, article etc.
license: MIT License
homepage: http://semanticweb.kaist.ac.kr
version: 1.0.0
num_docs: 11157
num_docs_before_processing: 11358
num_segments: 11157
num_sents: 1926901
num_words: 30929508
size_in_bytes: 319727995
num_bytes_before_processing: 343615648
size_in_human_bytes: 304.92 MiB
data_files_modified: '2022-02-23 09:52:18'
meta_files_modified: '2022-02-23 08:40:00'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: kaist-train.parquet
meta_files:
  train: meta-kaist-train.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    filename: str
    version: str
    title: str
    author: str
    date: str
    publisher: str
    kdc: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
