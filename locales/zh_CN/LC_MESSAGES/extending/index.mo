��          �               �   -   �   5     .   Q  Z   �     �    �  �     o  �    \  r  c  �   �  t   �	  �  0
  $   �  3         F  U   g     �  �   �  �   �  Q  W  �  �  [  �  �   �  t   �   Creating extensions without third party tools Embedding the CPython runtime in a larger application Extending and Embedding the Python Interpreter For a detailed description of the whole Python/C API, see the separate :ref:`c-api-index`. Recommended third party tools Sometimes, rather than creating an extension that runs inside the Python interpreter as the main application, it is desirable to instead embed the CPython runtime inside a larger application. This section covers some of the details involved in doing that successfully. The Python Packaging User Guide not only covers several available tools that simplify the creation of binary extensions, but also discusses the various reasons why creating an extension module may be desirable in the first place. This document assumes basic knowledge about Python.  For an informal introduction to the language, see :ref:`tutorial-index`.  :ref:`reference-index` gives a more formal definition of the language.  :ref:`library-index` documents the existing object types, functions and modules (both built-in and written in Python) that give the language its wide application range. This document describes how to write modules in C or C++ to extend the Python interpreter with new modules.  Those modules can not only define new functions but also new object types and their methods.  The document also describes how to embed the Python interpreter in another application, for use as an extension language.  Finally, it shows how to compile and link extension modules so that they can be loaded dynamically (at run time) into the interpreter, if the underlying operating system supports this feature. This guide only covers the basic tools for creating extensions provided as part of this version of CPython. Third party tools like `Cython <http://cython.org/>`_, `cffi <https://cffi.readthedocs.io>`_, `SWIG <http://www.swig.org>`_ and `Numba <https://numba.pydata.org/>`_ offer both simpler and more sophisticated approaches to creating C and C++ extensions for Python. This section of the guide covers creating C and C++ extensions without assistance from third party tools. It is intended primarily for creators of those tools, rather than being a recommended way to create your own C extensions. `Python Packaging User Guide: Binary Extensions <https://packaging.python.org/guides/packaging-binary-extensions/>`_ Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:52+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 不使用第三方工具创建扩展 在更大的应用程序中嵌入 CPython 运行时 扩展和嵌入 Python 解释器 关于整个 Python/C API 的详细介绍，请参阅独立的 :ref:`c-api-index` 。 推荐的第三方工具 有时，不是要创建在 Python 解释器中作为主应用程序运行的扩展，而是希望将 CPython 运行时嵌入到更大的应用程序中。 本节介绍了成功完成此操作所涉及的一些细节。 “ Python Packaging User Guide ”不仅涵盖了几个简化二进制扩展创建的可用工具，还讨论了为什么首先创建扩展模块的各种原因。 本文档假设你具备有关 Python 的基本知识。有关该语言的非正式介绍，请参阅 :ref:`tutorial-index` 。 :ref:`reference-index` 给出了更正式的语言定义。 :ref:`library-index` 包含现有的对象类型、函数和模块（内置和用 Python 编写）的文档，使语言具有广泛的应用范围。 本文档描述了如何使用 C 或 C++ 编写模块以使用新模块来扩展 Python 解释器的功能。 这些模块不仅可以定义新的函数，还可以定义新的对象类型及其方法。 该文档还描述了如何将 Python 解释器嵌入到另一个应用程序中，以用作扩展语言。 最后，它展示了如何编译和链接扩展模块，以便它们可以动态地（在运行时）加载到解释器中，如果底层操作系统支持此特性的话。 本指南仅介绍了作为此 CPython 版本的一部分提供的创建扩展的基本工具。 第三方工具，如 `Cython <http://cython.org/>`_ 、 `cffi <https://cffi.readthedocs.io>`_ 、 `SWIG <http://www.swig.org>`_ 和 `Numba <https://numba.pydata.org/>`_ 提供了更简单和更复杂的方法来为 Python 创建 C 和 C ++ 扩展。 本指南的这一部分包括在没有第三方工具帮助的情况下创建 C 和 C ++ 扩展。它主要用于这些工具的创建者，而不是建议你创建自己的 C 扩展的方法。 `Python Packaging User Guide: Binary Extensions <https://packaging.python.org/guides/packaging-binary-extensions/>`_ 