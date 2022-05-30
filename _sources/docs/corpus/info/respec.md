# RePEc (Research Papers in Economics)
 
[Sample](../sample/respec.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/respec.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/respec.yaml -->
```yaml
name: respec
fullname: RePEc (Research Papers in Economics)
lang: en
category: academic
description: RePEc (Research Papers in Economics)
license: RePEc is guaranteed to remain free for all parties.
homepage: http://repec.org
version: 1.0.0
num_docs: 1119640
num_docs_before_processing: 1737278
num_segments: 1119640
num_sents: 7083257
num_words: 169590880
size_in_bytes: 1154973689
num_bytes_before_processing: 1221875486
size_in_human_bytes: 1.08 GiB
data_files_modified: '2022-02-15 05:35:38'
meta_files_modified: '2022-01-24 01:05:59'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: respec-train.parquet
meta_files:
  train: meta-respec-train.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    year: str
    title: str
    handle: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
