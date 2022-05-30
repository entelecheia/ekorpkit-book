# US Historical Financial News Archive
 
[Sample](../sample/us_equities_news.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/us_equities_news.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/us_equities_news.yaml -->
```yaml
name: us_equities_news
fullname: US Historical Financial News Archive
lang: en
category: news
description: 'Historical Financial News Archive: This data represents the historical
  news archive for the last 12 years of the US equities publicly traded on NYSE/NASDAQ
  which still has a price higher than 10$ per share.'
license: This dataset was collected from investing.com website which allows data usage
  but with attribution of the author.
homepage: https://www.kaggle.com/gennadiyr/us-equities-news-data
version: 1.0.0
num_docs: 220976
num_docs_before_processing: 221513
num_segments: 388803
num_sents: 1834664
num_words: 131179752
size_in_bytes: 748850122
num_bytes_before_processing: 773407145
size_in_human_bytes: 714.16 MiB
data_files_modified: '2022-02-23 12:05:58'
meta_files_modified: '2022-02-23 11:58:53'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: us_equities_news-train.parquet
meta_files:
  train: meta-us_equities_news-train.parquet
column_info:
  keys:
    id: id
    text: text
    split: null
  data:
    id: int
    text: str
  meta:
    id: int
    ticker: str
    title: str
    category: str
    release_date: str
    provider: str
    url: str
    article_id: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
