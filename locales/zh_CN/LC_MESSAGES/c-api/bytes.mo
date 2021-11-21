��    =                    �     �  
   �  
   �  
   	  
             +  
   7  
   B  
   M  
   X     c     o  $   {  &   �  �  �  �   {            �   '  x  �  $   <
  $   a
  %   �
  %   �
  $   �
  $   �
  %     %   B  u   h     �  U   �  �   F  D   �  @   %  f   f  
   �  �   �  �   �  �  ?  R   0  3   �  k   �  ~   #  �   �  m  '  �  �  �   &     �  r   �  �   r  D   �     >     C     P     ]     a     f     m     z  �  �     H  
   T  
   _  
   j  
   u     �     �  
   �  
   �  
   �  
   �     �     �  *   �  3     �  ;  �   �     �     �  �   �  C  6      z       �   !   �   !   �        !      !!  !   B!  !   d!  q   �!     �!  N   "  �   T"  C   �"  ?   2#  V   r#  
   �#  �   �#  �   �$  �  4%  6   '  *   N'  `   y'  �   �'  �   ^(  M  �(  �  3*  �   �+     |,  z   �,     -  I   �-     �-     �-     �-     �-  	   �-     .     .     .   *n/a* :attr:`%%` :attr:`%c` :attr:`%d` :attr:`%i` :attr:`%ld` :attr:`%lu` :attr:`%p` :attr:`%s` :attr:`%u` :attr:`%x` :attr:`%zd` :attr:`%zu` A null-terminated C character array. A single byte, represented as a C int. A way to resize a bytes object even though it is "immutable". Only use this to build up a brand new bytes object; don't use this if the bytes may already be known in other parts of the code.  It is an error to call this function if the refcount on the input bytes object is not one. Pass the address of an existing bytes object as an lvalue (it may be written into), and the new size desired.  On success, *\*bytes* holds the resized bytes object and ``0`` is returned; the address in *\*bytes* may differ from its input value.  If the reallocation fails, the original bytes object at *\*bytes* is deallocated, *\*bytes* is set to ``NULL``, :exc:`MemoryError` is set, and ``-1`` is returned. An unrecognized format character causes all the rest of the format string to be copied as-is to the result object, and any extra arguments discarded. Bytes Objects Comment Create a new bytes object in *\*bytes* containing the contents of *newpart* appended to *bytes*.  This version decrements the reference count of *newpart*. Create a new bytes object in *\*bytes* containing the contents of *newpart* appended to *bytes*; the caller will own the new reference.  The reference to the old value of *bytes* will be stolen.  If the new object cannot be created, the old reference to *bytes* will still be discarded and the value of *\*bytes* will be set to ``NULL``; the appropriate exception will be set. Equivalent to ``printf("%d")``. [1]_ Equivalent to ``printf("%i")``. [1]_ Equivalent to ``printf("%ld")``. [1]_ Equivalent to ``printf("%lu")``. [1]_ Equivalent to ``printf("%u")``. [1]_ Equivalent to ``printf("%x")``. [1]_ Equivalent to ``printf("%zd")``. [1]_ Equivalent to ``printf("%zu")``. [1]_ For integer specifiers (d, u, ld, lu, zd, zu, i, x): the 0-conversion flag has effect even when a precision is given. Format Characters Identical to :c:func:`PyBytes_FromFormat` except that it takes exactly two arguments. If *length* is ``NULL``, the bytes object may not contain embedded null bytes; if it does, the function returns ``-1`` and a :exc:`ValueError` is raised. Macro form of :c:func:`PyBytes_AsString` but without error checking. Macro form of :c:func:`PyBytes_Size` but without error checking. Previously, :exc:`TypeError` was raised when embedded null bytes were encountered in the bytes object. Py_ssize_t Return a new bytes object with a copy of the string *v* as value and length *len* on success, and ``NULL`` on failure.  If *v* is ``NULL``, the contents of the bytes object are uninitialized. Return a new bytes object with a copy of the string *v* as value on success, and ``NULL`` on failure.  The parameter *v* must not be ``NULL``; it will not be checked. Return a pointer to the contents of *o*.  The pointer refers to the internal buffer of *o*, which consists of ``len(o) + 1`` bytes.  The last byte in the buffer is always null, regardless of whether there are any other null bytes.  The data must not be modified in any way, unless the object was just created using ``PyBytes_FromStringAndSize(NULL, size)``. It must not be deallocated.  If *o* is not a bytes object at all, :c:func:`PyBytes_AsString` returns ``NULL`` and raises :exc:`TypeError`. Return the bytes representation of object *o* that implements the buffer protocol. Return the length of the bytes in bytes object *o*. Return the null-terminated contents of the object *obj* through the output variables *buffer* and *length*. Return true if the object *o* is a bytes object or an instance of a subtype of the bytes type.  This function always succeeds. Return true if the object *o* is a bytes object, but not an instance of a subtype of the bytes type.  This function always succeeds. Take a C :c:func:`printf`\ -style *format* string and a variable number of arguments, calculate the size of the resulting Python bytes object and return a bytes object with the values formatted into it.  The variable arguments must be C types and must correspond exactly to the format characters in the *format* string.  The following format characters are allowed: The buffer refers to an internal buffer of *obj*, which includes an additional null byte at the end (not counted in *length*).  The data must not be modified in any way, unless the object was just created using ``PyBytes_FromStringAndSize(NULL, size)``.  It must not be deallocated.  If *obj* is not a bytes object at all, :c:func:`PyBytes_AsStringAndSize` returns ``-1`` and raises :exc:`TypeError`. The hex representation of a C pointer. Mostly equivalent to ``printf("%p")`` except that it is guaranteed to start with the literal ``0x`` regardless of what the platform's ``printf`` yields. The literal % character. These functions raise :exc:`TypeError` when expecting a bytes parameter and are called with a non-bytes parameter. This instance of :c:type:`PyTypeObject` represents the Python bytes type; it is the same object as :class:`bytes` in the Python layer. This subtype of :c:type:`PyObject` represents a Python bytes object. Type const char\* const void\* int long size_t unsigned int unsigned long Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: 昌伟 任 <small_pupil@126.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 *不适用* :attr:`%%` :attr:`%c` :attr:`%d` :attr:`%i` :attr:`%ld` :attr:`%lu` :attr:`%p` :attr:`%s` :attr:`%u` :attr:`%x` :attr:`%zd` :attr:`%zu` 以 null 为终止符的 C 字符数组。 一个字节，被表示为一个 C 语言的整型 改变字节串大小的一种方式，即使其为“不可变对象”。 此方式仅用于创建全新的字节串对象；如果字节串在代码的其他部分已知则不可使用此方式。 如果输入字节串对象的引用计数不为一则调用此函数将报错。 传入一个现有字节串对象的地址作为 lvalue（它可能会被写入），并传入希望的新大小。 当成功时，*\*bytes* 将存放改变大小后的字节串对象并返回 ``0``；*\*bytes* 中的地址可能与其输入值不同。 如果重新分配失败，则 *\*bytes* 上的原字节串对象将被撤销分配，*\*bytes* 会被设为 ``NULL``，同时设置 :exc:`MemoryError` 并返回 ``-1``。 无法识别的格式字符会导致将格式字符串的其余所有内容原样复制到结果对象，并丢弃所有多余的参数。 bytes 对象 注释 在 *\*bytes* 中创建新的字节串对象，其中包含添加到 *bytes* 的 *newpart* 的内容。 此版本会减少 *newpart* 的引用计数。 在 *\*bytes* 中创建新的字节串对象，其中包含添加到 *bytes* 的 *newpart* 的内容；调用者将获得新的引用。 对 *bytes* 原值的引用将被收回。 如果无法创建新对象，对 *bytes* 的旧引用仍将被丢弃且 *\*bytes* 的值将被设为 ``NULL``；并将设置适当的异常。 相当于 ``printf("%d")``. [1]_ 相当于 ``printf("%i")``. [1]_ 相当于 ``printf("%ld")``. [1]_ 相当于 ``printf("%lu")``. [1]_ 相当于 ``printf("%u")``. [1]_ 相当于 ``printf("%x")``. [1]_ 相当于 ``printf("%zd")``. [1]_ 相当于 ``printf("%zu")``. [1]_ 对于整数说明符（d，u，ld，lu，zd，zu，i，x）：当给出精度时，0 转换标志是有效的。 格式字符 与 :c:func:`PyBytes_FromFormat` 完全相同，除了它需要两个参数。 如果 *length* 为 ``NULL``，字节串对象就不包含嵌入的空字节；如果包含，则该函数将返回 ``-1`` 并引发 :exc:`ValueError`。 宏版本的 :c:func:`PyBytes_AsString` 但是不带错误检测。 宏版本的 :c:func:`PyBytes_Size` 但是不带错误检测。 以前，当字节串对象中出现嵌入的空字节时将引发 :exc:`TypeError`。 Py_ssize_t 成功时返回一个以字符串 *v* 的副本为值且长度为 *len* 的新字节串对象，失败时返回 ``NULL``。 如果 *v* 为 ``NULL``，则不初始化字节串对象的内容。 成功时返回一个以字符串 *v* 的副本为值的新字节串对象，失败时返回 ``NULL``。 形参 *v* 不可为 ``NULL``；它不会被检查。 返回对应 *o* 的内容的指针。 该指针指向 *o* 的内部缓冲区，其中包含 ``len(o) + 1`` 个字节。 缓冲区的最后一个字节总是为空，不论是否存在其他空字节。 该数据不可通过任何形式来修改，除非是刚使用 ``PyBytes_FromStringAndSize(NULL, size)`` 创建该对象。 它不可被撤销分配。 如果 *o* 根本不是一个字节串对象，则 :c:func:`PyBytes_AsString` 将返回 ``NULL`` 并引发 :exc:`TypeError`。 返回字节表示实现缓冲区协议的对象*o*。 返回字节对象*o*中字节的长度。 通过输出变量 *buffer* 和 *length* 返回以 null 为终止符的对象 *obj* 的内容。 如果对象 *o* 是一个 bytes 对象或者 bytes 类型的子类型的实例则返回真值。 此函数总是会成功执行。 如果对象 *o* 是一个 bytes 对象但不是 bytes 类型的子类型的实例则返回真值。 此函数总是会成功执行。 接受一个 C :c:func:`printf` 风格的 *format* 字符串和可变数量的参数，计算结果 Python 字节串对象的大小并返回参数值经格式化后的字节串对象。 可变数量的参数必须均为 C 类型并且必须恰好与 *format* 字符串中的格式字符相对应。 允许使用下列格式字符串: 该缓冲区指向 *obj* 的内部缓冲，它的末尾包含一个额外的空字节（不算在 *length* 当中）。 该数据不可通过任何方式来修改，除非是刚使用 ``PyBytes_FromStringAndSize(NULL, size)`` 创建该对象。 它不可被撤销分配。 如果 *obj* 根本不是一个字节串对象，则 :c:func:`PyBytes_AsStringAndSize` 将返回 ``-1`` 并引发 :exc:`TypeError`。 一个 C 指针的十六进制表示形式。 基本等价于 ``printf("%p")`` 但它会确保以字面值 ``0x`` 开头，不论系统平台上 ``printf`` 的输出是什么。 文字%字符。 当期望带一个字节串形参但却带一个非字节串形参被调用时，这些函数会引发 :exc:`TypeError`。 :c:type:`PyTypeObject` 的实例代表一个 Python 字节类型，在 Python 层面它与 :class:`bytes` 是相同的对象。 这种 :c:type:`PyObject` 的子类型表示一个 Python 字节对象。 类型 const char\* const void\* int 长整型 size_t unsigned int unsigned long 