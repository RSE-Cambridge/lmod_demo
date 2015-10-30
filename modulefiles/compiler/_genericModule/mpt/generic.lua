
local appBase = os.getenv("COSMOS_APP_PATH")
local mpiName = myModuleName()
local mpiVer = myModuleVersion()
local compiler  = hierarchyA(myModuleFullName(),1)[1]

-- change the module path to point to the compiler/mpi dependent apps
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir = pathJoin(mroot, "mpi", compiler, mpiName, mpiVer) 
prepend_path("MODULEPATH", mdir)


-- Add MPI stuff to the path
prepend_path("PATH", pathJoin(appBase, "core", mpiName, mpiVer))
