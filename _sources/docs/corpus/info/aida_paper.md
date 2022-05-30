# AIDA Papers Fulltext Corpus
 
[Sample](../sample/aida_paper.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/aida_paper.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/aida_paper.yaml -->
```yaml
name: aida_paper
fullname: AIDA Papers Fulltext Corpus
lang: ko
category: academic
description: AIDA Papers Fulltext Corpus
license: Attribution-NonCommercial (CC-By-NC v3)
homepage: https://aida.kisti.re.kr
version: 1.0.0
num_docs: 481389
num_docs_before_processing: 481578
num_segments: 5237607
num_sents: 38808105
num_words: 1025422060
size_in_bytes: 9411877067
num_bytes_before_processing: 9429063998
size_in_human_bytes: 8.77 GiB
data_files_modified: '2022-02-14 11:42:30'
meta_files_modified: '2022-01-29 11:48:37'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: aida_paper-train.parquet
meta_files:
  train: meta-aida_paper-train.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    abstract: str
    text: str
  meta:
    id: int
    doc_id: str
    title: str
    year: str
    authors: str
    journal: str
    keywords: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
