# Binding-Project-Template
This is a template project for the GNATStudio ide

The intent is to provide a base for writing bindings to C-libraries.

### The general structure is:
#### src/**
  Where the high level bindings written by hand goes and the files.
  It also contains the input.cpp file that is used as main file for the automatic generation of specs.
  
#### src/gen/
  Contains the Ada-specs automaticly generated from the header-files.
  These files are set to read-only after a successful generation to realy emphsise that they are not to be edited by hand.
  
#### sed/
  Contains a set of .sed-scripts to be applied to the generated specs before compilation 
  There are two classes of scripts:
    .sed-files with an "_" first in the file name and the file "all.sed".
	 these scripts are applied to every .ads-file
  .sed-files with a basesname equal to an .ads-file
	  These scripts are apllied to the corresponding .ads file only
  This folder is searched recursivly for .sed files.
  
