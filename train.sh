#!/bin/bash

#   Train permuted MNIST
#   See more information:
#   https://github.com/KwangryeolPark/hippo-code?tab=readme-ov-file#permuted-mnist
python train.py runner=pl runner.ntrials=5 dataset=mnist dataset.permute=True model.cell=legs model.cell_args.hidden_size=512 train.epochs=50 train.batch_size=100 train.lr=0.001

#   CharacterTrajectories
#   See more inforamtion:
#   https://github.com/KwangryeolPark/hippo-code?tab=readme-ov-file#charactertrajectories
python train.py runner=pl runner.ntrials=2 dataset=ct dataset.timestamp=False dataset.train_ts=1 dataset.eval_ts=1 dataset.train_hz=0.5 dataset.eval_hz=1 dataset.train_uniform=True dataset.eval_uniform=True model.cell=legs model.cell_args.hidden_size=256 train.epochs=100 train.batch_size=100 train.lr=0.001


