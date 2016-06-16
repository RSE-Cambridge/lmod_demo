#!/bin/bash

unset _MODULESBEGINENV_ _LMFILES_ MODULEPATH LOADEDMODULES MODULESHOME

# edit this line
export BASH_ENV=$HOME/local/lmod/lmod/init/profile
source $BASH_ENV

# edit this line to point to your lmod_test/modulefiles directory
export MODULEPATH_ROOT=/home/jb914/dev/lmod_test/modulefiles
export MODULEPATH="$MODULEPATH_ROOT/core:$MODULEPATH"
