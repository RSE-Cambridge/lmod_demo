
-- Setup Modulepath for packages built by this compiler

family("compiler")
local intel_ver = "16.0"

local mroot = os.getenv("MODULEPATH_ROOT")
local approot = os.getenv("COSMOS_APP_PATH")
local mdir = pathJoin(mroot,"compiler/intel", intel_ver)
prepend_path("MODULEPATH", mdir)

-- Compiler path stuff goes here...
prepend_path("PATH", pathJoin(approot, "core", "intel", intel_ver, "bin"))
