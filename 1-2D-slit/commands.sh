# If needed, add the path to lammps binary into PATH system
# PATH=$PATH:/home/monet/Downloads/mylammps/build/
PATH=$PATH:path_to_lammps_binary

# 1. Vanilla LAMMPS
mpirun -np 16 lmp -in run.lmps # 1.224 ns/day

# 2. LAMMPS with optimized forcefield
mpirun -np 8 lmp -sf opt -in run.lmps # 0.873 ns/day
mpirun -np 16 lmp -sf opt -in run.lmps # 1.231 ns/day

# 3. LAMMPS using GPU
mpirun -np 4 lmp -sf gpu -pk gpu 1 -in run.lmps # 6.113 ns/day



# Note :
# Benchmark value are given for the following configuration :
inxi -Fx
# System:    Host: phpc32 Kernel: 5.4.0-94-generic x86_64 bits: 64 compiler: gcc v: 9.3.0 Console: tty 13 
#            Distro: Ubuntu 20.04.3 LTS (Focal Fossa) 
# Machine:   Type: Desktop Mobo: Micro-Star model: X399 GAMING PRO CARBON AC (MS-7B09) v: 1.0 
#            serial: <superuser/root required> UEFI: American Megatrends v: 1.50 date: 09/06/2017 
# CPU:       Topology: 16-Core (2-Die) model: AMD Ryzen Threadripper 1950X 
# Graphics:  NVIDIA GA102 [GeForce RTX 3080 Ti] vendor: Micro-Star MSI driver: nvidia v: 495.29.05
# Drives:    Crucial model: CT2000MX500SSD1 size: 1.82 TiB 
# Memory:    31.34 GiB

lmp -h
# Large-scale Atomic/Molecular Massively Parallel Simulator - 29 Sep 2021
# Git info (stable / stable_29Sep2021-5-g320ab26493)

# OS: Linux "Ubuntu 20.04.3 LTS" 5.4.0-94-generic on x86_64

# Compiler: GNU C++ 9.3.0 with OpenMP 4.5
# C++ standard: C++11
# MPI v3.1: Open MPI v4.0.3, package: Debian OpenMPI, ident: 4.0.3, repo rev: v4.0.3, Mar 03, 2020

# Accelerator configuration:

# GPU package API: CUDA
# GPU package precision: single
# OPENMP package API: OpenMP
# OPENMP package precision: double

# GPU present: yes

# Active compile time flags:

# -DLAMMPS_GZIP
# -DLAMMPS_JPEG
# -DLAMMPS_SMALLBIG
# sizeof(smallint): 32-bit
# sizeof(imageint): 32-bit
# sizeof(tagint):   32-bit
# sizeof(bigint):   64-bit

# Installed packages:

# COMPRESS GPU KSPACE MANYBODY MOLECULE MOLFILE NETCDF OPENMP OPT RIGID