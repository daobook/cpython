��    Y      �              �     �     �     �     �     �     �  	   �  	   �     �  	   �            	                  !     '     5     :     ?     H  �   M     0  5   M  +   �  
   �     �  '   �     �  2   �          0     =     O  C  _     �	     �	  �   �	  �  �
  7   �     �     �     �     �  *   �  d       k     �     �  	   �     �  �   �  �   n  <   "  n   _  �   �  �   [  �   �  N   �  >     �   B  Q   �  �     <   �  7     4   J  ?     �   �  �   [  V  7  �   �  e   !  �   �          :     N     i  F   n     �     �     �     �     �     �     �  
   �     �     �  �  �     �     �     �     �     �     �  	   �  	   �     �  	   �     �     �  	                            -     2     7     C  �   H     
  )      -   J  
   x     �  )   �     �  0   �     �     �     �     	  "       :      M   �   `   �  "!     �"     �"     	#  	   #     #  ,   #  W   L#    �#     �$     �$  	   �$  	   �$  �   �$  �   �%  8   J&  [   �&  ~   �&  �   ^'  �   �'  >   �(  .   �(     )  ?   �)  �   �)  ,   k*  '   �*  $   �*  /   �*  �   +  �   �+  4  R,  ~   �-  D   .  x   K.     �.     �.     �.     /  F   /     \/     d/     j/     q/     z/     ~/     �/  
   �/     �/     �/   0.9.0 thru 1.2 1.2 1.3 thru 1.5.2 1.5.2 1.6 1.6.1 1991-1995 1995-1999 2.0 2.0+1.6.1 2.0.1 2.1 2.1+2.0.1 2.1.1 2.1.2 2.1.3 2.2 and above 2000 2001 2001-now 2002 All Python releases are Open Source (see https://opensource.org/ for the Open Source Definition). Historically, most, but not all, Python releases have also been GPL-compatible; the table below summarizes the various releases. Asynchronous socket services BEOPEN PYTHON OPEN SOURCE LICENSE AGREEMENT VERSION 1 BEOPEN.COM LICENSE AGREEMENT FOR PYTHON 2.0 BeOpen.com CNRI CNRI LICENSE AGREEMENT FOR PYTHON 1.6.1 CWI CWI LICENSE AGREEMENT FOR PYTHON 0.9.0 THROUGH 1.2 Cookie management Derived from Execution tracing GPL compatible? GPL-compatible doesn't mean that we're distributing Python under the GPL.  All Python licenses, unlike the GPL, let you distribute a modified version without making your changes open source. The GPL-compatible licenses make it possible to combine Python with other software that is released under the GPL; the others don't. History and License History of the software In 1995, Guido continued his work on Python at the Corporation for National Research Initiatives (CNRI, see https://www.cnri.reston.va.us/) in Reston, Virginia where he released several versions of the software. In May 2000, Guido and the Python core development team moved to BeOpen.com to form the BeOpen PythonLabs team.  In October of the same year, the PythonLabs team moved to Digital Creations (now Zope Corporation; see https://www.zope.org/).  In 2001, the Python Software Foundation (PSF, see https://www.python.org/psf/) was formed, a non-profit organization created specifically to own Python-related Intellectual Property.  Zope Corporation is a sponsoring member of the PSF. Licenses and Acknowledgements for Incorporated Software Mersenne Twister OpenSSL Owner PSF PSF LICENSE AGREEMENT FOR PYTHON |release| Python software and documentation are licensed under the :ref:`PSF License Agreement <PSF-license>`. Python was created in the early 1990s by Guido van Rossum at Stichting Mathematisch Centrum (CWI, see https://www.cwi.nl/) in the Netherlands as a successor of a language called ABC.  Guido remains Python's principal author, although it includes many contributions from others. Release Select kqueue SipHash24 Sockets Some software incorporated into Python is under different licenses. The licenses are listed with code falling under that license. See :ref:`OtherLicenses` for an incomplete list of these licenses. Starting with Python 3.8.6, examples, recipes, and other code in the documentation are dual licensed under the PSF License Agreement and the :ref:`Zero-Clause BSD license <BSD0>`. Terms and conditions for accessing or otherwise using Python Thanks to the many outside volunteers who have worked under Guido's direction to make these releases possible. The :mod:`_ctypes` extension is built using an included copy of the libffi sources unless the build is configured ``--with-system-libffi``:: The :mod:`_decimal` module is built using an included copy of the libmpdec library unless the build is configured ``--with-system-libmpdec``:: The :mod:`_random` module includes code based on a download from http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/MT2002/emt19937ar.html. The following are the verbatim comments from the original code:: The :mod:`asynchat` and :mod:`asyncore` modules contain the following notice:: The :mod:`http.cookies` module contains the following notice:: The :mod:`pyexpat` extension is built using an included copy of the expat sources unless the build is configured ``--with-system-expat``:: The :mod:`select` module contains the following notice for the kqueue interface:: The :mod:`socket` module uses the functions, :func:`getaddrinfo`, and :func:`getnameinfo`, which are coded in separate source files from the WIDE Project, http://www.wide.ad.jp/. :: The :mod:`test_epoll` module contains the following notice:: The :mod:`trace` module contains the following notice:: The :mod:`uu` module contains the following notice:: The :mod:`xmlrpc.client` module contains the following notice:: The :mod:`zlib` extension is built using an included copy of the zlib sources if the zlib version found on the system is too old to be used for the build:: The C14N 2.0 test suite in the :mod:`test` package (``Lib/test/xmltestdata/c14n-20/``) was retrieved from the W3C website at https://www.w3.org/TR/xml-c14n2-testcases/ and is distributed under the 3-clause BSD license:: The file :file:`Python/dtoa.c`, which supplies C functions dtoa and strtod for conversion of C doubles to and from strings, is derived from the file of the same name by David M. Gay, currently available from http://www.netlib.org/fp/.  The original file, as retrieved on March 16, 2009, contains the following copyright and licensing notice:: The file :file:`Python/pyhash.c` contains Marek Majkowski' implementation of Dan Bernstein's SipHash24 algorithm. It contains the following note:: The implementation of the hash table used by the :mod:`tracemalloc` is based on the cfuhash project:: This section is an incomplete, but growing list of licenses and acknowledgements for third-party software incorporated in the Python distribution. UUencode and UUdecode functions W3C C14N test suite XML Remote Procedure Calls Year ZERO-CLAUSE BSD LICENSE FOR CODE IN THE PYTHON |release| DOCUMENTATION cfuhash expat libffi libmpdec n/a no strtod and dtoa test_epoll yes zlib Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-08 15:17+0800
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: Siyuan Xu, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 0.9.0 至 1.2 1.2 1.3 至 1.5.2 1.5.2 1.6 1.6.1 1991-1995 1995-1999 2.0 2.0+1.6.1 2.0.1 2.1 2.1+2.0.1 2.1.1 2.1.2 2.1.3 2.2 及更高 2000 2001 2001 至今 2002 所有的 Python 版本都是开源的（有关开源的定义参阅 https://opensource.org/ ）。历史上，绝大多数 Python 版本是 GPL 兼容的；下表总结了各个版本情况。 异步套接字服务 BEOPEN PYTHON 开源许可协议第 1 版 用于 PYTHON 2.0 的 BEOPEN.COM 许可协议 BeOpen.com CNRI 用于 PYTHON 1.6.1 的 CNRI 许可协议 CWI 用于 PYTHON 0.9.0 至 1.2 的 CWI 许可协议 Cookie 管理 源自 执行追踪 GPL 兼容？ GPL 兼容并不意味着 Python 在 GPL 下发布。与 GPL 不同，所有 Python 许可证都允许您分发修改后的版本，而无需开源所做的更改。GPL 兼容的许可证使得 Python 可以与其它在 GPL 下发布的软件结合使用；但其它的许可证则不行。 历史和许可证 该软件的历史 1995 年，Guido 在弗吉尼亚州的国家创新研究公司（CNRI，见 https://www.cnri.reston.va.us/ ）继续他在 Python 上的工作，并在那里发布了该软件的多个版本。 2000 年五月，Guido 和 Python 核心开发团队转到 BeOpen.com 并组建了 BeOpen PythonLabs 团队。 同年十月，PythonLabs 团队转到 Digital Creations (现为 Zope Corporation；见 https://www.zope.org/)。 2001 年，Python 软件基金会 (PSF，见 https://www.python.org/psf/) 成立，这是一个专为拥有 Python 相关知识产权而创建的非营利组织。 Zope Corporation 现在是 PSF 的赞助成员。 收录软件的许可与鸣谢 Mersenne Twister OpenSSL 所有者 PSF 用于 PYTHON |release| 的 PSF 许可协议 Python 软件和文档的使用许可均基于 :ref:`PSF 许可协议 <PSF-license>`。 Python 由荷兰数学和计算机科学研究学会（CWI，见 https://www.cwi.nl/ ）的 Guido van Rossum 于 1990 年代初设计，作为一门叫做 ABC 的语言的替代品。尽管 Python 包含了许多来自其他人的贡献，Guido 仍是其主要作者。 发布版本 Select kqueue SipHash24 套接字 某些包含在 Python 中的软件是基于不同的许可。 这些许可会与相应许可之下的代码一同列出。 有关这些许可的不完整列表请参阅 :ref:`OtherLicenses`。 从 Python 3.8.6 开始，文档中的示例、操作指导和其他代码采用的是 PSF 许可协议和 :ref:`零条款 BSD 许可 <BSD0>` 的双重使用许可。 获取或以其他方式使用 Python 的条款和条件 感谢众多在 Guido 指导下工作的外部志愿者，使得这些发布成为可能。 除非使用 ``--with-system-libffi`` 配置了构建，否则 :mod:`_ctypes` 扩展都是包含 libffi源的拷贝构建的:: 除非使用 ``--with-system-libmpdec`` 配置了构建，否则 :mod:`_decimal` 模块都是用包含 libmpdec 库的拷贝构建的。 :mod:`_random` 模块包含基于 http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/MT2002/emt19937ar.html 下载的代码。以下是原始代码的完整注释（声明）： :mod:`asynchat` 和 :mod:`asyncore` 模块包含以下声明:: :mod:`http.cookies` 模块包含以下声明:: 除非使用 ``--with-system-expat`` 配置了构建，否则 :mod:`pyexpat` 扩展都是用包含 expat源的拷贝构建的:: :mod:`select` 模块关于 kqueue 的接口包含以下声明:: :mod:`socket` 模块使用 :func:`getaddrinfo` 和 :func:`getnameinfo` 函数，这些函数源代码在WIDE项目（http://www.wide.ad.jp/）的单独源文件中。 :mod:`test_epoll` 模块包含以下声明:: :mod:`trace` 模块包含以下声明:: :mod:`uu` 模块包含以下声明:: :mod:`xmlrpc.client` 模块包含以下声明:: 如果系统上找到的zlib版本太旧而无法用于构建，则使用包含 zlib源代码的拷贝来构建 :mod:`zlib` 扩展:: :mod:`test` 包中的 C14N 2.0 测试集 (``Lib/test/xmltestdata/c14n-20/``) 提取自 W3C 网站 https://www.w3.org/TR/xml-c14n2-testcases/ 并根据 3 条款版 BSD 许可证发行: :file:`Python/dtoa.c` 文件提供了C语言的 dtoa 和 strtod 函数，用于将C语言的 双精度型和字符串进行转换，由David M. Gay的同名文件派生而来，该文件当前可从http://www.netlib.org/fp/ 下载。2009年3月16日检索到的原始文件包含以下版权和许可声明:: :file:`Python/pyhash.c` 文件包含 Marek Majkowski' 对 Dan Bernstein 的SipHash24 算法的实现。它包含以下声明:: :mod:`tracemalloc` 使用的哈希表的实现基于 cfuhash项目:: 本节是Python发行版中收录的第三方软件的许可和致谢清单，该清单是不完整且不断增长的。 UUencode 与 UUdecode 函数 W3C C14N 测试套件 XML 远程过程调用 年份 ZERO-CLAUSE BSD LICENSE FOR CODE IN THE PYTHON |release| DOCUMENTATION cfuhash expat libffi libmpdec n/a 否 strtod 和 dtoa test_epoll 是 zlib 