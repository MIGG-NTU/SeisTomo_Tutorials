Seismic Source
===============

Goals
-----

- download earthquake catalog
- find Ridgecrest earthquake sequence
- plot Ridgecrest earthquake sequence on a map


Task 0: preparation
-------------------

1. Download and install GMT6 on your own computer


Task 1: download earthquake catalog
-----------------------------------

1. Download waveform relocated earthquake catalog for Southern California: https://scedc.caltech.edu/research-tools/alt-2011-dd-hauksson-yang-shearer.html

    - 1981-2019: ``1981-2019 Catalog file``

2. Read format information: ``Format and catalog information (2019 dataset)``. Important points are indicated below.

    - columns `1-6`: ``year``, ``month``, ``day``, ``hour``, ``minute``, ``second``
    - column `7`: ``event ID``
    - column `8-10`: ``latitude (decimal degrees)``, ``longitude (decimal degrees)``, ``depth (km)``
    - column `11`: ``event magnitude``


Task 2: find Ridgecrest earthquake sequence
----------------------------------------------

The main shock of Ridgecrest earthquake sequence occurs on ``2019-07-06T03:19:52.260``.

1. Find Ridgecrest earthquake sequence

    - location: ``35.5`` < latitude < ``36`` | ``-118`` < longitude < ``-117.3``
    - time: ``2019-07-01T00:00:00.000`` ~ ``2019-08-01T00:00:00.000``

2. Find the three largest (magnitude) earthquakes in the sequence


Task 3: plot earthquakes on a map
---------------------------------

1. Plot the Ridgecrest earthquake sequence on a map (``points``)
2. Plot the three largest earthquakes in the sequence on the map (``stars``)


Please download the `solution <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/exercises/seismology/seismic-source-solution.tar>`__.

