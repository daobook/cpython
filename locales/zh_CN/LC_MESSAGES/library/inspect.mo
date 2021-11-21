��    c      4              L  )   M  '   w  	   �     �     �     �     �     �     �  ;  �  �  8  �   �	     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
  
   �
           	               '     -     9     E  	   M     W     c     r     {     �  	   �     �     �  
   �     �     �     �  9   �  	        !     *     2  	   ;  
   E     P  3   e     �  
   �     �  	   �     �     �     �     �  '   �               '  3   0  	   d     n     v  
        �  3   �     �     �     �     �  2   �  .   +  /   Z  &   �  ,   �  )   �  '        0  (   J     s     �     �     �  	   �     �  	   �  @   �  '     /   9  B   i  !   �  $   �  �  �  '   �     �     �                    %     -     4  �   ;  S       n     �     �                    +     3     <     E     Q  
   `     k     t     �     �     �     �     �     �  	   �     �     �     �     �     �  	               
   &     1     >     J  6   O     �     �     �     �  	   �  
   �     �  *   �       
          	        '     /     8     A  &   I     p     w     �     �     �     �     �  
   �     �  <        ?     X     i     z  '   �  -   �  !   �     �          7  $   V     {  !   �     �  !   �     �     �  	               3     !   S  !   u  8   �     �     �   **Source code:** :source:`Lib/inspect.py` :mod:`inspect` --- Inspect live objects Attribute Classes and functions Command Line Interface Description For example: Meaning Name The :func:`getmembers` function retrieves the members of an object such as a class or module. The functions whose names begin with "is" are mainly provided as convenient choices for the second argument to :func:`getmembers`. They also help you determine when you can expect to find the following special attributes: The :mod:`inspect` module provides several useful functions to help get information about live objects such as modules, classes, methods, functions, tracebacks, frame objects, and code objects.  For example, it can help you examine the contents of a class, retrieve the source code of a method, extract and format the argument list for a function, or get all the information you need to display a detailed traceback. There are four main kinds of services provided by this module: type checking, getting source code, inspecting classes and functions, and examining the interpreter stack. Type Types and members __annotations__ __code__ __defaults__ __doc__ __file__ __func__ __globals__ __kwdefaults__ __module__ __name__ __qualname__ __self__ builtin class co_argcount co_cellvars co_code co_consts co_filename co_firstlineno co_flags co_freevars co_kwonlyargcount co_lnotab co_name co_names co_nlocals co_stacksize co_varnames code code object containing compiled function :term:`bytecode` coroutine cr_await cr_code cr_frame cr_origin cr_running documentation string encoded mapping of line numbers to bytecode indices f_back f_builtins f_code f_globals f_lasti f_lineno f_locals f_trace filename (missing for built-in modules) frame frame object at this level function function object containing implementation of method generator gi_code gi_frame gi_running gi_yieldfrom instance to which this method is bound, or ``None`` is the generator running? method module name name of file in which this code object was created name of module in which this class was defined name of module in which this method was defined name with which this class was defined name with which this code object was defined name with which this function was defined name with which this method was defined number of local variables original name of this function or method qualified name string of raw compiled bytecode tb_frame tb_lasti tb_lineno tb_next traceback tuple of any default values for positional or keyword parameters tuple of constants used in the bytecode tuple of names of arguments and local variables tuple of names of cell variables (referenced by containing scopes) tuple of names of local variables virtual machine stack space required Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:08+0000
Last-Translator: Jiuh-star <jiuh.star@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **源代码:** :source:`Lib/inspect.py` :mod:`inspect` --- 检查对象 属性 类与函数 命令行界面 描述 例如: 含意 名称 :func:`getmembers` 函数获取对象的成员，例如类或模块。函数名以"is"开始的函数主要作为 :func:`getmembers` 的第2个参数使用。它们也可用于判定某对象是否有如下的特殊属性: :mod:`inspect` 模块提供了一些有用的函数帮助获取对象的信息，例如模块、类、方法、函数、回溯、帧对象以及代码对象。例如它可以帮助你检查类的内容，获取某个方法的源代码，取得并格式化某个函数的参数列表，或者获取你需要显示的回溯的详细信息。 该模块提供了4种主要的功能：类型检查、获取源代码、检查类与函数、检查解释器的调用堆栈。 类型 类型和成员 __annotations__ __code__ __defaults__ __doc__ __file__ __func__ __globals__ __kwdefaults__ __module__ __name__ __qualname__ __self__ builtin class -- 类 co_argcount co_cellvars co_code co_consts co_filename co_firstlineno co_flags co_freevars co_kwonlyargcount co_lnotab co_name co_names co_nlocals co_stacksize co_varnames code 包含已编译函数的代码对象 :term:`bytecode`  coroutine -- 协程 cr_await cr_code cr_frame cr_origin cr_running 文档字符串 编码的行号到字节码索引的映射 f_back f_builtins f_code f_globals f_lasti f_lineno f_locals f_trace 文件名(内置模块没有文件名) 框架 此级别的框架对象 function -- 函数 实现该方法的函数对象 generator -- 生成器 gi_code gi_frame gi_running gi_yieldfrom 该方法被绑定的实例，若没有绑定则为 ``None`` 生成器在运行吗？ method -- 方法 module -- 模块 名称 创建此代码对象的文件的名称 该类型被定义时所在的模块的名称 定义此方法的模块的名称 类定义时所使用的名称 定义此代码对象的名称 用于定义此函数的名称 该方法定义时所使用的名称 局部变量的数量 此函数或方法的原始名称 qualified name -- 限定名称 原始编译字节码的字符串 tb_frame tb_lasti tb_lineno tb_next 回溯 所有位置或关键字参数的默认值的元组 字节码中使用的常量元组 参数名和局部变量的元组 单元变量名称的元组(通过包含作用域引用) 局部变量名称的元组 需要虚拟机堆栈空间 