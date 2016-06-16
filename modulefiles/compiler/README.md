
# How do use the generic module hierarchy for Compiler dependent modules.

## Introduction 
In this hierarchy there are 2 moving parts:

1. Compiler version
2. The module for software compiled with a specific compiler

The structure of the directories has the same order e.g.:
intel/15.0/frebny/1.2.lua

To encapsulate these moving parts there are 2 corresponding directories:

1. _genericCompiler
2. _genericModule

## _genericModule

This is an abstraction of different package versions. This contains a generic version of a modulefile for a piece of software compiled with a specific compiler version. E.g. frebny:
    
    _genericModule/frebny/generic.lua.

If you want to add a new software package like gsl then write a generic module file and put it here. For example:
    
    _genericModule/gsl/generic.lua

## _genericCompiler

This is an abstraction of the different compiler versions. A compiler version HAS concrete software module versions:

    _genericCompiler/frebny/1.2.lua -> _genericModule/frebny/generic.lua

If you want to add a new version of a software module, create a symlink with the concrete name in here.


# Deploying a concrete Compiler tree

To create a compiler version that has all the concrete module versions you simply need to create a symlink to _genericCompiler. So for example if I want to add intel version 16.1 hierarchy I can just do (from *THIS* level):

    $ mkdir intel
    $ cd intel
    $ ln -s ../_genericCompiler 16.1

Done!

