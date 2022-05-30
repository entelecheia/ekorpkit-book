# EDGAR Corpus
 
[Sample](../sample/edgar.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/edgar.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/edgar.yaml -->
```yaml
name: edgar
fullname: EDGAR Corpus
lang: en
category: formal
description: 'EDGAR-CORPUS: Billions of Tokens Make The World Go Round (10-K filings)'
license: Open Access
homepage: https://zenodo.org/record/5589195
version: 1.0.0
num_docs: 213376
num_docs_before_processing: 222901
num_segments: 3830206
num_sents: 177270203
num_words: 6053677897
size_in_bytes: 39662169798
num_bytes_before_processing: 42272208718
size_in_human_bytes: 36.94 GiB
data_files_modified: '2022-02-22 03:36:32'
meta_files_modified: '2022-02-22 02:46:01'
info_updated: '2022-02-26 03:06:08'
data_files:
  train: edgar-train.parquet
meta_files:
  train: meta-edgar-train.parquet
column_info:
  keys:
    id: id
    text: text
  data:
    id: int
    text: str
  meta:
    id: int
    cik: str
    company: str
    filing_type: str
    filing_date: str
    period_of_report: str
    sic: str
    state_of_inc: str
    state_location: str
    fiscal_year_end: str
    filing_html_index: str
    htm_filing_link: str
    complete_text_filing_link: str
    filename: str
```
<!-- MARKDOWN-AUTO-DOCS:END -->
