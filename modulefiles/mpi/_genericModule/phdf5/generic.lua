
local appBase = os.getenv("COSMOS_APP_PATH")
local pkgName = myModuleName()
local pkgVer = myModuleVersion()
local compiler  = hierarchyA(myModuleFullName(),2)[2]
local mpi = hierarchyA(myModuleFullName(),2)[1]

prepend_path("PATH", pathJoin(appBase, compiler, mpi, pkgName, pkgVer, "bin"))
