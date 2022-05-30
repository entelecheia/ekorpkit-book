# Korean C4 Corpus
 
[Sample](../sample/mc4_ko.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/mc4_ko.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/mc4_ko.yaml -->
```yaml
name: mc4_ko
fullname: Korean C4 Corpus
lang: ko
category: informal
description: A multilingual colossal, cleaned version of Common Crawl's web crawl
  corpus.
license: AllenAI are releasing this dataset under the terms of ODC-BY. By using this,
  you are also bound by the Common Crawl terms of use in respect of the content contained
  in the dataset.
homepage: https://huggingface.co/datasets/allenai/c4
version: 1.0.0
num_docs: 15618718
num_docs_before_processing: 0
num_segments: 15619291
num_sents: 665858888
num_words: 8007674274
size_in_bytes: 97453342229
num_bytes_before_processing: 0
size_in_human_bytes: 90.76 GiB
data_files_modified: '2022-01-28 00:38:07'
meta_files_modified: '2022-01-09 05:41:47'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: mc4_ko-train.parquet
  test: mc4_ko-test.parquet
meta_files:
  train: meta-mc4_ko-train.parquet
  test: meta-mc4_ko-test.parquet
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
    url: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
