#!/bin/bash
#SBATCH --time=08:00:00
#SBATCH --mem=4000

module purge
module load Python/3.11.3-GCCcore-12.3.0

python3 -m venv $HOME/venvs/nlp_fp

source $HOME/venvs/nlp_fp/bin/activate

python3 get_results.py -pf 'predictions/'