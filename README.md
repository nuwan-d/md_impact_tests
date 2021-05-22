# Molecular dynamics simulations of ballistic impact tests

I would like to share a molecular dynamics (MD) model used in our recent paper published in
 [Computational Materials Science](https://www.sciencedirect.com/science/article/abs/pii/S0927025621002299). This repository contains the LAMMPS files required to run MD simulations of impact tests of the aluminum/polyurea structure shown below. The LAMMPS data file (164 MB) can be downloaded [from here](https://drive.google.com/file/d/1J8zSFvw8cZQ8xSUp9quD7xxAviviOzIl/view?usp=sharing). The input and parameters files are available above (“impact_in.in” and “impact_para.params”). We used the [Enhanced Monte Carlo](http://montecarlo.sourceforge.net/emc/Welcome.html) pcakage to create the polymer model and the [Open Visualization Tool](https://www.ovito.org/) for visualization.

A brief video overview of this model (and another) is [available here](https://youtu.be/hgZXvUdr-Qo). 

 <img src="MD_model.JPG" width="600">

The provided MATLAB code, projectile_z_v.m, can be used to track the position and velocity of the projectile; a typical plot is shown below.

 <img src="projectile_v_x.png" width="350">

If you are using [Compute Canada](https://www.computecanada.ca/home/), the "sub_gra.sh" script can be used to submit the job. The simulation will need ~11,000 core-hours.

If you would like to learn more about the model, please read [our paper](https://www.sciencedirect.com/science/article/abs/pii/S0927025621002299). 

Good luck with your MD simulations.
