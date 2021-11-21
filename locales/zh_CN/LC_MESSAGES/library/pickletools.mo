��          �               <  -   =  2   k  3   �     �     �  B   �  2   =  n  p     �  d  �  �   [     (  9   A  �  {  �  	  [   �
  L   /  �  |  +   7  0   c  3   �     �     �  J   �  '   3  L  [     �  M  �  �        �  3   �  f  !  �  �  \   "  E      **Source code:** :source:`Lib/pickletools.py` :mod:`pickletools` --- Tools for pickle developers Annotate each line with a short opcode description. Command line options Command line usage For example, with a tuple ``(1, 2)`` pickled in file ``x.pickle``: Name of a file where the output should be written. Outputs a symbolic disassembly of the pickle to the file-like object *out*, defaulting to ``sys.stdout``.  *pickle* can be a string or a file-like object.  *memo* can be a Python dictionary that will be used as the pickle's memo; it can be used to perform disassemblies across multiple pickles created by the same pickler. Successive levels, indicated by ``MARK`` opcodes in the stream, are indented by *indentlevel* spaces.  If a nonzero value is given to *annotate*, each opcode in the output is annotated with a short description.  The value of *annotate* is used as a hint for the column where annotation should start. Programmatic Interface Provides an :term:`iterator` over all of the opcodes in a pickle, returning a sequence of ``(opcode, arg, pos)`` triples.  *opcode* is an instance of an :class:`OpcodeInfo` class; *arg* is the decoded value, as a Python object, of the opcode's argument; *pos* is the position at which this opcode is located. *pickle* can be a string or a file-like object. Returns a new equivalent pickle string after eliminating unused ``PUT`` opcodes. The optimized pickle is shorter, takes less transmission time, requires less storage space, and unpickles more efficiently. The *annotate* argument. The number of blanks by which to indent a new MARK level. This module contains various constants relating to the intimate details of the :mod:`pickle` module, some lengthy comments about the implementation, and a few useful functions for analyzing pickled data.  The contents of this module are useful for Python core developers who are working on the :mod:`pickle`; ordinary users of the :mod:`pickle` module probably won't find the :mod:`pickletools` module relevant. When invoked from the command line, ``python -m pickletools`` will disassemble the contents of one or more pickle files.  Note that if you want to see the Python object stored in the pickle rather than the details of pickle format, you may want to use ``-m pickle`` instead. However, when the pickle file that you want to examine comes from an untrusted source, ``-m pickletools`` is a safer option because it does not execute pickle bytecode. When more than one pickle file are specified, print given preamble before each disassembly. When multiple objects are disassembled, preserve memo between disassemblies. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:11+0000
Last-Translator: ppcfish <ppcfish@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **源代码:** :source:`Lib/pickletools.py` :mod:`pickletools` --- pickle 开发者工具集 使用简短的操作码描述来标注每一行。 命令行选项 命令行语法 例如，对于一个封存在文件 ``x.pickle`` 中的元组 ``(1, 2)``: 输出应当写入到的文件名称。 将 pickle 的符号化反汇编数据输出到文件类对象 *out*，默认为 ``sys.stdout``。 *pickle* 可以是一个字符串或一个文件类对象。 *memo* 可以是一个将被用作 pickle 的备忘记录的 Python 字典；它可被用来对由同一封存器创建的多个封存对象执行反汇编。 由 ``MARK`` 操作码指明的每个连续级别将会缩进 *indentlevel* 个空格。 如果为 *annotate* 指定了一个非零值，则输出中的每个操作码将以一个简短描述来标注。 *annotate* 的值会被用作标注所应开始的列的提示。 编程接口 提供包含 pickle 中所有操作码的 :term:`iterator`，返回一个 ``(opcode, arg, pos)`` 三元组的序列。 *opcode* 是 :class:`OpcodeInfo` 类的一个实例；*arg* 是 Python 对象形式的 opcode 参数的已解码值；*pos* 是 opcode 所在的位置。 *pickle* 可以是一个字符串或一个文件类对象。 在消除未使用的 ``PUT`` 操作码之后返回一个新的等效 pickle 字符串。 优化后的 pickle 将更为简短，耗费更为的传输时间，要求更少的存储空间并能更高效地解封。 *annotate* 参数。 一个新的 MARK 层级所需缩进的空格数。 此模块包含与 :mod:`pickle` 模块内部细节有关的多个常量，一些关于具体实现的详细注释，以及一些能够分析封存数据的有用函数。 此模块的内容对需要操作 :mod:`pickle` 的 Python 核心开发者来说很有用处；:mod:`pickle` 的一般用户则可能会感觉 :mod:`pickletools` 模块与他们无关。 当从命令行发起调用时，``python -m pickletools`` 将对一个或更多 pickle 文件的内容进行拆解。 请注意如果你查看 pickle 中保存的 Python 对象而非 pickle 格式的细节，你可能需要改用 ``-m pickle``。 但是，当你想检查的 pickle 文件来自某个不受信任的源时，``-m pickletools`` 是更安全的选择，因为它不会执行 pickle 字节码。 当指定一个以上的 pickle 文件时，在每次反汇编之前打印给定的前言。 当反汇编多个对象时，保留各个反汇编的备忘记录。 