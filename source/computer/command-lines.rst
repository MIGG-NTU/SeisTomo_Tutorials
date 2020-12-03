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
`pwd <https://man.linuxde.net/pwd>`__ is a command to find out the path of the current working directory (folder) you’re in. The command will return an absolute (full) path, which is basically a path of all the directories that starts with a forward slash (/).

.. code-block:: console

    $pwd 
    /Users/litianjue/Documents/EOS/help/Tutorial/Example


cd 
+++
`cd <https://man.linuxde.net/cd>`__ is a command to navigate through the Linux files and directories. It requires either the full path or the name of the directory, depending on the current working directory that you’re in.

.. code-block:: console

    $cd /Users/litianjue/Documents/EOS/help/Tutorial/Example  #Your destination folder.
    $pwd
    /Users/litianjue/Documents/EOS/help/Tutorial/Example


ls
+++
`ls <https://man.linuxde.net/ls>`__ is a command to view the contents of a directory. By default, this command will display the contents of your current working directory.

.. code-block:: console

    $ls
    events.csv



Data Processing
---------------


cat
+++

`cat <https://man.linuxde.net/cat>`__ is a command used very frequently in Linux. It reads data from the file and gives their content as output. It helps us to create, view, concatenate files.

.. code-block:: console

    # show the content of a catalog file, e.g., events.csv
    $ cat events.csv
    2019-09-01T10:30:32.320Z  32.398   90.841  39.32  6.5  MW
    2013-03-11T12:21:01.149Z  19.691  120.933  23.83  4.5  MW
    2010-01-09T01:01:10.921Z  51.582  110.850   9.33  3.3  MB


paste
+++++

`paste <https://man.linuxde.net/paste>`__ is one of the most useful commands in Unix or Linux operating system. It is used to join files horizontally (parallel merging) by outputting lines consisting of lines from each file specified, separated by tab as delimiter, to the standard output. When no file is specified, or put dash (“-“) instead of file name, paste reads from standard input and gives output as it is until a interrupt command [Ctrl-c] is given.

.. code-block:: console

    # paste two files together
    $ cat origin.temp1
    20190901
    20130311
    20100109
    $ cat origin.temp2
    103032
    122101
    010110
    $ paste origin.temp1 origin.temp2 > origin   #Here, ``>`` is Standard Output, it redirects the output content to a file.
    $ cat origin 
    20190901	103032
    20130311	122101
    20100109	010110


awk
+++

`awk <https://man.linuxde.net/awk>`__ is a domain-specific language designed for text processing and typically used as a data extraction and reporting tool. It is very convenient to extract certain columns or sections in an ASCII-format file using awk given a specified field separator. By default, fields are separated by a space. We can change that with the --field-separator option, which sets the -F‘S’ variable S to whatever you want it to be, e.g., comma ``,`` semicolon ``;`` dash ``-`` or other describable characters. Here are two expamles showing the way that we usually use to extract location, magnitude, and origin time from a common catalogue file. 

.. code-block:: console

    # extract the depth (fourth) and magnitude (fifth) columns
    $ awk '{print $4,$5}' events.csv  # Here, the division character is the default setting ``empty space`` 
    39.32 6.5
    23.83 4.5
    9.33 3.3

    # extract the origin time (first) column and reformat it into yyyymmdd hhmmsss
    $ awk '{print $1}' events.csv | awk -F'T' '{print $1}' | awk -F'-' '{print $1$2$3}' > origin.temp1   #Here, ``|`` is pipelines, using it, the standard output of one command is fed into the standard input of another.
    $ cat origin.temp1
    20190901
    20130311
    20100109
    $ awk '{print $1}' events.csv | awk -F'T' '{print $2}' | awk -F':' '{print $1$2$3}' | awk -F'Z' '{print $1}' | awk -F'.' '{print $1}'  > origin.temp2
    $ cat origin.temp2
    103032
    122101
    010110
    $ paste origin.temp1 origin.temp2 > origin
    $ cat origin 
    20190901	103032
    20130311	122101
    20100109	010110


printf
++++++

`printf <https://man.linuxde.net/printf>`__ is a command in Linux used to display the given string, number or any other format specifier on the terminal window. It works the same way as “printf” works in programming languages like C.

.. code-block:: console

    # extract the depth (fourth) columns with keeping one decimal place
    $ awk '{printf"%.1f\n",$4}' events.csv  
    39.3
    23.8
    9.3


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
    $ paste origin.temp1 origin.temp2 > origin
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


wc
++

`wc <https://man.linuxde.net/wc>`__ is used to find out number of lines, word count, byte and characters count in the files specified in the file arguments.



File Compressing
----------------

tar
+++

`tar <https://man.linuxde.net/tar>`__ is a command standing for tape archive, used to create archive and extract the archive files. We can use Linux tar command to create compressed or uncompressed archive files and also maintain and modify them. Often used commands include ``-x`` (extract the archive), ``-v`` (displays verbose information), ``-f`` (creates archive with given filename), ``-z`` (zip, tells tar command that create tar file using gzip), ``-j`` (filter archive tar file using tbzip).


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


touch
+++++

`touch <https://man.linuxde.net/touch>`__ is a command used to create a file without any content (empty file).



head
++++

`head <https://man.linuxde.net/head>`__ is the complementary of Tail command, as the name implies, it prints the top N number of data of the given input. By default, it prints the first 10 lines of the specified files. Often used option is ``-n num`` (Prints the first ‘num’ lines instead of first 10 lines. num is mandatory to be specified in command otherwise it displays an error). 

.. code-block:: console

    # show the first two lines of content of a catalog file, e.g., events.csv
    $ cat events.csv | head -n 2
    2019-09-01T10:30:32.320Z  32.398   90.841  39.32  6.5  MW
    2013-03-11T12:21:01.149Z  19.691  120.933  23.83  4.5  MW


tail
++++

`tail <https://man.linuxde.net/tail>`__ is the complementary of Head command, as the name implies, it prints the last N number of data of the given input. By default it prints the last 10 lines of the specified files. Often used option is ``-n num`` (Prints the last ‘num’ lines instead of last 10 lines. num is mandatory to be specified in command otherwise it displays an error). 

.. code-block:: console

    # show the last two lines of content of a catalog file, e.g., events.csv
    $ cat events.csv | tail -n 2
    2013-03-11T12:21:01.149Z  19.691  120.933  23.83  4.5  MW
    2010-01-09T01:01:10.921Z  51.582  110.850   9.33  3.3  MB


which
+++++
``TODO``


locate
++++++
``TODO``


sed
+++
``TODO``


