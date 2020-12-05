SeisTomo Tutorials
==================

Schedule
--------

========== =========== ==========
Date       Time        Topic
========== =========== ==========
2020-12-07 14:00-16:00 Basics
2020-12-14 14:00-16:00 Data
========== =========== ==========

Basics
+++++++

**Lectures:**

- **Linux & File Management**: Jiayuan YAO
- **Command Lines**: Tianjue LI
- **Programming**: Shijie HAO
- **Seismology**: Jiayuan YAO
- **Seismological Tools**: Jiayuan YAO

**Exercises:**

- **Programming**: Tianjue LI & Shijie HAO
- **Seismology**: **TBA**


Data
++++

**Lectures & Exercises:**

- **Data Fetching**: **TBA**
- **Data Processing**: **TBA**
- **Data Analysis**: **TBA**


Requirements
------------

In order to follow the toturials, you have to install the following terms in your computer.

1. Linux or macOS system

2. Install Anaconda: install on `macOS <https://docs.anaconda.com/anaconda/install/mac-os/>`__, `Linux <https://docs.anaconda.com/anaconda/install/linux/>`__, and `Windows <https://docs.anaconda.com/anaconda/install/windows/>`__. The following is an example for ``Linux x86_64 system``

- Download ``Anaconda installer for Linux``: 64-Bit (x86) Installer (529 MB)
- Enter the following to install Anaconda: ``bash ~/Downloads/Anaconda3-2020.11-Linux-x86_64.sh``

    - The default install path is ``${HOME}/anaconda3``. I usually install it in ``${HOME}/.anaconda``.
    - Other options can be referred to the official guide: https://docs.anaconda.com/anaconda/install/linux/

- Enter ``python``, then you can see ``Python 3.8.6 | packaged by conda-forge``

.. code-block:: console

   $ python
   Python 3.8.6 | packaged by conda-forge | (default, Oct  7 2020, 19:08:05)
   [GCC 7.5.0] on linux
   Type "help", "copyright", "credits" or "license" for more information.
   >>>

- Add package sources

.. code-block:: console

   $ conda config --add channels conda-forge # this will reivse ~/.condarc

- Update ``anaconda`` and ``conda``

.. code-block:: console

   $ conda update conda
   $ conda update anaconda

- Create a new enviroment named ``seis``

.. code-block:: console

   $ conda create --name seis       # creat a enviroment named seis
   $ conda activate seis            # activate the environment

- Get familiar with ``conda environment``

.. code-block:: console

   $ conda info --envs              # list all the enviroments
   $ conda list                     # list all the packages in the current environment
   $ conda deactivate               # deactivate an active environment
   $ conda remove --name seis --all # remove an environment

- Install important python packages in the ``seis`` environment

.. code-block:: console

   $ conda activate seis                           # activate the environment
   $ conda install numpy scipy matplotlib pandas   # install the packages
   $ conda list | grep numpy                       # check numpy
   $ conda list | grep scipy                       # check scipy
   $ conda list | grep matplotlib                  # check matplotlib
   $ conda list | grep pandas                      # check pandas

3. Install ObsPy in the ``seis`` environment

.. code-block:: console

   $ conda install obspy


4. Install SAC 101.6a: Install binary package is **recommended**. The installed directory is recommened to be ``/opt`` instead of ``/usr/local``.

   - Linux: https://seisman.github.io/SAC_Docs_zh/introduction/linux-install/
   - maxOS: https://seisman.github.io/SAC_Docs_zh/introduction/macOS-install/

5. Install SOD

- Download SOD: http://www.seis.sc.edu/sod/download.html
- Extract SOD: ``tar -xvf sod-3.2.10.tgz``
- Install SOD: ``sudo mv sod-3.2.10 /opt``
- Update the enviroment variable ``$PATH``

.. code-block:: console

   $ echo 'export PATH=${PATH}:/opt/sod-3.2.10/bin'>> ~/.bashrc

- Open a new terminal and run ``sod -h`` to test if SOD is installed.

6. Install TauP

- Java Runtime Environment has to be installed. Run `java -version` to check. If it is not installed, please refer to `seisman's blog <https://blog.seisman.info/taup-install/>`__
- Download TauP: https://www.seis.sc.edu/taup/
- Extract TauP: ``tar -xvf TauP-2.4.5.tgz``
- Install TauP: ``sudo mv TauP-2.4.5 /opt``
- Update the enviroment variable ``$PATH``

.. code-block:: console

   $ echo 'export TAUPHOME=/opt/TauP-2.4.5' >> ~/.bashrc
   $ echo 'export PATH=${TAUPHOME}/bin:${PATH}' >> ~/.bashrc
   $ source ~/.bashrc

- Run ``taup`` to test if TauP is installed


7. Install GMT: https://docs.gmt-china.org/latest/install/

    - I'd like to recommend installation via ``conda``
    
8. Install gcc, gfortran, make

- For Ubuntu, run the following command:
.. code-block:: console

   $ sudo apt install gcc
   $ sudo apt install gfortran
   $ sudo apt install make


.. toctree::
   :maxdepth: 3
   :hidden:
   :caption: Basics

   computer/index
   programming/index
   seismology/index
   seismological-tools/index

.. toctree::
   :maxdepth: 3
   :hidden:
   :caption: Data

   data-fetch/index
   data-process/index
   data-analysis/index

.. toctree::
   :maxdepth: 3
   :hidden:
   :caption: Tomography

   tomo-theory/index
   tomo-workflow/index

.. toctree::
   :maxdepth: 3
   :hidden:
   :caption: Exercises

   exercises/programming/index
   exercises/seismology/index
   exercises/data-fetch/index
   exercises/data-process/index
   exercises/data-analysis/index

.. toctree::
   :maxdepth: 3
   :hidden:
   :caption: Appendix

   references
   links

