
# How do use the generic module hierarchy for MPI/Compiler dependent modules.

## Introduction 
In this hierarchy there are 3 moving parts:

1. Compiler version
2. MPI version.
3. The module for some mpi software

The structure of the directories has the same order e.g.:
intel/15.0/mpt/2.11/phdf5/1.8.lua

To encapsulate these moving parts there are 3 corresponding directories:

1. _genericCompiler
2. _genericMPI
3. _genericModule

## _genericModule

This is an abstraction of different package versions. This contains a generic version of a modulefile for a piece of mpi software like petsc or hdf5:
    
    _genericModule/phdf5/generic.lua.

If you want to add a new software package like petsc then write a generic module file and put it here. For example:
    
    _genericModule/petsc/generic.lua

## _genericMPI

This is an abstraction of different MPI versions. An MPI version has concrete versions of mpi packages like petsc of hdf5:
    
    _genericMPI/phdf5/1.8.lua

These versions are symlinks to the generic module file stored in _genericModule. 

If you want to add a new version of a software package like phdf5/1.9 then you need to symlink 1.9.lua from here to _genericModule/phdf5/generic.lua. E.g.:

    $ ln -s _genericModule/phdf5/generic.lua _genericMPI/phdf5/1.9.lua

## _genericCompiler

This is an abstraction of the different compiler versions. A compiler version HAS a concrete MPI version like mpt:

    _genericCompiler/mpt/2.11 -> _genericMPI

If you want to add a new MPI version, create a symlink with the concrete name in here.


# Deploying a concrete Compiler/MPI/Modules tree

To create a compiler version that has all the concrete MPI versions and all the concrete module versions you simply need to create a symlink to _genericCompiler. So for example if I want to add intel version 16.1 hierarchy I can just do (from *THIS* level):

    $ mkdir intel
    $ cd intel
    $ ln -s ../_genericCompiler 16.1

Done!

