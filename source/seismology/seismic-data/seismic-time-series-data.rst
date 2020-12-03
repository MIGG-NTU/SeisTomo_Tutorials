Seismic Time Series Data
========================

Seismic time series data is seismogram waveforms recorded at seismic stations. We mostly use digital data, which is a time series of velocity of the ground shaking.

Besides the waveform itself, metadata describes critical information of the waveform data. Metadata can include station information, earthquake information, instrument response, etc.


Time Series Data Formats
------------------------

There are many different seismic data formats in seismology community. The most commonly used formats are SAC, miniSEED and SEED.

- **SAC** is a good format for data analysis, though difficult for storing. This format is defined by the software SAC (Seismic Analysis Codes), although it is supported by many other tools
- **SEED** (Standard for the Exchange of Earthquake Data) is a data format intended primarily for the archival and exchange of seismological time series data and related metadata. The latest `SEED 2.4 <http://www.fdsn.org/pdf/SEEDManual_V2.4.pdf>`__ is published in 2012.
- **miniSEED** is the subset of the SEED standard that is used for time series data. Very limited metadata for the time series is included in miniSEED beyond time series identification and simple state-of-health flags. In particular, geographic coordinates, response/scaling information and other information needed to interpret the data values are not included.


Data Naming and Channels
------------------------

**Naming Convections:** https://seisman.github.io/SAC_Docs_zh/appendix/naming-convections/

The file names of seismic data are usually like, ``BK.BKB.00.BHZ.SAC``.

- ``BK``: network code
- ``BKB``: station identifier
- ``00``: location identifier
- ``BHZ``: channel code
- ``SAC``: suffix. It does not mean anything. You can even have no suffix.


Location Identifier
++++++++++++++++++++

**The Location Identifier:** http://ds.iris.edu/ds/newsletter/vol1/no1/1/specification-of-seismograms-the-location-identifier/

IRIS DMC now need an additional parameter to uniquely identify a seismogram. The Location Identifier is a two character code that, when used in conjunction with the other data specifiers, uniquely identifies a data stream.

In the case of GSN data the Location Identifier is employed to distinguish between multiple sensors with identical station and channel names. For example, several GSN stations are equipped with both STS-1 and STS-2 broadband high gain seismometers. Both sensors have channel names beginning with BH. Recently support for the Location Identifier was added resolve this issue of non-uniqueness.

Valid characters for location identifiers are [space, 0-9, A-Z][space, 0-9, A-Z]. So space-space is a legitimate Location Identifier.

Suggested usage of Location Identifiers for data from the GSN is as follows. Numbers [0-9][0-9] should be used for multiple instruments at one station. For instance if you have an STS-1 and and STS-2 BHZ channel the location id could be:

- ``00`` for the STS-1 (primary stream)
- ``10`` for the STS-2 ( the secondary stream)
- ``20`` for other sensors, etc

Channel Code
++++++++++++

- **SEED Channel Naming:** https://ds.iris.edu/ds/nodes/dmc/data/formats/seed-channel-naming/
- **Time Series Data Channels:** http://ds.iris.edu/ds/nodes/dmc/tools/data_channels/#???

The Channel Code is a 3-character code that specifies the bandwidth of the recorded signal, type, and orientation of the sensor. For instance, a channel code of ``BHZ`` is used to indicate the signal came from a broadband (B), high gain seismometer (H) and is recording ground motion in the vertical (Z) direction.

**Band Code:** The first letter specifies the general sampling rate and the response band of the instrument.

.. table:: Band Code

   +-----------------+-----------------+-----------------+---------------------+
   | Band Code       | Band type       | Sample rate (Hz)| Corner period (sec) |
   +=================+=================+=================+=====================+
   | F               | ...             | 1000-5000       | > 10                |
   +-----------------+-----------------+-----------------+---------------------+
   | G               | ...             | 1000-5000       | < 10                |
   +-----------------+-----------------+-----------------+---------------------+
   | D               | ...             | 250-1000        | < 10                |
   +-----------------+-----------------+-----------------+---------------------+
   | C               | ...             | 250-1000        | > 10                |
   +-----------------+-----------------+-----------------+---------------------+
   | E               | Extremely Short | 80-250          | < 10                |
   |                 | Period          |                 |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | S               | Short Period    | 10-80           | < 10                |
   +-----------------+-----------------+-----------------+---------------------+
   | H               | High Broad Band | 80-250          | < 10                |
   +-----------------+-----------------+-----------------+---------------------+
   | B               | Broad Band      | 10-80           | > 10                |
   +-----------------+-----------------+-----------------+---------------------+
   | M               | Mid Period      | 1-10            | > 10                |
   +-----------------+-----------------+-----------------+---------------------+
   | L               | Long Period     | :math:`\approx` |                     |
   |                 |                 | 1               |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | V               | Very Long       | :math:`\approx` |                     |
   |                 | Period          | 0.1             |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | U               | Ultra Long      | :math:`\approx` |                     |
   |                 | Period          | 0.01            |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | R               | Extremely Long  | 0.0001-0.001    |                     |
   |                 | Period          |                 |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | P               | Order of 0.1 to | 0.00001-0.0001  |                     |
   |                 | 1 days          |                 |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | T               | Order of 1 to   | 0.000001-0.0000 |                     |
   |                 | 10 days         | 1               |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | Q               | Greater than 10 | < 0.000001      |                     |
   |                 | days            |                 |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | A               | Administrative  | variable        | NA                  |
   |                 | Instrument      |                 |                     |
   |                 | Channel         |                 |                     |
   +-----------------+-----------------+-----------------+---------------------+
   | O               | Opaque          | variable        | NA                  |
   |                 | Instrument      |                 |                     |
   |                 | Channel         |                 |                     |
   +-----------------+-----------------+-----------------+---------------------+


**Instrument Code:** The second letter specifies the family to which the sensor belongs. In essence, this identifies what is being measured.

.. table:: Instrument Code (Seismometer)
   :align: center

   =============== =========================
   Instrument Code Notes
   =============== =========================
   ``H``           High Gain Seismometer
   ``L``           Low Gain Seismometer
   ``G``           Gravimeter
   ``M``           Mass position Seismometer
   ``N``           Accelerometer
   ``P``           Geophone
   =============== =========================

We usually see high hain seismometer (``H``), which records the velocity of ground motion. For seismic tomography, low gain seismometer (``L``) and geophone (``P``) can also be used.


**Orientation Code:** The third letter indicates the directionality of the sensor measurement. See :doc:`coordinate-systems` for details.

.. table:: Orientation Code
   :align: center

   ================= =======================================================================================
   Orientation Code  说明
   ================= =======================================================================================
   ``N E Z``         Traditional (North-South, East-West, Vertial)
   ``1 2 3``         Orthogonal components but non traditional orientations (3: vertical; 1 & 2: horizontal)
   ``R T Z``         Transverse, Radial, Vertical
   ================= =======================================================================================

