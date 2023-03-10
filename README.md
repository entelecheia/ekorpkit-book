# ekorpkit 【iːkɔːkɪt】 : **eKo**nomic **R**esearch **P**ython Tool**kit**

[![PyPI](https://img.shields.io/pypi/v/ekorpkit?color=green)](https://pypi.org/project/ekorpkit) [![Jupyter Book Badge](https://jupyterbook.org/badge.svg)](https://entelecheia.cc/) [![PyPI - Downloads](https://img.shields.io/pypi/dw/ekorpkit)](https://pypi.org/project/ekorpkit) [![GitHub last commit](https://img.shields.io/github/last-commit/entelecheia/ekorpkit-book)](https://github.com/entelecheia/ekorpkit-book) [![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/entelecheia/) [![GitHub Repo stars](https://img.shields.io/github/stars/entelecheia/ekorpkit)](https://github.com/entelecheia/ekorpkit) [![GitHub followers](https://img.shields.io/github/followers/entelecheia)](https://github.com/entelecheia) 

eKorpkit provides a flexible interface for NLP and ML research pipelines such as extraction, transformation, tokenization, training, and visualization. Its powerful config composition is backed by [Hydra](https://hydra.cc/).

## Key features

### Easy Configuration

- You can compose your configuration dynamically, enabling you to easily get the perfect configuration for each research. 
- You can override everything from the command line, which makes experimentation fast, and removes the need to maintain multiple similar configuration files. 
- With a help of the **eKonf** class, it is also easy to compose configurations in a jupyter notebook environment.

### No Boilerplate

- eKorpkit lets you focus on the problem at hand instead of spending time on boilerplate code like command line flags, loading configuration files, logging etc.

### Workflows

- A workflow is a configurable automated process that will run one or more jobs.
- You can divide your research into several unit jobs (tasks), then combine those jobs into one workflow.
- You can have multiple workflows, each of which can perform a different set of tasks.

### Sharable and Reproducible

- With eKorpkit, you can easily share your datasets and models.
- Sharing configs along with datasets and models makes every research reproducible.
- You can share each unit jobs or an entire workflow.

### Pluggable Architecture

- eKorpkit has a pluggable architecture, enabling it to combine with your own implementation.

## [Tutorials](https://entelecheia.github.io/ekorpkit-book)

Tutorials for [ekorpkit](https://github.com/entelecheia/ekorpkit) package can be found at https://entelecheia.github.io/ekorpkit-book/

## [Installation](https://entelecheia.github.io/ekorpkit-book/docs/basics/install.html)

Install the latest version of ekorpkit:

```bash
pip install ekorpkit
```

To install all extra dependencies,

```bash
pip install ekorpkit[all]
```

## Citation

```tex
@software{lee_2022_6497226,
  author       = {Young Joon Lee},
  title        = {eKorpkit: eKonomic Research Python Toolkit},
  month        = apr,
  year         = 2022,
  publisher    = {Zenodo},
  doi          = {10.5281/zenodo.6497226},
  url          = {https://doi.org/10.5281/zenodo.6497226}
}
```

```tex
@software{lee_2022_ekorpkit,
  author       = {Young Joon Lee},
  title        = {eKorpkit: eKonomic Research Python Toolkit},
  year         = 2022,
  howpublished = {Github},
  url          = {https://github.com/entelecheia/ekorpkit}
}
```

## License

- eKorpkit is licensed under the Creative Commons License(CCL) 4.0 [CC-BY](https://creativecommons.org/licenses/by/4.0). This license covers the eKorpkit package and all of its components.
- Each corpus adheres to its own license policy. Please check the license of the corpus before using it!
