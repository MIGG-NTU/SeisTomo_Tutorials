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

The basic concept of a bash script is a list of commands, which are listed in the order of execution. A good bash script will have comments, preceded by # sign, describing the steps.

.. code-block:: bash

    #!/bin/bash
    # Author : San Zhang
    # Copyright (c) sanzhang@gmail.com
    # This is a simple demo.

    # print current date and time
    date

    # read your name
    echo "What is your name?"
    read PERSON
    echo "Hellow, $PERSON"

Save the above content, make the script executable and run it:

.. code-block:: console

    $ chmod +x hello.sh  # make the script executable
    $ ./hello.sh         # run the script


Python
++++++

Python is an interpreted, high-level, general-purpose programming language. It is FREE and OPEN-SOURCE! Unlike MATLAB, the basic Python libraries have limited capability for scientific research. Seismologists need extra open-source Python libraries (e.g. numpy, scipy, matplotlib) for data analysis and plotting.

**1. Important libraries and packages**

- `NumPy <https://numpy.org/>`__: a library for large, multi-dimensinal arrays and matrices, required by any scientific research
- `SciPy <https://www.scipy.org/>`__: a library for scientific computing, requiring NumPy, required by any scientific research
- `Matplotlib <https://matplotlib.org/>`__: a library for plotting
- `Pandas <https://pandas.pydata.org/>`__: a library for data structures and data analysis
- `ObsPy <https://github.com/obspy/obspy>`__: a project specifically for processing seismic data

**2. Quick start**

macOS and most Linux distributions have their own pre-installed Python, it's highly recommended to install the Anaconda distribution in your HOME directory.

`Anaconda <https://www.anaconda.com/>`__ is a FREE and OPEN-SOURCE distribution of the Python languages, designed for scientific computing that aims to simplify package installation and management.

With anaconda installed, you will have full control of your Python and installed packages, avoid the risk messing up your operation system, and have more than 1000 popular Python packages available.

**Install Anaconda**

To install Anaconda on your own PC, please refer to the official installation guide on `macOS <https://docs.anaconda.com/anaconda/install/mac-os/>`__, `Linux <https://docs.anaconda.com/anaconda/install/linux/>`__, and `Windows <https://docs.anaconda.com/anaconda/install/windows/>`__.

**Install packages**

There are several ways to install Python packages. The most convenient ways are ``conda`` and ``pip``. If you want to install Python package, it's recommended to check if it's available from conda. If not, then you can pip.

conda is the package manager provide d by Anaconda:

.. code-block:: console

    $ conda search numpy   # Search packages
    $ conda install numpy  # Install packages

pip is the built-in package manager of Python:

.. code-block:: console

    $ pip install numpy  $ Search packages
    $ pip install numpy  $ Install pacakges

Run following commands to install some most commonly used packages for scientific computing:

.. code-block:: console

    $ conda install ipython numpy scipy matplotlib pandas
    $ conda install obspy --channel conda-forge

**3. Free Online Resources**

- `The official Python Tutorial <https://docs.python.org/3/tutorial>`__
- `Scipy Lecture Notes <http://scipy-lectures.org/>`__
- `A Visual Intro to NumPy and Data Representation <https://jalammar.github.io/visual-numpy/>`__


Matlab
++++++

MATLAB is a multi-paradigm numerical computing environment and proprietary programming language developed by MathWorks. MATLAB allows matrix manipulations, plotting of functions and data, implementation of algorithms, creation of user interfaces, and interfacing with programs written in other languages, including C, C++, C#, Java, Fortran and Python.

**Resources**

- `MIT online course <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-057-introduction-to-matlab-january-iap-2019/>`__
- `MATLAB official website <https://www.mathworks.com/products/matlab/getting-started.html>`__

