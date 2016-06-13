#!/bin/bash

unset _MODULESBEGINENV_ _LMFILES_ MODULEPATH LOADEDMODULES MODULESHOME
# edit this line
source /slow/data/cosmos/dev/Lmod-6.0.1/install/lmod/lmod/init/profile
export LMOD_REDIRECT=yes
# edit this line to point to your lmod_test/modulefiles directory
export MODULEPATH_ROOT=/slow/data/cosmos/dev/lmod_test/modulefiles
export MODULEPATH="$MODULEPATH_ROOT/core:$MODULEPATH"
