#!/bin/bash
#SBATCH --account=YOUR_USER_NAME
#SBATCH --nodes=10
#SBATCH --ntasks-per-node=32
#SBATCH --time=00-40:00
#SBATCH --output=%J.log
#SBATCH --mail-user=YOUR_EMAIL
#SBATCH --mail-type=ALL
#SBATCH --job-name=pu3_al3_045

# Load the module:

module load nixpkgs/16.09  intel/2016.4  openmpi/2.1.1 lammps-omp/20181212

echo "Starting run at: `date`"

lmp_exec=lmp_icc_openmpi
lmp_input="impact_in.in"
lmp_output="lammps_output.txt"

srun ${lmp_exec} < ${lmp_input} > ${lmp_output}

echo "Program finished with exit code $? at: `date`"