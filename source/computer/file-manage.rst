File Management
===============

File Management
---------------

- **File Management:** https://blog.seisman.info/file-organization/

I'd like to introduce how I manage the files in my computers. I have two computers:

1. HP workstation: CentOS 7 installed and for researches only.
2. macOS: reading, writing, entertainment and some simple researches


Files and Fold in Linux
+++++++++++++++++++++++

``$HOME`` directory:

.. code-block:: bash

   $ tree -dlC -L 1 ~/
    /home/coreman/
    ├── backup            # original codes downloaded from websites
    ├── bin               # some simple binary files and scripts
    ├── Codes             # codes written by myself
    ├── Datas             # dataset that will not usually revised
    ├── Desktop           # my desktop
    ├── Downloads         # default downloading directory for web browser
    ├── Nutstore          # Nustore folder
    ├── Nutstore Files    # Nustore folder
    ├── Projects          # I put all my projects here
    ├── Scripts           # some general scripts written by myself
    ├── src.import        # codes downloaded from websites
    ├── Trash             # I move files here and then removing them
    └── workspace         # I perform some tests in this directory


``/opt/`` directory: I put some large softwares here.

.. code-block:: bash

   $ tree -dlC -L 1 /opt
    /opt
    ├── GMT-4.5.13
    ├── GMT-5.4.4
    ├── GMT6
    ├── julia-1.4.2
    ├── Matlab2019a
    ├── SAC
    ├── sod-3.2.10
    └── TauP-2.4.5


Sometimes, I have to download many data which are to large to be stored in my computer. I will put them in a portable drive.


Files and Fold in macOS
+++++++++++++++++++++++

.. code-block:: bash

   $ tree -L 1 ~/work
    /Users/coreman/work
    ├── 1-book          # books
    ├── 2-paper         # papers
    ├── 3-course        # materials of courses and workshops
    ├── 4-research      # some notes and ideas about my researches
    ├── 5-report        # ppts of others' and my reports
    ├── 6-publication   # all my publications
    ├── 7-meeting       # conferences
    ├── 8-software      # some codes
    ├── 9-websites      # my websites
    ├── 10-document     # my documents
    ├── 11-collections  # some useful and funny resources
    └── 12-projects     # my projects


File Backup
-----------

- **File backup:**  https://core-man.github.io/blog/post/backup/

It is very dangerous to play with codes and data without backup. We may sometimes remove the files by mistakes or the computer may be broken. Please refer to the above reference when you think you have to backup your files.


Reading & Writing
-----------------

- **Scientific reading and writing experience:** https://core-man.github.io/blog/post/reading-writing/

You may refer the above reference for scientific reading and writing.

