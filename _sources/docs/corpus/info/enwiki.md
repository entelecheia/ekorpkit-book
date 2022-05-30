# English Wikipedia Corpus
 
[Sample](../sample/enwiki.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/enwiki.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/enwiki.yaml -->
```yaml
name: enwiki
fullname: English Wikipedia Corpus
lang: en
category: formal
description: Wikipedia
license: CC Attribution / Share-Alike 3.0
homepage: https://en.wikipedia.org
version: 1.0.0
num_docs: 6200658
num_docs_before_processing: 16159128
num_segments: 6202287
num_sents: 129066417
num_words: 2400717561
size_in_bytes: 14874301847
num_bytes_before_processing: 14836123538
size_in_human_bytes: 13.85 GiB
data_files_modified: '2022-02-22 05:54:25'
meta_files_modified: '2022-02-22 04:42:47'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: enwiki-train.parquet
meta_files:
  train: meta-enwiki-train.parquet
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
