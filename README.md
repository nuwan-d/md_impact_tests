# md_impact_tests

The molecular dynamics (MD) model used in our recent paper is shown below. This repository contains the LAMMPS files required to run MD simulations of shock propagation and spallation of polyurethane. The LAMMPS data file (240 MB) can be downloaded from here. The input and parameters files are available above (“spall_in.in” and “polyurethana_60nm.params”)



The provided MATLAB code, x_t_density.m, can be used to generate position-time plots of density (or any other thermodynamics variables). A position-time plot of density when the initial particle velocity (Up) is 2 km/s is shown below. In this case, the code will read the LAMMPS output file containing densities (density.out) and generate the plot.



Good luck with your MD simulations.
