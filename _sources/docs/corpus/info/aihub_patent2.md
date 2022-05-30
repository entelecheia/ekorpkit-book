# AIHub Patent Section Summary
 
[Sample](../sample/aihub_patent2.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/aihub_patent2.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/aihub_patent2.yaml -->
```yaml
name: aihub_patent2
fullname: AIHub Patent Section Summary
lang: ko
category: paper
description: AIHub/논문자료 요약/특허섹션만
license: Attribution-NonCommercial (CC-By-NC v3)
homepage: https://aihub.or.kr
version: 1.0.0
num_docs: 147674
num_docs_before_processing: 151000
num_segments: 295348
num_sents: 1879909
num_words: 46045036
size_in_bytes: 479383377
num_bytes_before_processing: 489562944
size_in_human_bytes: 457.18 MiB
data_files_modified: '2022-02-21 10:29:24'
meta_files_modified: '2022-02-21 10:26:34'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: aihub_patent2-train.parquet
  test: aihub_patent2-test.parquet
meta_files:
  train: meta-aihub_patent2-train.parquet
  test: meta-aihub_patent2-test.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    split: str
    doc_type: str
    doc_id: str
    title: str
    date: str
    reg_no: str
    ipc: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
