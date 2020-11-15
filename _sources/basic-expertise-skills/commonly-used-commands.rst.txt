Commonly-used Commands
======================

Data Processing
---------------

awk
+++

`awk <https://man.linuxde.net/awk>`__ is a domain-specific language designed for text processing and typically used as a data extraction and reporting tool.

.. code-block:: console

    # check events.csv
    $ cat events.csv
    2019-09-01T10:30:32.320Z  32.398   90.841  39.32  6.5  MW
    2013-03-11T12:21:01.149Z  19.691  120.933  23.83  4.5  MW
    2010-01-09T01:01:10.921Z  51.582  110.850   9.33  3.3  MB

    # extract the first and fifth columns
    $ awk '{print $1,$5}' events.csv
    2019-09-01T10:30:32.320Z 6.5
    2013-03-11T12:21:01.149Z 4.5
    2010-01-09T01:01:10.921Z 3.3


cut
+++

``TODO``


grep
++++

``TODO``


wc
++

``TODO``


sort
++++

``TODO``


uniq
++++

``TODO``


File Compressing
----------------

tar
+++
``TODO``


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


