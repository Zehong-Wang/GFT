#!/bin/bash

#$ -M zwang43@nd.edu
#$ -m abe
#$ -N Few-shot
#$ -q gpu@@yye7_lab
#$ -pe smp 8
#$ -l gpu=1

for dataset in cora pubmed arxiv wikics WN18RR FB15K237 chemhiv chempcba
do
    ~/.conda/envs/GFT/bin/python GFT/finetune.py --use_params --setting few_shot --dataset $dataset
done