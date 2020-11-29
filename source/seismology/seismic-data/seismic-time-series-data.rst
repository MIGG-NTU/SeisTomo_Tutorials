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


Metadata Formats
----------------

- `FDSN StationXML schema <http://www.fdsn.org/xml/station/>`__ is a human readable XML representation of the most important and commonly used structures of **SEED 2.4 metadata** with enhancements. The goal is to allow mapping between **SEED 2.4 dataless SEED volumes** and this schema with as little transformation or loss of information as possible while at the same time simplifying station metadata representation when possible.
- ASCII


Data Naming and Channels
------------------------

- Naming Convections: https://seisman.github.io/SAC_Docs_zh/appendix/naming-convections/
- SEED Channel Naming: https://ds.iris.edu/ds/nodes/dmc/data/formats/seed-channel-naming/
- Time Series Data Channels: http://ds.iris.edu/ds/nodes/dmc/tools/data_channels/#???

