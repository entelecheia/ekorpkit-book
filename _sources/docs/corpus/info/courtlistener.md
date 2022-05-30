# CourtListener
 
[Sample](../sample/courtlistener.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/courtlistener.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/courtlistener.yaml -->
```yaml
name: courtlistener
fullname: CourtListener
lang: en
category: formal
description: CourtListener is a free legal research website containing millions of
  legal opinions from federal and state courts. With CourtListener, lawyers, journalists,
  academics, and the public can research an important case, stay up to date with new
  opinions as they are filed, or do deep analysis using our raw data.
license: MIT License
homepage: https://www.courtlistener.com/
version: 1.0.0
num_docs: 3489298
num_docs_before_processing: 5079283
num_segments: 3489298
num_sents: 335079871
num_words: 8324277457
size_in_bytes: 51458252297
num_bytes_before_processing: 80468318794
size_in_human_bytes: 47.92 GiB
data_files_modified: '2022-02-25 13:04:31'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: courtlistener-train.parquet
  test: courtlistener-test.parquet
  valid: courtlistener-valid.parquet
meta_files: {}
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
