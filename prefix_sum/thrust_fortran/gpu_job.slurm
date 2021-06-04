#!/bin/bash
#SBATCH --job-name=test          # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem=4G                 # memory per cpu-core (4G is default)
#SBATCH --gres=gpu:1             # number of gpus per node
#SBATCH --time=24:00:00          # total run time limit (HH:MM:SS)
#SBATCH --mail-type=begin        # send email when job begins
#SBATCH --mail-type=end          # send email when job ends
#SBATCH --mail-user=cy15@princeton.edu

module purge
###module load pgi/19.5/64
###module load openmpi/pgi-19.5/3.1.4/64
###module load cudatoolkit
module load nvhpc/20.11 cudatoolkit/11.0
module load openmpi/cuda-11.0/nvhpc-20.11/4.0.4/64
module li

./test_sort
