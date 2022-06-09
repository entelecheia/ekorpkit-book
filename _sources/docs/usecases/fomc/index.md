# FOMC

> credit: original source from https://github.com/yuki678/centralbank_analysis

## Textual Analysis of FOMC contents

FOMC has eight regular meetings to determine the monetary policy. It publishes press conference minutes, statements, and scripts at each meeting. In addition to these regular meetings, it releases the members’ speeches and testimonies on the website. 

At each meeting, the policy makers decide on monetary policy and publish the decision along with their view on the current economic situation and forecast, including the  Forward Guidance since 2012. The central banks intend to indicate their potential future monetary policy in their publications as market communication. 

```{figure} ./figs/FomcMeetings.png
---
width: 500px
name: fig-FomcMeetings
---
Available data between FOMC meetings (by [Yuki Takahashi](https://towardsdatascience.com/fedspeak-how-to-build-a-nlp-pipeline-to-predict-central-bank-policy-changes-a2f157ca0434))
```

This project aims to apply NLP to those texts published by FOMC to find latent features. All data used in this analysis are publicly available. 

```{figure} ./figs/process.png
---
width: 500px
name: fig-FomcProcess
---
Overall flow of analysis (by [Yuki Takahashi](https://towardsdatascience.com/fedspeak-how-to-build-a-nlp-pipeline-to-predict-central-bank-policy-changes-a2f157ca0434))
```


FOMC Meeting documents are available here: https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm

## FOMC contents

- Statements
- Meeting Minutes
- Press Conference Transcripts
- Speeches
- Testimony

## Section table of contents

```{tableofcontents}

```
