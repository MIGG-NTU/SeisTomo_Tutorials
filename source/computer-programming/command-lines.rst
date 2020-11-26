Command Lines
=============

Seismologists usually use command lines (CLI) rather than Graphic User Interface (GUI) to navigate around different folders/directories, run programs, process data and almost everything you can imagine, because using CLI is usually much efficient than using GUI.


Resources
---------

- `Commonly-used Unix commands <https://igpppublic.ucsd.edu/~shearer/COMP233/Agnew_UNIX_onepage.pdf>`__
- `Linux 命令手册 <http://linux.51yip.com>`__
- `Linux 命令大全 <http://man.linuxde.net>`__
- `Linux 命令大全 <https://www.runoob.com/linux/linux-command-manual.html>`__


Data Processing
---------------

awk
+++

`awk <https://man.linuxde.net/awk>`__ is a domain-specific language designed for text processing and typically used as a data extraction and reporting tool. It is very convenient to extract certain columns or sections in an ASCII-format file using awk given a specified field separator. By default, fields are separated by a space. We can change that with the --field-separator option, which sets the -F‘S’ variable S to whatever you want it to be, e.g., comma ``,`` semicolon ``;`` dash ``-`` or other describable characters. Here are two expamles showing the way that we usually use to extract location, magnitude, and origin time from a common catalogue file. 

.. code-block:: console

    # check a catalog file, e.g., events.csv
    $ cat events.csv
    2019-09-01T10:30:32.320Z  32.398   90.841  39.32  6.5  MW
    2013-03-11T12:21:01.149Z  19.691  120.933  23.83  4.5  MW
    2010-01-09T01:01:10.921Z  51.582  110.850   9.33  3.3  MB

    # extract the depth (fourth) and magnitude (fifth) columns
    $ awk '{print $4,$5}' events.csv  # Here, the division character is the default setting ``empty space`` 
    39.32 6.5
    23.83 4.5
    9.33 3.3

    # extract the origin time (first) column and reformat it into yyyymmdd hhmmss
    $ awk '{print $1}' events.csv | awk -F'T' '{print $1}' | awk -F'-' '{print $1$2$3}' > origin.temp1
    $ cat origin.temp1
    20190901
    20130311
    20100109
    $ awk '{print $1}' events.csv | awk -F'T' '{print $2}' | awk -F':' '{print $1$2$3}' | awk -F'Z' '{print $1}' | awk -F'.' '{print $1}'  > origin.temp2
    $ cat origin.temp2
    103032
    122101
    010110
    $ paste origin.temp1 origin.temp2 > origin  # Merge two files into one: column addition
    $ cat origin 
    20190901	103032
    20130311	122101
    20100109	010110

cut
+++

`cut <https://man.linuxde.net/cut>`__ is a command for cutting out the sections from each line of files and writing the result to standard output. It can be used to cut parts of a line by byte position, character and field. It provides us more freedom to rename a file than ``awk``. Often used options include column indicator ``-c``, and combination of ``-d`` (seperator) and ``-f`` (field number) to realize the extraction of certain sections in the ASCII-format file. Here we use command ``cut`` to extract the origin time agian showing its powerfulness compared to command ``awk``.

.. code-block:: console

    # extract the origin time (first) column and reformat it into yyyymmdd hhmmss
    $ cat events.csv | cut -d" " -f 1 | cut -c 1-4,6-7,9-10 > origin.temp1
    $ cat origin.temp1
    20190901
    20130311
    20100109
    $ cat events.csv | cut -d" " -f 1 | cut -c 12-13,15-16,18-19  > origin.temp2
    $ cat origin.temp2
    103032
    122101
    010110
    $ paste origin.temp1 origin.temp2 > origin  # Merge two files into one: column addition
    $ cat origin 
    20190901	103032
    20130311	122101
    20100109	010110


grep
++++

`grep <https://man.linuxde.net/grep>`__ is a filter command for searching for a particular pattern of characters in a file, and displaying all lines that contain that pattern. Here we show an example that searches the lines containing ``Mw`` in a catalogue file.

.. code-block:: console

    # extract the lines containing ``Mw`` in catalog file events.csv
    $ cat events.csv | grep "MW"  # Note the capital case is different from the lower case.
    2019-09-01T10:30:32.320Z  32.398   90.841  39.32  6.5  MW
    2013-03-11T12:21:01.149Z  19.691  120.933  23.83  4.5  MW


wc
++

``TODO``


sort
++++

`sort <https://man.linuxde.net/sort>`__ is a command for sorting a file, arranging the records in a particular order. Often used options include ``-k`` (column number), ``-g`` (in numerical order), ``-r`` (in decreasing order, default is increasing order), ``-u`` (sort and remove duplicates) and ``-o`` (output to a new file). Here we show an example that sort the events in decreasing order within the catalogue according to their magnitudes.

.. code-block:: console

    # sort the events in decreasing order within the catalog file events.csv according to their magnitudes.
    $ cat events.csv | sort -k5 -g -r -o events_ordered.csv
    $ cat events_ordered.csv
    2019-09-01T10:30:32.320Z  32.398   90.841  39.32  6.5  MW
    2013-03-11T12:21:01.149Z  19.691  120.933  23.83  4.5  MW
    2010-01-09T01:01:10.921Z  51.582  110.850   9.33  3.3  MB


uniq
++++

`uniq <https://man.linuxde.net/uniq>`__ is a command for reporting or filtering out the repeated lines in a file. Often used options include ``-c`` (count, how many times a line was repeated), ``-d`` (only print the repeated lines) and ``-u`` (only print unique lines). 


File Compressing
----------------

tar
+++
``TODO``

``tar -zxvf``
``tar -jxvf``


gzip
++++
``TODO``


bzip2
+++++
``TODO``


Non-classified Commands
-----------------------

cat
+++
``TODO``


touch
+++++
``TODO``


head
++++
``TODO``


tail
++++
``TODO``


which
+++++
``TODO``


locate
++++++
``TODO``


paste
+++++
``TODO``


printf
++++++
``TODO``


sed
+++
``TODO``


