#!/bin/bash
#SBATCH --account=def-jklymak
#SBATCH --mail-user=julia27317@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --time=0-0:2:00
#SBATCH --mem-per-cpu=3G

# sbatch -J TideFr3000N04000 runModel.sh


# top=$1  Passed as qsub  -v top=h60h27f20 runModel.sh
which mpirun

mpirun -np 4 ./hello_world -parallel
