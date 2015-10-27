
-- Setup Modulepath for packages built by this compiler
family("compiler")
local intel_ver = "15.0"

local mroot = os.getenv("MODULEPATH_ROOT")
local mdir = pathJoin(mroot, "compiler/intel", intel_ver)
prepend_path("MODULEPATH", mdir)

-- Compiler path stuff goes here...
prepend_path("PATH", pathJoin("/slow/data/cosmos/dev/modules_test/apps/core/intel/", intel_ver, "bin"))
