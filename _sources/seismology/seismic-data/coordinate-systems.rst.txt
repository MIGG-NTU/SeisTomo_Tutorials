Coordinate Systems
==================

The ground motion can be described quantitatively as displacement, velocity or acceleration, which is a vector. Modern seismometers include three separate channels, which can record the simultaneous movement in three orthogonal directions, e.g., North, East and vertical Upward (NEZ).


NEZ Coordinate System
---------------------

NEZ coordinate system is the most commonly used coordinate system

- ``N``: north is positive, south is negative
- ``E``: east is positive, west is negative
- ``Z``: vertical upward is positive, vertical downward is negative

.. figure:: NEZ.png
   :alt: NEZ coordinate system
   :width: 50.0%
   :align: center

   NEZ coordinate system (From https://service.iris.edu/irisws/rotation/docs/1/help/)


RTZ Coordinate System
---------------------

In real researches, we usually rotate the raw three component data from NEZ system to RTZ system. The RTZ system is a coordinate system defined by locations of earthquakes and stations, which varies for different earthquake-station pairs.

- ``R``: pointing from the earthquake location to the station location
- ``Z``: vertical upward
- ``T``: perpendicular to the plane of Z and R direction. The choice of T direction makes the RTZ coordinate system a left-handed system.

.. figure:: RTZ.png
   :alt: RTZ coordinate system
   :width: 50.0%
   :align: center

   RTZ coordinate system (From https://service.iris.edu/irisws/rotation/docs/1/help/)


12Z Coordinate System
---------------------

Sometimes, the two horizontal components may be not aligned with North and East. The arbitrary orientations have been assigned components of 1 & 2. The third component should still be vertical upward.

.. figure:: 12Z.png
   :alt: 12Z coordinate system
   :width: 50.0%
   :align: center

   12Z coordinate system (From https://service.iris.edu/irisws/rotation/docs/1/help/)

