# lmod_test

## Getting Started

Pre-reqs: an install of lua, lua-filesystem, lua-posix, bash-completion, Lmod.

Install:

1. `cd /path/to/lmod_test/`
2. Edit `lmod_load_test.sh` and change the paths there to your own.
3. Edit `modulefiles/cosmos.common` and change the COSMOS_APP_PATH envar._

Running:

1. Purge the old environment modules (if used): `module purge`.
2. `cd /path/to/lmod_test/`
3. `source lmod_load_test.sh`
4. `module av` should work and display some modules like cosmos.common, intel...
5. `module load cosmos.common` first.
6. `module spider` will discover all the modules in the hierarchy (seems like this is needed to get bash-completions of module names to work...).

Try this:
(also after every `module load` try `module av` and `module list` to see how things are 
dynamically changed).

1. `module load intel` (load default (D) intel)
2. `hello_intel.sh` (exe from the intel module)
3. `module load foobar` (a fake app compiled with intel)
4. `hello_foobar.sh`
5. `module load mpt` (load the MPI library for this intel compiler)
6. `hello_mpt.sh`
7. `module load phdf5` (load parallel hdf5 for this intel and this MPI)
8. `hello_phdf5.sh`
9. Now try: `module swap intel intel/15.0` or `module load gcc` etc.
10. `module list`

Notice how compiler versions and app version are mutually exclusive.

## apps
This directory contains mock installs of apps. They are arranged in a tree of 
compiler version, app version, and (where neccessary) MPI version.
Each mock app has its own hello_[APPNAME].sh script that will be loaded
into your path via the Lmod modules. You can run this script and it will say
'hello world' plus its name and versions.

In practice, the apps directory would be automatically populated via some
build system like EasyBuild.


## modulefiles
This is where the logic for the mock LMOD demo lives.
It splits the different types of modules into 3 different classes:

* core - apps where there is no need for different compiler versions or mpi versions. This is also where the modulefiles for the *actual* compilers live.
* compiler - apps that are compiled with different versions of themselves and different compilers.
* mpi - apps that are compiled with different versions of themselves, compiler, and mpi library.

There are further readmes further in the modulefiles directory tree that 
explain how these are easily implemented and extended using lmod's generic
modulefiles and symlink hackery.


Enjoy. James Briggs (jb914)
