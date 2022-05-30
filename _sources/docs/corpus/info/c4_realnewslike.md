# C4 RealNewsLike Corpus
 
[Sample](../sample/c4_realnewslike.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/c4_realnewslike.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/c4_realnewslike.yaml -->
```yaml
name: c4_realnewslike
fullname: C4 RealNewsLike Corpus
lang: en
category: formal
description: A colossal, cleaned version of Common Crawl's web crawl corpus.
license: AllenAI are releasing this dataset under the terms of ODC-BY. By using this,
  you are also bound by the Common Crawl terms of use in respect of the content contained
  in the dataset.
homepage: https://github.com/allenai/allennlp/discussions/5056
version: 1.0.0
num_docs: 13813090
num_docs_before_processing: 13813701
num_segments: 13813172
num_sents: 155883681
num_words: 6040207703
size_in_bytes: 36280581642
num_bytes_before_processing: 36491992118
size_in_human_bytes: 33.79 GiB
data_files_modified: '2022-02-22 02:27:28'
meta_files_modified: '2022-02-22 02:27:23'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: c4_realnewslike-train.parquet
  test: c4_realnewslike-test.parquet
meta_files:
  train: meta-c4_realnewslike-train.parquet
  test: meta-c4_realnewslike-test.parquet
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
