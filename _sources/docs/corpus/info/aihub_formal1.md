# AiHub Formal Corpus 1
 
[Sample](../sample/aihub_formal1.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/aihub_formal1.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/aihub_formal1.yaml -->
```yaml
name: aihub_formal1
fullname: AiHub Formal Corpus 1
lang: ko
category: formal
description: AiHub Professional Field Corpus (papers, law, patent, case, etc.)
license: Attribution-NonCommercial (CC-By-NC v3)
homepage: https://aihub.or.kr
version: 1.0.0
num_docs: 1073944
num_docs_before_processing: 1085368
num_segments: 1073952
num_sents: 93148022
num_words: 1993574713
size_in_bytes: 20573673810
num_bytes_before_processing: 20853986006
size_in_human_bytes: 19.16 GiB
data_files_modified: '2022-02-21 19:55:00'
meta_files_modified: '2022-02-21 19:52:31'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: aihub_formal1-train.parquet
  test: aihub_formal1-test.parquet
meta_files:
  train: meta-aihub_formal1-train.parquet
  test: meta-aihub_formal1-test.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    doc_no: int
    title: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
