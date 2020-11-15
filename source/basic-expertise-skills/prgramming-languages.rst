Prgramming Languages
====================


Compiled Language
-----------------

.. attention::

   At this time, you can skip this step and come back to learn one complied language when you need it.

You need at least master one compiled language. The most popular compiled languages used in seismology community are C, Fortran, C++ and Java.

For beginners, C or Fortran are the best choices. You need to know the basic grammar of a programming language and how to compile/run a program.

For a program written in C or Fortran, you need follow the steps to run the program:

1. Write the source codes using the correct syntax
2. Compile the source codes to a executable file, using a compiler (``gcc`` for C, ``gfortran`` for Fortran)
3. Run the executable file

To compile source codes to a executable file, you need to know some commonly used options for gcc and gfortran, such as ``-c``, ``-o``, ``-g``, ``-I``, ``-L``, ``-l``. It would be easier to solve some compilation errors if you have a basic understanding of the compiling, linking and executing for compiled languages.

You also need to learn how to read and write a Makefile, which is a tool to automatize the compiling process for a large source codes with multiple executable files. Please refer to `跟我一起写 Makefile <https://blog.seisman.info/how-to-write-makefile/>`__.


Scripting Languages
-------------------

Scripting Languages can also be called as interpreted Languages. It's usually easier to write and can accomplish complex tasks using only a few lines of codes. The only disadvantage is interpreted languages are usually much slower than compiled languages. There are many interpreted languages, the most used in seismology community are bash, Python (recommanded) and Matlab.


Bash
++++

``TODO``


Python
++++++

Python is an interpreted, high-level, general-purpose programming language. It is FREE and OPEN-SOURCE! Unlike MATLAB, the basic Python libraries have limited capability for scientific research. Seismologists need extra open-source Python libraries (e.g. numpy, scipy, matplotlib) for data analysis and plotting.

``TODO``

**References**

- `MSU Wei <https://sites.google.com/msu.edu/wei-seismic-training/programming/python?authuser=0>`__


Matlab
++++++

MATLAB is a multi-paradigm numerical computing environment and proprietary programming language developed by MathWorks. MATLAB allows matrix manipulations, plotting of functions and data, implementation of algorithms, creation of user interfaces, and interfacing with programs written in other languages, including C, C++, C#, Java, Fortran and Python.

``TODO``

**References**

- `MSU Wei <https://sites.google.com/msu.edu/wei-seismic-training/programming/matlab?authuser=0>`__


