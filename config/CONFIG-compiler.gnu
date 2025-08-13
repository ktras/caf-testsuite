## These variables are needed for the output files and for the naming of graphs.
## Please set these variables to their appropiate values.

#OpenUH CAF Compiler
COMPILER="gfortran"
MPI_PATH="$HOME/opt/openmpi_5.0.8_gnu"
FC="mpif90"
FFLAGS="-fcoarray=lib -cpp -DCO_REDUCTIONS_SUPPORT"
OPENCOARRAYS_PATH="$HOME/opt/opencoarrays/lib64"
LIB_CAF="-L${OPENCOARRAYS_PATH} -lmpi -lcaf_mpi -Wl,-rpath,${OPENCOARRAYS_PATH}"
LAUNCHER="$MPI_PATH/bin/mpirun -n ${NPROCS}"
EXEC_OPTIONS=""

COMPILE_CMD="${FC} ${FFLAGS} ${FFLAGS_BENCH_DEFS}"
