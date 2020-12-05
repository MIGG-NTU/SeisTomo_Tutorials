Command Lines
=============

Seismologists usually use command lines (CLI) rather than Graphic User Interface (GUI) to navigate around different folders/directories, run programs, process data and almost everything you can imagine, because using CLI is usually much efficient than using GUI.


Resources
---------

- `Commonly-used Unix commands <https://igpppublic.ucsd.edu/~shearer/COMP233/Agnew_UNIX_onepage.pdf>`__
- `Linux 命令手册 <http://linux.51yip.com>`__
- `Linux 命令大全 <http://man.linuxde.net>`__
- `Linux 命令大全 <https://www.runoob.com/linux/linux-command-manual.html>`__


Commands for files and directories
----------------------------------


pwd
+++
`pwd <https://man.linuxde.net/pwd>`__ is a command to find out the path of the current working directory (folder) you’re in. The command will return an absolute (full) path.

.. code-block:: console

    # show the absolute (full) path where you are
    $ pwd
    /Users/litianjue/Documents/EOS/help/Tutorial/Example


cd
+++
`cd <https://man.linuxde.net/cd>`__ is a command to navigate through the Linux files and directories. It requires either the full path or the name of the directory, depending on the current working directory that you’re in.

.. code-block:: console

    $ cd /Users/litianjue/Documents/EOS/help/Tutorial/Example  # Your destination folder.
    $ pwd
    /Users/litianjue/Documents/EOS/Help/Tutorial/Example


ls
+++
`ls <https://man.linuxde.net/ls>`__ is a command to view the contents of a directory. By default, this command will display the contents of your current working directory.

.. code-block:: console

    # show the contents under the current folder
    $ ls
    TauP-2.4.5.tar  Time.temp1   Time.temp2   events-selected.dat


mkdir
+++
`mkdir <https://man.linuxde.net/mkdir>`__ is a command allowing the user to create directories (also referred to as folders in some operating systems).

.. code-block:: console

    $ mkdir temp
    $ ls
    TauP-2.4.5.tar  Time.temp1   Time.temp2   events-selected.dat temp


cp
+++
`cp <https://man.linuxde.net/cp>`__ is a command standing for copy. It is used to copy files (as default) or group of files or directory (with ``-R``).

.. code-block:: console

    $ mkdir temp2
    $ cp events-selected.dat temp/events   # copy file events-selected.dat into folder temp renamed as events
    $ cp -R temp2 temp/  # copy folder temp2 into folder temp
    $ cd temp
    $ ls
    events temp2


mv
+++
`mv <https://man.linuxde.net/mv>`__ is a command standing for move. It is used to move one or more files or directories from one place to another. It has two distinct functions:(i) It rename a file or folder; (ii) It moves group of files to different directory.

.. code-block:: console

    $ mkdir temp3
    $ mv events-selected.dat temp/events   # move file events-selected.dat into folder temp renamed as events
    $ mv temp3 temp/  # move folder temp3 into folder temp
    $ cd temp
    $ ls
    events  events-selected.dat  temp2   temp3


rm
+++
`rm <https://man.linuxde.net/rm>`__ is a command standing for remove. It is used to remove objects such as files (default) and directories (with ``-R``).

.. code-block:: console

    $ cd temp
    $ ls
    events  events-selected.dat  temp2   temp3
    $ rm events
    $ rm -r temp2
    $ ls
    events-selected.dat temp3



Data Processing
---------------


cat
+++

`cat <https://man.linuxde.net/cat>`__ is a command used very frequently in Linux. It reads data from the file and gives their content as output. It helps us to create, view, concatenate files.

.. code-block:: console

    # show the content of a catalog file, e.g., events-selected.dat
    $ cat events-selected.dat
    year month day hour minute second event ID latitude (decimal degrees), longitude (decimal degrees), depth (km) event magnitude
    2019 07 06 03 47 52.980  38457687  35.90800 -117.74833   7.290  5.50  57  2.700   0.100   0.300   0.090  le   3d
    2019 07 06 03 19 52.260  38457511  35.76883 -117.59717   1.860  7.10  48  4.800   0.100   0.400   0.090  le   3d
    2019 07 04 17 33 48.530  38443183  35.70750 -117.50150  11.780  6.40  58  7.400   0.100   0.300   0.080  le   3d


