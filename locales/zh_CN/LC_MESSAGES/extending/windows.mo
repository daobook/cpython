��          �               |     }  (   �  "  �  $   �  �    �  �  z  /  �  �  �   X
  �   S  #  ?    c  
  q  �   |    +  �  A    �  �   Q       �     �   �  �  z     8  &   H  	  o      y  s  �  �    W  �  U  �  �   ?"  �   =#  /  �#  	  ,%  
  6'  �   A(  �  �(  J  �*  9  �+  �   -     �-  �   �-  �   �.   A Cookbook Approach Building C and C++ Extensions on Windows Developer Studio will throw in a lot of import libraries that you do not really need, adding about 100K to your executable.  To get rid of them, use the Project Settings dialog, Link tab, to specify *ignore default libraries*.  Add the correct :file:`msvcrtxx.lib` to the list of libraries. Differences Between Unix and Windows In Unix, a shared object (:file:`.so`) file contains code to be used by the program, and also the names of functions and data that it expects to find in the program.  When the file is joined to the program, all references to those functions and data in the file's code are changed to point to the actual locations in the program where the functions and data are placed in memory. This is basically a link operation. In Unix, there is only one type of library file (:file:`.a`) which contains code from several object files (:file:`.o`).  During the link step to create a shared object file (:file:`.so`), the linker may find that it doesn't know where an identifier is defined.  The linker will look for it in the object files in the libraries; if it finds it, it will include all the code from that object file. In Windows, a dynamic-link library (:file:`.dll`) file has no dangling references.  Instead, an access to functions or data goes through a lookup table.  So the DLL code does not have to be fixed up at runtime to refer to the program's memory; instead, the code already uses the DLL's lookup table, and the lookup table is modified at runtime to point to the functions and data. In Windows, there are two types of library, a static library and an import library (both called :file:`.lib`).  A static library is like a Unix :file:`.a` file; it contains code to be included as necessary. An import library is basically used only to reassure the linker that a certain identifier is legal, and will be present in the program when the DLL is loaded.  So the linker uses the information from the import library to build the lookup table for using identifiers that are not included in the DLL.  When an application or a DLL is linked, an import library may be generated, which will need to be used for all future DLLs that depend on the symbols in the application or DLL. In Windows, using an import library is sort of like using ``import spam``; it gives you access to spam's names, but does not create a separate copy.  On Unix, linking with a library is more like ``from spam import *``; it does create a separate copy. Module authors are encouraged to use the distutils approach for building extension modules, instead of the one described in this section. You will still need the C compiler that was used to build Python; typically Microsoft Visual C++. Not every identifier is exported to the lookup table.  If you want any other modules (including Python) to be able to see your identifiers, you have to say ``_declspec(dllexport)``, as in ``void _declspec(dllexport) initspam(void)`` or ``PyObject _declspec(dllexport) *NiGetSpamData(void)``. Suppose you are building two dynamic-load modules, B and C, which should share another block of code A.  On Unix, you would *not* pass :file:`A.a` to the linker for :file:`B.so` and :file:`C.so`; that would cause it to be included twice, so that B and C would each have their own copy.  In Windows, building :file:`A.dll` will also build :file:`A.lib`.  You *do* pass :file:`A.lib` to the linker for B and C.  :file:`A.lib` does not contain code; it just contains information which will be used at runtime to access A's code. The first command created three files: :file:`spam.obj`, :file:`spam.dll` and :file:`spam.lib`.  :file:`Spam.dll` does not contain any Python functions (such as :c:func:`PyArg_ParseTuple`), but it does know how to find the Python code thanks to :file:`pythonXY.lib`. The second command created :file:`ni.dll` (and :file:`.obj` and :file:`.lib`), which knows how to find the necessary functions from spam, and also from the Python executable. There are two approaches to building extension modules on Windows, just as there are on Unix: use the :mod:`distutils` package to control the build process, or do things manually.  The distutils approach works well for most extensions; documentation on using :mod:`distutils` to build and package extension modules is available in :ref:`distutils-index`.  If you find you really need to do things manually, it may be instructive to study the project file for the :source:`winsound <PCbuild/winsound.vcxproj>` standard library module. This chapter briefly explains how to create a Windows extension module for Python using Microsoft Visual C++, and follows with more detailed background information on how it works.  The explanatory material is useful for both the Windows programmer learning to build Python extensions and the Unix programmer interested in producing software which can be successfully built on both Unix and Windows. This chapter mentions a number of filenames that include an encoded Python version number.  These filenames are represented with the version number shown as ``XY``; in practice, ``'X'`` will be the major version number and ``'Y'`` will be the minor version number of the Python release you're working with.  For example, if you are using Python 2.2.1, ``XY`` will actually be ``22``. Unix and Windows use completely different paradigms for run-time loading of code.  Before you try to build a module that can be dynamically loaded, be aware of how your system works. Using DLLs in Practice When creating DLLs in Windows, you must pass :file:`pythonXY.lib` to the linker. To build two DLLs, spam and ni (which uses C functions found in spam), you could use these commands:: Windows Python is built in Microsoft Visual C++; using other compilers may or may not work (though Borland seems to).  The rest of this section is MSVC++ specific. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:52+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 菜谱式说明 在 Windows 上构建 C 和 C++ 扩展 Developer Studio 将加入大量你并不真正需要的导入库，使你的可执行文件大小增加 100K。 要摆脱它们，请使用项目设置对话框的链接选项卡指定 *忽略默认库*。 将正确的 :file:`msvcrtxx.lib` 添加到库列表中。 Unix 和 Windows 之间的差异 在 Unix 中，一个共享对象 (:file:`.so`) 文件中包含将由程序来使用的代码，也包含在程序中可被找到的函数名称和数据。 当文件被合并到程序中时，对在文件代码中这些函数和数据的全部引用都会被改为指向程序中函数和数据在内存中所放置的实际位置。 这基本上是一个链接操作。 在 Unix 中，只存在一种库文件 (:file:`.a`)，它包含来自多个对象文件 (:file:`.o`) 的代码。 在创建共享对象文件 (:file:`.so`) 的链接阶段，链接器可能会发现它不知道某个标识符是在哪里定义的。 链接器将在各个库的对象文件中查找它；如果找到了它，链接器将会包括来自该对象文件的所有代码。 在 Windows 中，一个动态链接库 (:file:`.dll`) 文件中没有悬挂的引用。 而是通过一个查找表执行对函数或数据的访问。 因此在运行时 DLL 代码不必在运行时进行修改；相反地，代码已经使用了 DLL 的查找表，并且在运行时查找表会被修改以指向特定的函数和数据。 在 Windows 中，存在两种库类型，静态库和导入库 (扩展名都是 :file:`.lib`)。 静态库类似于 Unix 的 :file:`.a` 文件；它包含在必要时可被包括的代码。 导入库基本上仅用于让链接器能确保特定标识符是合法的，并且将在 DLL 被加载时出现于程序中。 这样链接器可使用来自导入库的信息构建查找表以便使用未包括在 DLL 中的标识符。 当一个应用程序或  DLL 被链接时，可能会生成一个导入库，它将需要被用于应用程序或 DLL 中未来所有依赖于这些符号的 DLL。 在 Windows 上，使用导入库有点像是使用 ``import spam``；它让你可以访问 spam 中的名称，但并不会创建一个单独副本。 在 Unix 上，链接到一个库更像是 ``from spam import *``；它会创建一个单独副本。 鼓励模块作者使用 distutils 方式来构建扩展模块，而不使用本节所描述的方式。 你仍将需要使用 C 编译器来构建 Python；通常为 Microsoft Visual C++。 不是每个标识符都会被导出到查找表。 如果你想要任何其他模块（包括 Python）都能看到你的标识符，你必须写上 ``_declspec(dllexport)``，就如在 ``void _declspec(dllexport) initspam(void)`` 或 ``PyObject _declspec(dllexport) *NiGetSpamData(void)`` 中一样。 假设你正在编译两个动态加载模块 B 和 C，它们应当共享另一个代码块 A。 在 Unix 上，你 *不应* 将 :file:`A.a` 传给链接器作为 :file:`B.so` 和 :file:`C.so`；那会导致它被包括两次，这样 B 和 C 将分别拥有它们自己的副本。 在 Windows 上，编译 :file:`A.dll` 将同时编译 :file:`A.lib`。 你 *应当* 将 :file:`A.lib` 传给链接器用于 B 和 C。 :file:`A.lib` 并不包含代码；它只包含将在运行时被用于访问 A 的代码的信息。 第一条命令创建了三个文件: :file:`spam.obj`, :file:`spam.dll` 和 :file:`spam.lib`。 :file:`Spam.dll` 不包含任何 Python 函数 (例如 :c:func:`PyArg_ParseTuple`)，但它通过 :file:`pythonXY.lib` 可以知道如何找到所需的 Python 代码。 第二条命令创建了 :file:`ni.dll` (以及 :file:`.obj` 和 :file:`.lib`)，它知道如何从 spam 以及 Python 可执行文件中找到所需的函数。 在 Windows 和 Unix 上构建扩展模块都有两种方式：使用 :mod:`distutils` 包来控制构建过程，或者全手动操作。 distutils 方式适用于大多数扩展；使用 :mod:`distutils` 构建和打包扩展模块的文档见 :ref:`distutils-index`。 如果你发现你确实需要手动操作，那么研究一下 :source:`winsound <PCbuild/winsound.vcxproj>` 标准库模块的项目文件可能会很有帮助。 这一章简要介绍了如何使用 Microsoft Visual C++ 创建 Python 的 Windows 扩展模块，然后再提供有关其工作机理的详细背景信息。 这些说明材料同时适用于 Windows 程序员学习构建 Python 扩展以及 Unix 程序员学习如何生成在 Unix 和 Windows 上均能成功构建的软件。 这一章提及了多个包括已编码 Python 版本号的文件名。 这些文件名以显示为 ``XY`` 的版本号来代表；在实践中，``'X'`` 将为你所使用的 Python 发布版的主版本号而 ``'Y'`` 将为次版本号。 例如，如果你所使用的是 Python 2.2.1，``XY`` 将为 ``22``。 Unix 和 Windows 对于代码的运行时加载使用了完全不同的范式。 在你尝试构建可动态加载的模块之前，要先了解你所用系统是如何工作的。 DLL 的实际使用 当在 Windows 中创建 DLL 时，你必须将 :file:`pythonXY.lib` 传给链接器。 要编译两个 DLL，spam 和 ni (会使用 spam 中找到的 C 函数)，你应当使用以下命令:: Windows 版 Python 是用 Microsoft Visual C++ 编译的；使用其他编译器可能行也可能不行（但 Borland 看来是可以的）。 这一节的剩余部分只适用于 MSVC++。 