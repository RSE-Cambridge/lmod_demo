
local appBase = os.getenv("COSMOS_APP_PATH")
local pkgName = myModuleName()
local pkgVer = myModuleVersion()
local compiler  = hierarchyA(myModuleFullName(),1)[1]

prepend_path("PATH", pathJoin(appBase, compiler, pkgName, pkgVer, "bin"))