paste
+++++

`paste <https://man.linuxde.net/paste>`__ is one of the most useful commands used to join files horizontally (parallel merging) by outputting lines consisting of lines from each file specified, separated by tab as delimiter, to the standard output.

.. code-block:: console

    # paste two files together
    $ cat Time.temp1
    20190706
    20190706
    20190704
    $ cat Time.temp2
    0347
    0319
    1733
    $ paste Time.temp1 Time.temp2 > Time   # Here, ``>`` is Standard Output, it redirects the output content to a file.
    $ cat Time
    20190706 0347
    20190706 0319
    20190704 1733


awk
+++

`awk <https://man.linuxde.net/awk>`__ is a domain-specific language designed for text processing and typically used as a data extraction and reporting tool. It is used to extract certain columns or sections in an ASCII-format file given a specified field separator. By default, fields are separated by a space. We can change that with the --field-separator option, which sets the ``-F``‘S’ variable S to whatever you want it to be.

.. code-block:: console

    # extract the depth (fourth) and magnitude (fifth) columns
    $ awk 'FNR>1{print $10,$11}' events-selected.dat  # Here, the division character is the default setting ``empty space``; ``FNR > 1`` means skipping the first line.
    7.290 5.50
    1.860 7.10
    11.780 6.40

.. code-block:: console

    # extract the origin time (first) column and reformat it into yyyymmdd hhmmss.sss
    $ awk 'FNR>1{print $1$2$3}' events-selected.dat > origin.temp1   # Here, ``|`` is pipelines, using it, the standard output of one command is fed into the standard input of another.
    $ cat origin.temp1
    20190706
    20190706
    20190704
    $ awk 'FNR>1{print $4$5$6}' events-selected.dat  > origin.temp2
    $ cat origin.temp2
    034752.980
    031952.260
    173348.530
    $ paste origin.temp1 origin.temp2 > origin
    $ cat origin
    20190706	034752.980
    20190706	031952.260
    20190704	173348.530


printf
++++++

`printf <https://man.linuxde.net/printf>`__ is a command in Linux used to display the given string, number or any other format specifier on the terminal window. It works the same way as “printf” works in programming languages like C.

.. code-block:: console

    # extract the depth (fourth) columns with keeping one decimal place
    $ awk 'FNR>1{printf"%.1f\n",$10}' events-selected.dat
    7.3
    1.9
    11.8


cut
+++

`cut <https://man.linuxde.net/cut>`__ is a command for cutting out the sections from each line of files and writing the result to standard output. It can be used to cut parts of a line by byte position, character and field. Often used options include column indicator ``-c``, and combination of ``-d`` (seperator) and ``-f`` (field number) to realise the extraction of certain sections in the ASCII-format file.

.. code-block:: console

    # extract the origin time (first) column and reformat it into yyyymmdd hhmmss.sss
    $ awk 'FNR>1{print}' events-selected.dat | cut -c 1-4,6-7,9-10 > origin.temp1
    $ cat origin.temp1
    20190706
    20190706
    20190704
    $ awk 'FNR>1{print}' events-selected.dat | cut -c 12-13,15-16,18-23 > origin.temp2
    $ cat origin.temp2
    034752.980
    031952.260
    173348.530
    $ paste origin.temp1 origin.temp2 > origin
    $ cat origin
    20190706	034752.980
    20190706	031952.260
    20190704	173348.530


grep
++++

`grep <https://man.linuxde.net/grep>`__ is a filter command for searching for a particular pattern of characters in a file, and displaying all lines that contain that pattern.

.. code-block:: console

    # extract the lines containing ``3d`` in catalog file events-selected.dat
    $ cat events-selected.dat | grep "3d"  # Note the capital case is different from the lower case.
    2019 07 06 03 47 52.980  38457687  35.90800 -117.74833   7.290  5.50  57  2.700   0.100   0.300   0.090  le   3d
    2019 07 06 03 19 52.260  38457511  35.76883 -117.59717   1.860  7.10  48  4.800   0.100   0.400   0.090  le   3d
    2019 07 04 17 33 48.530  38443183  35.70750 -117.50150  11.780  6.40  58  7.400   0.100   0.300   0.080  le   3d


sort
++++

