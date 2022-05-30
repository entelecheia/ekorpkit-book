# Reuters Financial News Corpus
 
[Sample](../sample/reuters_financial.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/reuters_financial.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/reuters_financial.yaml -->
```yaml
name: reuters_financial
fullname: Reuters Financial News Corpus
lang: en
category: news
description: Financial News Dataset from Reuters
homepage: http://www.reuters.com
version: 1.0.0
num_docs: 101055
num_docs_before_processing: 106521
num_segments: 167031
num_sents: 1983069
num_words: 49495061
size_in_bytes: 302654193
num_bytes_before_processing: 316494376
size_in_human_bytes: 288.63 MiB
data_files_modified: '2022-02-23 10:58:10'
meta_files_modified: '2022-02-23 10:55:22'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: reuters_financial-train.parquet
meta_files:
  train: meta-reuters_financial-train.parquet
column_info:
  keys:
    id: id
    text: text
    split: null
  data:
    id: int
    text: str
  meta:
    id: int
    title: str
    author: str
    date: str
    url: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
