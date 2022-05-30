# BigPatent - U.S. Patent Documents
 
[Sample](../sample/bigpatent.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/bigpatent.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/bigpatent.yaml -->
```yaml
name: bigpatent
fullname: BigPatent - U.S. Patent Documents
lang: en
category: formal
description: 'BIGPATENT, consisting of 1.3 million records of U.S. patent documents
  along with human written abstractive summaries. Each US patent application is filed
  under a Cooperative Patent Classification (CPC) code. There are nine such classification
  categories: A (Human Necessities), B (Performing Operations; Transporting), C (Chemistry;
  Metallurgy), D (Textiles; Paper), E (Fixed Constructions), F (Mechanical Engineering;
  Lightning; Heating; Weapons; Blasting), G (Physics), H (Electricity), and Y (General
  tagging of new or cross-sectional technology)'
license: 35 USC 2
homepage: https://evasharma.github.io/bigpatent/
version: 1.0.0
num_docs: 1244053
num_docs_before_processing: 1341362
num_segments: 2488106
num_sents: 2488106
num_words: 4613882925
size_in_bytes: 24120599512
num_bytes_before_processing: 25941858276
size_in_human_bytes: 22.46 GiB
data_files_modified: '2022-02-22 01:00:10'
meta_files_modified: '2022-02-22 00:58:25'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: bigpatent-train.parquet
  test: bigpatent-test.parquet
  val: bigpatent-val.parquet
meta_files:
  train: meta-bigpatent-train.parquet
  test: meta-bigpatent-test.parquet
  val: meta-bigpatent-val.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    publication_number: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
