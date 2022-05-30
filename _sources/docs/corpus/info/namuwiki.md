# NamuWiki Corpus
 
[Sample](../sample/namuwiki.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/namuwiki.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/namuwiki.yaml -->
```yaml
name: namuwiki
fullname: NamuWiki Corpus
lang: ko
category: formal
description: 나무위키
license: CC BY-NC-SA 2.0 KR
homepage: https://namu.wiki
version: 1.0.0
num_docs: 571026
num_docs_before_processing: 867024
num_segments: 571793
num_sents: 67315244
num_words: 691537393
size_in_bytes: 6901420807
num_bytes_before_processing: 6907219466
size_in_human_bytes: 6.43 GiB
data_files_modified: '2022-02-23 09:04:04'
meta_files_modified: '2022-02-23 02:44:48'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: namuwiki-train.parquet
meta_files:
  train: meta-namuwiki-train.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    title: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
