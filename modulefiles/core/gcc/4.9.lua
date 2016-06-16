
-- Setup Modulepath for packages built by this compiler

family("compiler")
local gnu_ver = "4.9"
local mroot = os.getenv("MODULEPATH_ROOT")
local approot = os.getenv("COSMOS_APP_PATH")
local mdir = pathJoin(mroot,"compiler/gcc", gnu_ver)
prepend_path("MODULEPATH", mdir)
prepend_path("PATH", pathJoin(approot, "core", "gcc", gnu_ver, "bin"))
