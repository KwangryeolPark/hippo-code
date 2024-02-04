#!/bin/bash

#   Train permuted MNIST
python train.py runner=pl runner.ntrials=5 dataset=mnist dataset.permute=True model.cell=legs model.cell_args.hidden_size=512 train.epochs=50 train.batch_size=100 train.lr=0.001