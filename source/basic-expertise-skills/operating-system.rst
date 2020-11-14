Operating System
================

Commonly-used Operation Systems
-------------------------------

There are three most commonly used operation systems for personal computers:

- Microsoft Windows
- Apple macOS
- Linux (CentOS, Red Hat, Ubuntu, Debian, ...)

Most seismologists choose macOS or Linux as their primary operation system for daily researches, because both macOS and Linux provide easy access to toolchains needed in programming, and most existing programs/codes/packages for seismological researches were written on Linux and only work on Linux and macOS. As a beginner, you should use macOS or Linux. For Windows 10 users, you can install Windows Subsystem for Linux (WSL) on your Windows 10, just like installing any other Windows softwares. It may behave very similar to the pure Linux OS, but I have never tried it.

Please refer to the following references for a brief introduction about them:

- `Operating system <https://core-man.github.io/blog/post/intro-material-seismology/#11-operating-system>`__
- `Operating system <https://sites.google.com/msu.edu/wei-seismic-training/seismic-analysis-101?authuser=0>`__


Windows Subsystem for Linux
---------------------------

System Requirements
+++++++++++++++++++

We can use Linux subsystem in Windows10, i.e., Windows Subsystem for Linux (WSL). Firstly, we have to update the windows system. Please check the following official document for the system version requirement. If the systeme version is a little low, please refer to `Update Assistant <https://support.microsoft.com/en-us/help/3159635/windows-10-update-assistant>`_.

WSL now has two versions, WSL1 and WLS2. Please check their `difference <https://docs.microsoft.com/en-us/windows/wsl/compare-versions>`_. You can use WSL2.


Install
+++++++

Please refer `offcial docs <https://docs.microsoft.com/en-us/windows/wsl/install-win10>`_ and `chinese doc <https://blog.walterlv.com/post/how-to-install-wsl2.html#%E7%AC%AC%E4%B8%80%E6%AD%A5%E5%90%AF%E7%94%A8%E8%99%9A%E6%8B%9F%E6%9C%BA%E5%B9%B3%E5%8F%B0%E5%92%8C-linux-%E5%AD%90%E7%B3%BB%E7%BB%9F%E5%8A%9F%E8%83%BD>`_ to install WSL.


Usage
+++++

When WSL is installed, type ``wsl`` in **Windows Terminal** to start WSL.

You can get access to filesystems of Windows and WSL from each other. When you are using WSL, you can get access to files in Windows. For example, ``Disk C`` is at ``/mnt/c``. When you are at Windows, you can get access to files in WSL by typing ``explorer.exe .`` in the terminal. The last dot means the current path.

You can use WSL as you are using a Linux system. If you'd like to plot figures, you have to set ``Xserver`` with the (`manual <http://www.yuan-ji.me/%E5%A6%82%E4%BD%95%E5%9C%A8Windows-Subsystem-for-Linux-(WSL)-%E4%B8%8A%E8%BF%90%E8%A1%8CLinux-GUI-%E8%BD%AF%E4%BB%B6/>`__).