`sort <https://man.linuxde.net/sort>`__ is a command for sorting a file, arranging the records in a particular order. Often used options include ``-k`` (column number), ``-g`` (in numerical order), ``-r`` (in decreasing order, default is increasing order), ``-u`` (sort and remove duplicates) and ``-o`` (output to a new file).

.. code-block:: console

    # sort the events in decreasing order within the catalog file events-selected.dat according to their magnitudes.
    $ awk 'FNR>1{print}' events-selected.dat | sort -nk11,11 -r -o events-ordered.dat
    $ cat events-ordered.dat
    2019 07 06 03 19 52.260  38457511  35.76883 -117.59717   1.860  7.10  48  4.800   0.100   0.400   0.090  le   3d
    2019 07 04 17 33 48.530  38443183  35.70750 -117.50150  11.780  6.40  58  7.400   0.100   0.300   0.080  le   3d
    2019 07 06 03 47 52.980  38457687  35.90800 -117.74833   7.290  5.50  57  2.700   0.100   0.300   0.090  le   3d


uniq
++++

`uniq <https://man.linuxde.net/uniq>`__ is a command for reporting or filtering out the repeated lines in a file. Often used options include ``-c`` (count, how many times a line was repeated), ``-d`` (only print the repeated lines) and ``-u`` (only print unique lines).


wc
++

`wc <https://man.linuxde.net/wc>`__ is used to find out number of lines, word count, byte and characters count in the files specified in the file arguments.



File Compressing
----------------

tar
+++

`tar <https://man.linuxde.net/tar>`__ is a command standing for tape archive, used to create compressed or uncompressed archive files and also maintain and modify them. Often used commands include ``-x`` (extract the archive), ``-c`` (create the archive), ``-v`` (displays verbose information), ``-f`` (creates archive with given filename), ``-z`` (zip, tells tar command that create tar file using gzip), ``-j`` (filter archive tar file using tbzip).

.. code-block:: console

    # decompress a file
    $ ls
    TauP-2.4.5.tar
    $ tar -zxvf TauP-2.4.5.tar
    # or use the following command line
    $ tar -jxvf TauP-2.4.5.tar
    $ ls
    TauP-2.4.5     TauP-2.4.5.tar

.. code-block:: console

    # compress a file
    $ ls
    TauP-2.4.5
    $ tar -zcvf TauP-2.4.5
    # or use the following command line
    $ tar -jcvf TauP-2.4.5.tar
    $ ls
    TauP-2.4.5     TauP-2.4.5.tar


gzip
++++
`gzip <https://man.linuxde.net/gzip>`__ is a command for compressing files. Often used commands include ``-k`` (compression while keep the original file); ``-r`` (compress every file in a folder and its subfolders); ``-d`` (decompress a file using the “gzip” command); ``-v`` (display the name and percentage reduction for each file compressed or decompressed).

.. code-block:: console

    # compress the file
    $ ls
    events-selected.dat
    $ gzip -v events-selected.dat
    events-selected.dat:	   57.3% -- replaced with events-selected.dat.gz
    $ ls
    events-selected.dat.gz

.. code-block:: console

    # or compress the file while keeping the original one
    $ gzip -kv events-selected.dat
    events-selected.dat:	   57.3% -- replaced with events-selected.dat.gz
    $ ls
    events-selected.dat	     events-selected.dat.gz

.. code-block:: console

    # decompress the file
    $ gzip -dv events-selected.dat.gz
    events-selected.dat.gz:	   57.3% -- replaced with events-selected.dat
    $ ls
    events-selected.dat

.. code-block:: console

    # compress each file in folder temp
    $ mkdir temp
    $ cp events-selected.dat ./temp/
    $ cd ./temp/
    $ ls
    events-selected.dat
    $ cd ../
    $ gzip -rv temp
    temp/events-selected.dat:	   57.3% -- replaced with temp/events-selected.dat.gz
    $ cd ./temp
    $ ls
    events-selected.dat.gz



bzip2
+++++

`bzip2 <https://man.linuxde.net/bzip2>`__ is a command used to compress and decompress the files i.e. it helps in binding the files into a single file which takes less storage space as the original file use to take. It has a slower decompression time and higher memory use.


Non-classified Commands
-----------------------


touch
+++++

