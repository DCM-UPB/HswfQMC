# HswfQMC
=======

# Hydrogen Shadow Wave Function Quantum Monte Carlo

=======

##INSTALL:

Follow these simple steps:

1 - Set the PATH.
  To do so, enter in the folder HswfQMC and execute the command
    $ sh pilot-HswfQMC.sh setpath
  After running this command you can use the script pilot-HswfQMC (in the following we will refer to is simply as pilot). as an executable from anywhere.
  To give it a try and see which options you have, go to your home directory
    $ cd
  and run
    $ pilots-HswfQMC help

2 - Install the Lapack library.
  We reccomend to use pilot in order to have the latest fully optimized version of the Lapack library.
  Run
    $ pilot-HswfQMC install_lapack
  and follow the instructions.
  If you prefer using the system library or your own version, you can skip this step.
  
3 - Set the Makefile.
  The Makefile is located in source/Makefile. We reccomend to set it with pilot by running
    $ pilots-HswfQMC setmakefile
  If you prefer to set it by hand you can simply edit it by yourself.

4 - Compile the HswfQMC code.
  This can be done with pilot by running
    $ pilot-HswfQMC build
  If you prefer to do it manually, just run make inside the source/ folder.




