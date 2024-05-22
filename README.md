# [Change Title] <Title> - <Authors> (<Year>)
<!-- Originated from: https://github.com/aidanscannell/reproducible-research-project-template -->

This repository contains an attempt to reproduce the results of the paper: [link](INSERT LINK).
<!--
Supplementary material for the paper are available: [link](INSERT LINK).
-->

```bibtex
@article{XXX,
    title={Title,
    author={Authors},
    journal={Journals},
    year={2023}
}
```

## Getting started

Running `make all` in the top level directory should:
1. `make install`: make a python virtual environment using `Poetry` and install dependencies.
2. `make run`: run all experiments

<!-- IF CLUSTER RUN REQUIRED
> Scripts in this repository are designed to be run on a cluster setting.
-->

## Require tools

Following tools are used to aid reproducibility and ease of use.
See the links for more information.
- [hydra](https://hydra.cc/): managing experimental configurations,
    - [submitit](https://hydra.cc/docs/plugins/submitit_launcher/) and [multirun](https://hydra.cc/docs/intro/#multirun): deploy experiments in parallel
- [poetry](https://python-poetry.org/): managing python dependencies

## Before finishing project

- [ ] Update the short example
- [ ] Add an example with commentary using Jupyter notebook `result.ipynb`
- [ ] Update paper citation
- [ ] Add details for running all experiments
- [ ] At end of project run `poetry lock` to store projects dependencies

## Example

Short script on running:

## Reproducing experiments

All experiments use the hydra config in [configs/main.yaml](configs/main.yaml).
Each experiment then overrides specific parts of the config which are detailed in their experiment override configs in [experiments/](configs/experiment/).

You can display the base config using:
``` shell
python train.py --cfg=job
```
Run an experiment with:
``` shell
python train.py +experiment=experiment_1
```
Ideally, all experiments can be run in paralell (on a cluster) with:
``` shell
python train.py  --multirun +experiment=glob(*)
```
Note that we can sweep over config value using hydra, for example, we can sweep over a set of random seeds with:
``` shell
python train.py --multirun ++random_seed=42,1,5,100
```
However, the best thing to do is to specify the sweeps directly in an experiment's config.
For example, we can we sweep over `models.AwesomeModel`'s `parameter` argument and it's `random_seed` with the [following config](./configs/experiment/sweep_over_models_parameter_and_seed.yaml):
``` yaml
# @package _global_
hydra:
  sweeper:
    params:
      mode.parameter: 1,2,3,4,5
      random_seed: 1,42,69,50,100
```
