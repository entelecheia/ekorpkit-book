# YouTube Subtitles
 
[Sample](../sample/youtube_subtitles.txt)
 
<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../../ekorpkit/resources/corpora/youtube_subtitles.yaml) -->
<!-- The below code snippet is automatically added from ../../../ekorpkit/resources/corpora/youtube_subtitles.yaml -->
```yaml
name: youtube_subtitles
fullname: YouTube Subtitles
lang: en
category: informal
description: The YouTube Subtitles dataset is a parallel corpus of text gathered from
  human generated closed- captions on YouTube. In addition to providing mul- tilingual
  data, Youtube Subtitles is also a source of educational content, popular culture,
  and natural dialog.
license: MIT License
homepage: https://youtube.com
version: 1.0.0
num_docs: 150749
num_docs_before_processing: 0
num_segments: 713475
num_sents: 16074289
num_words: 303286377
size_in_bytes: 1725812988
num_bytes_before_processing: 0
size_in_human_bytes: 1.61 GiB
data_files_modified: '2022-02-23 12:35:04'
info_updated: '2022-02-26 03:06:09'
data_files:
  train: youtube_subtitles-train.parquet
  test: youtube_subtitles-test.parquet
  valid: youtube_subtitles-valid.parquet
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
