GMT
====

Here is a homework to help you learn how to plot a simple map in GMT (``GMT-training.tar.gz``)

What you need to plot with GMT in this homework:

1. Topography map of eastern US (with MI at the center)
2. Coastlines, national boundary between US and Canada, lakes
3. Plot triangles as locations of seismic stations and also add texts to denote station names
4. Plot stars as locations of earthquakes
5. Add a figure legend
6. Add a inset map to show the geographic location of the map region

The attached tarball contains fours files:

1. ``US-stations.dat``: Information (name and coordinate) of some seismic stations
2. ``events.dat``: Information (origin time, coordinate, depth and magnitude) of some earthquakes
3. ``map.pdf``: The final figure you expect to plot
4. ``plotMap.sh``: A ready-to-use bash script to plot the figure in map.pdf. You can run the script and try to make some changes and see how the figure changes. Try your best to understand it. You can also take it as a reference and write your own script.


**Note:** GMT comes with coastline and some national boundary data, which you can use by calling the pscoast module of GMT. You will need the global topography/bathymetry data to plot the topography map, which is also available from GMT FTP site but not included in the GMT package due to the large data size. You can download the global topography/bathymetry data in different resolutions from ftp://ftp.soest.hawaii.edu/gmt/data/. earth_relief_02m.grd means the grid spacing of the data is 2 arc minute, which is enough for this homework map. Remember to download earth_relief_02m.grd and put it in the same directory as your GMT script.

