��          L               |   1   }   N   �   �   �   N   �  �     �  �  1   c  F   �  �   �  H   �  �   �   **Source code:** :source:`Lib/dummy_threading.py` :mod:`dummy_threading` --- Drop-in replacement for the :mod:`threading` module Be careful to not use this module where deadlock might occur from a thread being created that blocks waiting for another thread to be created.  This often occurs with blocking I/O. Python now always has threading enabled.  Please use :mod:`threading` instead. This module provides a duplicate interface to the :mod:`threading` module. It was meant to be imported when the :mod:`_thread` module was not provided on a platform. Project-Id-Version: Python 3.8
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-02-09 12:40+0000
PO-Revision-Date: 2017-02-16 23:07+0000
Last-Translator: Meng Du <alphanow@gmail.com>, 2019
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **源代码：** :source:`Lib/dummy_threading.py` :mod:`dummy_threading` ---  可直接替代 :mod:`threading` 模块。 如果线程需要阻塞等待另一个线程被创建的话，可能会造成死锁，这通常是由于阻塞 I/O 引起的。这种场景下请不要使用这个模块。 现在Python总是启用多线程。请使用 :mod:`threading` 代替。 这个模块提供了一个和 :mod:`threading` 模块重复的接口。当平台不提供 :mod:`_thread` 模块时，应导入这个模块。 