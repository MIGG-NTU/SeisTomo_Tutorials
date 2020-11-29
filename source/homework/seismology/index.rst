Seismology
==========

**We may need to revised the following tasks for our own purposes**


Goals
-----

- Plot topography maps using GMT6
- Plot earthquakes on a map
- Plot focal mechanisms of earthquakes on a map


Task 0: preparation
-------------------

1. Download the necessary materials: ``beachball.zip``
2. Download and install GMT on your own computer


Task 1: plot a topography map for the GLG 401 field trip
--------------------------------------------------------

1. Read file ``plotmap401.gmt5`` using a text editor
2. Run ``bash ./plotmap401.gmt5``, check the output file ``mapGLG401.pdf``
3. Can you find Houghton, Munising, and Picture Rocks on the map?


Task 2: plot a topography map of Michigan
-----------------------------------------

1. Read file ``plotmapMI.gmt5`` using a text editor
2. Run ``bash ./plotmapMI.gmt5``, check the output file ``mapMI.pdf``
3. Change variables ``outf``, ``area``, ``proj`` in file ``plotmapMI.gmt5`` for another region. (Note the projection parameters ``proj`` should be consistent with the region parameters ``area``. Recommended values are (longtidue of the map center)/(latitude of the map center)/(minimum latitude)/(maximum latitude)/(map width). A map width of ``5c`` means 5 centimeter, and ``5i`` means 5 inches.)


Task 3: plot earthquake epicenters on a map of Michigan
-------------------------------------------------------

1. Search earthquake catalog from the ISC website: http://www.isc.ac.uk/iscbulletin/search/catalogue/

    - Database: Reviewed ISC Bulletin
    - Output format: CSV formatted
    - Rectangular search: bottom latitude: 40, top latitude: 50, left longitude: -90, right longitude: -80 (you can also try other regions)
    - Time period: start date: 2010/01/01 00:00:00, end data: 2016/01/01 00:00:00
    - No change for ``Additional search parameters``
    - Output links in the outputs: No (check the box out)
    - Click the bottom button ``Output event catalogue``. (It may take a while to create a list)
    - You will get a catalog from a new window. Copy and paste the catalog to a local file called ``ISC_MI.lst`` (Note please skip the header lines, start from the first earthquake, and end at the last earthquake.)

2. Run ``bash ./plotmapEQMI.gmt5``, check the output file ``mapEQMI.pdf``.
3. Search for earthquakes in another region, download the catalog, and plot a map. You also need to change variables ``outf``, ``area``, ``proj`` in file ``plotmapEQMI.gmt5`` for the new region.
4. Compare files ``plotmapMI.gmt5`` and ``plotmapEQMI.gmt5``. What is the difference?


Task 4: plot earthquake epicenters and focal mechanisms on a map of California
------------------------------------------------------------------------------

1. Search earthquake catalog from the ISC website: http://www.isc.ac.uk/iscbulletin/search/catalogue/

    - Database: Reviewed ISC Bulletin
    - Output format: CSV formatted
    - Rectangular search: bottom latitude: 32, top latitude: 43, left longitude: -125, right longitude: -114
    - Time period: start date: 2010/01/01 00:00:00, end data: 2011/01/01 00:00:00  (one year is more than enough!)
    - No change for ``Additional search parameters``
    - Output links in the outputs: No (check the box out)
    - Click the bottom button ``Output event catalogue``. (It may take a while to create a list)
    - You will get a catalog in a new window. Copy and paste the catalog to a local file called ``ISC_CA.lst`` (Please  skip the header lines, start from the first earthquake, and end at the last earthquake.)

2. Search the global CMT solutions from https://www.globalcmt.org/CMTsearch.html

    - Date constraints: starting data: 2010/01/01, end data: 2011/01/01
    - Location constraints: latitude from 32 to 43, longitude from -125 to -114
    - Output type: ``GMT psmeca input``
    - Keep the other default parameters
    - Click the bottom button ``Done``.
    - You will get a list in the same window. Copy and paste the list to a local file called ``CMT_CA.lst`` (Please skip the header lines, start from the first earthquake, and end at the last earthquake. Note here are only 6 parameters to represent the moment tensro: mrr mtt mpp mrt mrp mtp)

3. Run ``bash ./plotmapCMTCA.gmt5``, check the output file ``mapCMTCA.pdf``.
4. In ``plotmapCMTCA.gmt5``, in the line of ``psmeca``, try to replace ``-Sm0.5`` with ``-Sd0.5``, check the new output file. What is the difference?
5. Search for earthquakes during another time period, download the catalog, and plot a map.
6. Compare files ``plotmapEQMI.gmt5`` and ``plotmapCMTCA.gmt5``. What is the difference?

