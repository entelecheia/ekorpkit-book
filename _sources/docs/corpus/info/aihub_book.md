# AIHub Book Summary
 
[Sample](../sample/aihub_book.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/aihub_book.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/aihub_book.yaml -->
```yaml
name: aihub_book
fullname: AIHub Book Summary
lang: ko
category: book
description: AIHub/도서자료 요약
license: Attribution-NonCommercial (CC-By-NC v3)
homepage: https://aihub.or.kr
version: 1.0.0
num_docs: 180001
num_docs_before_processing: 180001
num_segments: 360060
num_sents: 1201956
num_words: 23052720
size_in_bytes: 248158618
num_bytes_before_processing: 248872420
size_in_human_bytes: 236.66 MiB
data_files_modified: '2022-02-15 02:54:19'
meta_files_modified: '2022-01-23 09:08:35'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: aihub_book-train.parquet
  test: aihub_book-test.parquet
meta_files:
  train: meta-aihub_book-train.parquet
  test: meta-aihub_book-test.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
    summary: str
  meta:
    id: int
    passage_id: str
    doc_type: str
    doc_id: str
    title: str
    author: str
    publisher: str
    published_year: str
    kdc_label: str
    kdc_code: str
    chapter: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
