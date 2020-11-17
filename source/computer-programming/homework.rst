Homework
========

``TODO``

We may have some exercises to let the students to complete about Linux command lines and Python.


Bash
----

Download the data for Python training: `python-training.tar.gz <https://raw.githubusercontent.com/MIGG-NTU/SeisTomo_Tutorials/main/source/computer-programming/python-training.tar.gz>`__

- Use a bash script to automatically copy each of 'ISClauraw?.lst' files to a new directory with a new name 'MSUtrain?.dat'
- Use awk to extract only the columns of latitude and longitude from 'ISClauraw?.lst' files and output to 'epicenter?.lst'
- Sort each of 'ISClauraw?.lst' files based on 'mb' (body-wave magnitude), latitude, or depth, and output to another file
- Use a bash script to generate 50 new files based on the first 50 earthquakes in 'ISClauraw1.lst'. Each file should be named after the earthquake ID (e.g., 51839.info or 51844.info), and contains the earthquake information in the following format:

.. code-block:: console

    ID: 51839
    Data: 12/08/09
    Time: 05:55:42.37
    Latitude: -17.8483
    Longitude: -178.0777
    Depth: 590.0


Python
------

Task 1
++++++

Use Python to do the above bash tasks again.


Task 2
++++++

Here are some catalogs of earthquakes in Tonga, relocated by `Wei et al. (2019) <https://doi.org/10.1126/sciadv.1601755>`__:

- 4 of them (``ISClauraw?.lst``) include more than 700 earthquake that were recorded by local seismic stations and relocated by Antelope (a seismic software).
- ``ISCid.lst`` is an ISC catalog which should include most of these earthquakes.

Generally speaking, we think the local catalogs (``ISClauraw?.lst``) should provide better hypocenters as the earthquakes are constained by local stations. On the other hand, the ISC catalog assigns each earthquake a unique ID which has a broader usage.

Please write a Python script to associate these catalogs, i.e., create a new catalog in which each earthquake has a high-precision hypocenter from the local cataglos and a unique ISC ID. ``assISCid.py`` serves as a reference, but probably doesn't work well. You can digest this Python script and write your own.

