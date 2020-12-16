SAC
===

Seismic Analysis Code (SAC) is one of the most commonly used seismic data processing and analysis software in seismological community.

- **Homepage**: http://ds.iris.edu/ds/nodes/dmc/software/downloads/sac/
- **Install**:

    - Linux: https://seisman.github.io/SAC_Docs_zh/introduction/linux-install/
    - maxOS: https://seisman.github.io/SAC_Docs_zh/introduction/macOS-install/
    
Those who use WSL have to install **X Window System**. Please refer to one `Chinese manual <http://www.yuan-ji.me/%E5%A6%82%E4%BD%95%E5%9C%A8Windows-Subsystem-for-Linux-(WSL)-%E4%B8%8A%E8%BF%90%E8%A1%8CLinux-GUI-%E8%BD%AF%E4%BB%B6/>`__. You may try different X Servers, e.g., ``VcXsrv``.


Checklist
---------

- Understand the file format of a SAC file
- Understand the meaning of important SAC headers
- commonly used SAC commands: ``read``, ``write``, ``bandpass``, ``rmean``, ``rtrend``, ``taper``, ``plot1``, ``plot2``, ``plotpk``
- How to read and write SAC files in your own Python/MATLAB/C/Fortran programs


Free Online Resources
---------------------

- A tutorial by Dr. Dongdong Tian: `SAC-tutorial.pdf <https://drive.google.com/file/d/1MwziNHLCx0kQ0EV0mv4zluQTUOcmBNeR/view>`__ and `demo data <https://drive.google.com/file/d/1DlF67Bx4hDTG2Qy7Uz3h_u8pBp1NBMyu/view>`__.
- The official SAC Manual: https://ds.iris.edu/files/sac-manual/
- A tutorial by Prof. Zhigang Peng from Georgia Tech: http://geophysics.eas.gatech.edu/people/zpeng/Teaching/SAC_Tutorial/
- The Chinese SAC Reference Manual: https://seisman.github.io/SAC_Docs_zh. Although this manual is written in Chinese, it's better than the official manual, at least for some chapters and sections. The manual provides more detailed descriptions on data processing to help beginners using SAC correctly. You can use Google Translate to translate it to English. For a new SAC user, you can quickly look through the first four sections. You can learn details later when you use it to do real data processing.

    - `SAC brief introduction <https://seisman.github.io/SAC_Docs_zh/introduction/>`_
    - `SAC basis <https://seisman.github.io/SAC_Docs_zh/basis/>`_
    - `SAC format <https://seisman.github.io/SAC_Docs_zh/fileformat/>`_
    - `SAC data processing <https://seisman.github.io/SAC_Docs_zh/data-process/>`_

Non-free Resources
------------------

- The Seismic Analysis Code: A Primer and User's Guide: https://www.amazon.com/Seismic-Analysis-Code-Primer-Users-ebook/dp/B00MY7K11A

