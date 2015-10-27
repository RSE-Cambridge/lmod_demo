
-- Setup Modulepath for packages built by this compiler

family("compiler")
local gnu_ver = "5.1"
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir = pathJoin(mroot,"compiler/gcc", gnu_ver)
prepend_path("MODULEPATH", mdir)
prepend_path("PATH", pathJoin("/slow/data/cosmos/dev/modules_test/apps/core/gcc/", gnu_ver, "bin"))
