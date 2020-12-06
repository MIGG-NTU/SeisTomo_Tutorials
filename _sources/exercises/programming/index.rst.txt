Programming
===========

This section is still **UNDER CONSTRUCTION**.

**We may need to revised the following tasks for our own purposes for seismic tomography**


Bash
----

Task 1
++++++

Here, we have downloaded a raw earthquake catalog online (e.g., events-selected.dat). Our goal is, based on this catalog, to extract waveform files using the seismic data download tool ``SOD``. To make the catalog as a suitable input to ``SOD``, we need to reformat it into including seven columns, i.e., ``time`` ``latitude`` ``longitude`` ``depth`` ``depthUnits`` ``magnitude`` ``magnitudeType``.

.. code-block:: console

  # The content of events-selected.dat
  $ cat events-selected.dat
  year month day hour minute second event ID latitude (decimal degrees), longitude (decimal degrees), depth (km) event magnitude
  2019 07 06 03 47 52.980  38457687  35.90800 -117.74833   7.290  5.50  57  2.700   0.100   0.300   0.090  le   3d
  2019 07 06 03 19 52.260  38457511  35.76883 -117.59717   1.860  7.10  48  4.800   0.100   0.400   0.090  le   3d
  2019 07 04 17 33 48.530  38443183  35.70750 -117.50150  11.780  6.40  58  7.400   0.100   0.300   0.080  le   3d

.. code-block:: console

  # Example of a reformatted catalog suitable as an input to ``SOD``, e.g., events.csv
  $ cat  events.csv
  time latitude longitude depth depthUnits magnitude magnitudeType
  20190706T03:19:52.260Z, 35.76883, -117.59717, 1.860, KILOMETER, 7.10, mww
  20190704T17:33:48.530Z, 35.70750, -117.50150, 11.780, KILOMETER, 6.40, mww

Using the bash command lines to reformat the raw catalog events-selected.dat into a suitable input to ``SOD``.

Python
------

Task 1
++++++

Use Python to do the above bash tasks again (`solution <https://github.com/MIGG-NTU/SeisTomo_Tutorials/raw/main/source/exercises/programming/python-solution.tar>`__).
