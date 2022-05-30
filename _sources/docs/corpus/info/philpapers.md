# The PhilPapers
 
[Sample](../sample/philpapers.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/philpapers.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/philpapers.yaml -->
```yaml
name: philpapers
fullname: The PhilPapers
lang: en
category: formal
description: The PhilPapers dataset consists of open-access philosophy publications
  from an international database maintained by the Center for Digital Phi- losophy
  at the University of Western Ontario.
license: MIT License
homepage: https://philpapers.org
version: 1.0.0
num_docs: 31016
num_docs_before_processing: 0
num_segments: 41166
num_sents: 139518
num_words: 365576851
size_in_bytes: 2346149793
num_bytes_before_processing: 0
size_in_human_bytes: 2.19 GiB
data_files_modified: '2022-02-23 10:41:02'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: philpapers-train.parquet
  test: philpapers-test.parquet
  valid: philpapers-valid.parquet
meta_files:
  train: null
  test: null
  valid: null
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
