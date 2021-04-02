#!/bin/bash
#SBATCH --time=00:30:00
#SBATCH --job-name=train_pointnet
#SBATCH --mem-per-cpu=1g
#SBATCH --cpus-per-task=10
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu
#SBATCH --output=log_%j.txt

module load cuda

python train.py --data modelnet40 --model pointnet --feature_transform 0