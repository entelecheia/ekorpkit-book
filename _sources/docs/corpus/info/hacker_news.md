# Hacker News
 
[Sample](../sample/hacker_news.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/hacker_news.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/hacker_news.yaml -->
```yaml
name: hacker_news
fullname: Hacker News
lang: en
category: dialogue
description: Hacker News is a link aggregator operated by Y Combinator, a startup
  incubator and investment fund. Users submit articles defined as “anything that gratifies
  one’s intellectual curiosity,” but sub- mitted articles tend to focus on topics
  in computer science and entrepreneurship.
license: MIT License
homepage: https://news.ycombinator.com
version: 1.0.0
num_docs: 818299
num_docs_before_processing: 0
num_segments: 818299
num_sents: 41573998
num_words: 662524112
size_in_bytes: 4085526999
num_bytes_before_processing: 0
size_in_human_bytes: 3.80 GiB
data_files_modified: '2022-02-25 05:32:05'
info_updated: '2022-02-26 03:06:07'
data_files:
  train: hacker_news-train.parquet
  test: hacker_news-test.parquet
  valid: hacker_news-valid.parquet
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
