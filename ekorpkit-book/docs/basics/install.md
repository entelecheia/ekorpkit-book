---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# Installation

Install the latest version of ekorpit:

```bash
pip install -U ekorpkit
```

To install all extra dependencies,

```bash
pip install ekorpkit[all]
```

## Extra dependencies

```{code-cell} ipython3
from ekorpkit import eKonf
eKonf.dependencies("tokenize")
```

```{code-cell} ipython3
eKonf.dependencies("dataset")
```

```{code-cell} ipython3
eKonf.dependencies("model")
```

```{code-cell} ipython3
eKonf.dependencies("all")
```
