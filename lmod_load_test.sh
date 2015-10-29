#!/bin/bash

unset _MODULESBEGINENV_ _LMFILES_ MODULEPATH LOADEDMODULES MODULESHOME
source /slow/data/cosmos/dev/Lmod-6.0.1/install/lmod/lmod/init/profile
export LMOD_REDIRECT=yes
export MODULEPATH_ROOT=/slow/data/cosmos/dev/modules_test/modulefiles
export MODULEPATH="$MODULEPATH_ROOT/core:$MODULEPATH"
