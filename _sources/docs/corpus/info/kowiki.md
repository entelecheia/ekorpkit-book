# Korean Wikipedia Corpus
 
[Sample](../sample/kowiki.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/kowiki.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/kowiki.yaml -->
```yaml
name: kowiki
fullname: Korean Wikipedia Corpus
lang: ko
category: formal
description: 위키백과, 우리 모두의 백과사전
license: CC Attribution / Share-Alike 3.0
homepage: https://ko.wikipedia.org
version: 1.0.0
num_docs: 563959
num_docs_before_processing: 1268440
num_segments: 564046
num_sents: 5671388
num_words: 70263451
size_in_bytes: 750144058
num_bytes_before_processing: 751449752
size_in_human_bytes: 715.39 MiB
data_files_modified: '2022-02-22 05:12:43'
meta_files_modified: '2022-02-22 04:40:08'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: kowiki-train.parquet
meta_files:
  train: meta-kowiki-train.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    curid: str
    url: str
    title: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
