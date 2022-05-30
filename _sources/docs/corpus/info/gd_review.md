# Glassdoor Employee Reviews
 
[Sample](../sample/gd_review.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/gd_review.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/gd_review.yaml -->
```yaml
name: gd_review
fullname: Glassdoor Employee Reviews
lang: en
category: informal
description: Glassdoor Employee Reviews
license: Copyright © 2008-2021, Glassdoor, Inc.
homepage: https://www.glassdoor.com
version: 1.0.0
num_docs: 1929910
num_docs_before_processing: 1949225
num_segments: 5016673
num_sents: 6733680
num_words: 112977678
size_in_bytes: 673987801
num_bytes_before_processing: 681715065
size_in_human_bytes: 642.76 MiB
data_files_modified: '2022-02-23 08:17:27'
meta_files_modified: '2022-02-23 08:16:03'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: gd_review-train.parquet
meta_files:
  train: meta-gd_review-train.parquet
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
    author: str
    title: str
    link: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
