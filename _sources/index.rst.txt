SeisTomo Tutorials
==================

.. note::

   From 2021/07/03, the tutorials are maintained on `Seismology101 <https://seismo-learn.org/seismology101/>`__,
   which are tutorials for absolute beginners in Seismology in Chinese.

.. note::

   From 2021/07/03, the tutorials on this website and in BaiduDisk are not maintained any more.

---

This website hosts a series of introductory tutorials about seimic tomography.

.. note::

   The lecture resources and videos are also available in
   `BaiduDisk <https://pan.baidu.com/s/1-8wQmywkvByrPtBhKD4x5g>`__ with passwd ``4vgu``.

Schedule
--------

**Basics: 2020-12-07 14:00-16:00**

===============  ============ ===================
Topic            Instructor   Lecture Resources
===============  ============ ===================
Seismology       Jiayuan YAO  `pptx <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/download/lectures/20201207-seismology-file-management.pptx>`__
File Management  Jiayuan YAO  pptx is included in the above pptx
Command Lines    Tianjue LI   `command lines <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/download/lectures/20201207-command-lines.tar>`__
Programming      Shijie HAO   `pptx <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/download/lectures/20201207-programming.pptx>`__ | `programming <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/download/lectures/20201207-programming.tar>`__
===============  ============ ===================

**Data: 2020-12-14 14:00-16:00**

====================================  ============ ========================
Topic                                 Instructor   Lecture Resources
====================================  ============ ========================
Data Fetching, Processing & Analysis  Jiayuan Yao  `pptx <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/download/lectures/20201214-seismic-data.pptx>`__ | `seismic-data <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/download/lectures/20201214-seismic-data.tar>`__
====================================  ============ ========================

**Seismic Tomography: 2020-12-21 14:00-16:00**

===================  ============ ========================
Topic                Instructor   Lecture Resources
===================  ============ ========================
Seismic Tomography   Ping Tong    `pptx <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/download/lectures/20201221-tomography.pdf>`__
===================  ============ ========================

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
   $ conda install cartopy


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

- Java Runtime Environment has to be installed. Run ``java -version`` to check it. If it is not installed, please refer to `seisman's blog <https://blog.seisman.info/taup-install/>`__
- Download TauP: https://www.seis.sc.edu/taup/
- Extract TauP: ``tar -xvf TauP-2.4.5.tgz``
- Install TauP: ``sudo mv TauP-2.4.5 /opt``
- Update the enviroment variable ``$PATH``

.. code-block:: console

   $ echo 'export TAUPHOME=/opt/TauP-2.4.5' >> ~/.bashrc
   $ echo 'export PATH=${TAUPHOME}/bin:${PATH}' >> ~/.bashrc
   $ source ~/.bashrc

- Run ``taup`` to test if TauP is installed


7. Install GMT: https://docs.gmt-china.org/latest/install/ (I'd like to recommend installation via ``conda``)

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
