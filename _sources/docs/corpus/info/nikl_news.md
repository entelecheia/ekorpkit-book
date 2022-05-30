# NIKL Newspaper Corpus
 
[Sample](../sample/nikl_news.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/nikl_news.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/nikl_news.yaml -->
```yaml
name: nikl_news
fullname: NIKL Newspaper Corpus
lang: ko
category: formal
description: National Institute of the Korean Language Corpus - Newspaper
license: Korea Open Government License, Category 4
homepage: https://corpus.korean.go.kr
version: 2.0.0
num_docs: 4104534
num_docs_before_processing: 4116643
num_segments: 4104543
num_sents: 42527395
num_words: 1138897337
size_in_bytes: 12017799919
num_bytes_before_processing: 12130403694
size_in_human_bytes: 11.19 GiB
data_files_modified: '2022-02-25 01:50:56'
meta_files_modified: '2022-02-22 11:08:17'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: nikl_news-train.parquet
meta_files:
  train: meta-nikl_news-train.parquet
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
    title: str
    author: str
    publisher: str
    date: str
    topic: str
    original_topic: str
    category: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
