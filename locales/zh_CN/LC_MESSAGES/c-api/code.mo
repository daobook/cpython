��          |               �      �   �   �   �   �  �   B  �   ;  �   �  ,   �  N   �  c   #  y   �  Y     �  [       p   &  �   �  �   C	  �   A
  �   �
  $     ^   �  g     R   k  W   �   Code Objects Code objects are a low-level detail of the CPython implementation. Each one represents a chunk of executable code that hasn't yet been bound into a function. For efficiently iterating over the line numbers in a code object, use `the API described in PEP 626 <https://www.python.org/dev/peps/pep-0626/#out-of-process-debuggers-and-profilers>`_. Return a new code object.  If you need a dummy code object to create a frame, use :c:func:`PyCode_NewEmpty` instead.  Calling :c:func:`PyCode_New` directly can bind you to a precise Python version since the definition of the bytecode changes often. Return a new empty code object with the specified filename, function name, and first line number.  It is illegal to :func:`exec` or :func:`eval` the resulting code object. Return the line number of the instruction that occurs on or before ``byte_offset`` and ends after it. If you just need the line number of a frame, use :c:func:`PyFrame_GetLineNumber` instead. Return the number of free variables in *co*. Return true if *co* is a :class:`code` object.  This function always succeeds. Similar to :c:func:`PyCode_New`, but with an extra "posonlyargcount" for positional-only arguments. The C structure of the objects used to describe code objects.  The fields of this type are subject to change at any time. This is an instance of :c:type:`PyTypeObject` representing the Python :class:`code` type. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 代码对象 代码对象是 CPython 实现的低级细节。 每个代表一块尚未绑定到函数中的可执行代码。 要高效地迭代一个代码对象中的行号，请使用 `PEP 626 描述的 API <https://www.python.org/dev/peps/pep-0626/#out-of-process-debuggers-and-profilers>`_。 返回一个新的代码对象。 如果你需要一个虚拟代码对象来创建一个代码帧，请使用 :c:func:`PyCode_NewEmpty`。 调用 :c:func:`PyCode_New` 直接可以绑定到准确的 Python 版本，因为字节码的定义经常变化。 返回具有指定文件名、函数名和第一行号的新空代码对象。 对于 :func:`exec` 或 :func:`eval` 生成的代码对象是非法的。 返回在 ``byte_offset`` 位置或之前以及之后发生的指令的行号。 如果你只需要一个帧的行号，请改用 :c:func:`PyFrame_GetLineNumber`。 返回 *co* 中的自由变量数。 如果 *co* 是一个 :class:`code` 对象则返回真值。 此函数总是会成功执行。 类似于 :c:func:`PyCode_New`，但带有一个额外的 "posonlyargcount" 用于仅限位置参数。 用于描述代码对象的对象的 C 结构。 此类型字段可随时更改。 这是一个 :c:type:`PyTypeObject` 实例，其表示Python的 :class:`code` 类型。 