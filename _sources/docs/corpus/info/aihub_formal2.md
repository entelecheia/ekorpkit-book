# AiHub Formal Corpus 2
 
[Sample](../sample/aihub_formal2.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/aihub_formal2.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/aihub_formal2.yaml -->
```yaml
name: aihub_formal2
fullname: AiHub Formal Corpus 2
lang: ko
category: formal
description: AiHub Professional Field Corpus (papers, patent, law, trial case, etc.)
license: Attribution-NonCommercial (CC-By-NC v3)
homepage: https://aihub.or.kr
version: 1.0.0
num_docs: 95990
num_docs_before_processing: 96009
num_segments: 1520421
num_sents: 1650141
num_words: 64523191
size_in_bytes: 681603170
num_bytes_before_processing: 684188178
size_in_human_bytes: 650.03 MiB
data_files_modified: '2022-02-21 12:52:51'
meta_files_modified: '2022-02-21 12:26:56'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: aihub_formal2-train.parquet
  test: aihub_formal2-test.parquet
meta_files:
  train: meta-aihub_formal2-train.parquet
  test: meta-aihub_formal2-test.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    doc_id: str
    doc_type: str
    title: str
    date: str
    filename: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