`touch <https://man.linuxde.net/touch>`__ is a command used to create a file without any content (empty file).



head
++++

`head <https://man.linuxde.net/head>`__ is the complementary of Tail command, it prints the top N number of data of the given input. By default, it prints the first 10 lines of the specified files. Often used option is ``-n num`` (Prints the first ‘num’ lines instead of first 10 lines. num is mandatory to be specified in command otherwise it displays an error).

.. code-block:: console

    # show the first two lines of content of a catalog file, e.g., events-selected.dat
    $ cat events-selected.dat | head -n 2
    year month day hour minute second event ID latitude (decimal degrees), longitude (decimal degrees), depth (km) event magnitude
    2019 07 06 03 47 52.980  38457687  35.90800 -117.74833   7.290  5.50  57  2.700   0.100   0.300   0.090  le   3d


tail
++++

`tail <https://man.linuxde.net/tail>`__ is the complementary of Head command, it prints the last N number of data of the given input. By default it prints the last 10 lines of the specified files. Often used option is ``-n num`` (Prints the last ‘num’ lines instead of last 10 lines. num is mandatory to be specified in command otherwise it displays an error).

.. code-block:: console

    # show the last two lines of content of a catalog file, e.g., events-selected.dat
    $ cat events-selected.dat | tail -n 2
    2019 07 06 03 19 52.260  38457511  35.76883 -117.59717   1.860  7.10  48  4.800   0.100   0.400   0.090  le   3d
    2019 07 04 17 33 48.530  38443183  35.70750 -117.50150  11.780  6.40  58  7.400   0.100   0.300   0.080  le   3d


which
+++++
`which <https://man.linuxde.net/which>`__ is the command used to locate the executable file associated with the given command by searching it in the path environment variable.

.. code-block:: console

    # show the location of installed sac
    $ which sac
    /usr/local/MyCode/sac/bin/sac


locate
++++++
`locate <https://man.linuxde.net/locate>`__ is the command used to find the files by name. There're two most widely used file searching utilities accessible to users are called find and locate. The locate utility works better and faster than find command counterpart.


sed
+++
`sed <https://man.linuxde.net/sed>`__ is the command standing for stream editor and it can perform lots of functions on file, e.g., searching, find and replace, insertion or deletion.

.. code-block:: console

    # delete the line containing 11.780
    $ cat events-selected.dat
    year month day hour minute second event ID latitude (decimal degrees), longitude (decimal degrees), depth (km) event magnitude
    2019 07 06 03 47 52.980  38457687  35.90800 -117.74833   7.290  5.50  57  2.700   0.100   0.300   0.090  le   3d
    2019 07 06 03 19 52.260  38457511  35.76883 -117.59717   1.860  7.10  48  4.800   0.100   0.400   0.090  le   3d
    2019 07 04 17 33 48.530  38443183  35.70750 -117.50150  11.780  6.40  58  7.400   0.100   0.300   0.080  le   3d
    $ sed '/11.780/d' events-selected.dat
    year month day hour minute second event ID latitude (decimal degrees), longitude (decimal degrees), depth (km) event magnitude
    2019 07 06 03 47 52.980  38457687  35.90800 -117.74833   7.290  5.50  57  2.700   0.100   0.300   0.090  le   3d
    2019 07 06 03 19 52.260  38457511  35.76883 -117.59717   1.860  7.10  48  4.800   0.100   0.400   0.090  le   3d

.. code-block:: console

    # replace le with LOCEVT in the whole file
    $ sed 's/le/LOCEVT/g' events-selected.dat
    year month day hour minute second event ID latitude (decimal degrees), longitude (decimal degrees), depth (km) event magnitude
    2019 07 06 03 47 52.980  38457687  35.90800 -117.74833   7.290  5.50  57  2.700   0.100   0.300   0.090  LOCEVT   3d
    2019 07 06 03 19 52.260  38457511  35.76883 -117.59717   1.860  7.10  48  4.800   0.100   0.400   0.090  LOCEVT   3d
    2019 07 04 17 33 48.530  38443183  35.70750 -117.50150  11.780  6.40  58  7.400   0.100   0.300   0.080  LOCEVT   3d


diff
++++
`diff <https://man.linuxde.net/diff>`__ is the command standing for difference. It is used to display the differences in the files by comparing the files line by line.
