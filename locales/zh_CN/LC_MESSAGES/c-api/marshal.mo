��          �                      �   6  Q     @   ^  N   �  w   �  �   f  �   (  T   �  �  A  i     o   �  C   �  $  8  ;  ]	  �  �
     W  �   s  k   G  9   �  P   �  z   >  �   �  �   u  X   3  �  �  k   @  q   �  B       a  #  y   Data marshalling support Marshal a :c:type:`long` integer, *value*, to *file*.  This will only write the least-significant 32 bits of *value*; regardless of the size of the native :c:type:`long` type.  *version* indicates the file format. Marshal a Python object, *value*, to *file*. *version* indicates the file format. Numeric values are stored with the least significant byte first. On error, sets the appropriate exception (:exc:`EOFError`) and returns ``-1``. On error, sets the appropriate exception (:exc:`EOFError`, :exc:`ValueError` or :exc:`TypeError`) and returns ``NULL``. Return a C :c:type:`long` from the data stream in a :c:type:`FILE*` opened for reading.  Only a 32-bit value can be read in using this function, regardless of the native size of :c:type:`long`. Return a C :c:type:`short` from the data stream in a :c:type:`FILE*` opened for reading.  Only a 16-bit value can be read in using this function, regardless of the native size of :c:type:`short`. Return a Python object from the data stream in a :c:type:`FILE*` opened for reading. Return a Python object from the data stream in a :c:type:`FILE*` opened for reading.  Unlike :c:func:`PyMarshal_ReadObjectFromFile`, this function assumes that no further objects will be read from the file, allowing it to aggressively load file data into memory so that the de-serialization can operate from data in memory rather than reading a byte at a time from the file.  Only use these variant if you are certain that you won't be reading anything else from the file. Return a Python object from the data stream in a byte buffer containing *len* bytes pointed to by *data*. Return a bytes object containing the marshalled representation of *value*. *version* indicates the file format. The following functions allow marshalled values to be read back in. The module supports two versions of the data format: version 0 is the historical version, version 1 shares interned strings in the file, and upon unmarshalling.  Version 2 uses a binary format for floating point numbers. ``Py_MARSHAL_VERSION`` indicates the current file format (currently 2). These routines allow C code to work with serialized objects using the same data format as the :mod:`marshal` module.  There are functions to write data into the serialization format, and additional functions that can be used to read the data back.  Files used to store marshalled data must be opened in binary mode. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 数据 marshal 操作支持 将一个 :c:type:`long` 整数 *value* 以 marshal 格式写入 *file*。 这将只写入 *value* 最低的 32 位；无论本机 :c:type:`long` 类型的长度如何。 *version* 指明文件格式的版本。 将一个 Python 对象 *value* 以 marshal 格式写入 *file*。 *version* 指明文件格式的版本。 数字值在存储时会将最低位字节放在开头。 发生错误时，将设置适当的异常 (:exc:`EOFError`) 并返回 ``-1``。 发生错误时，将设置适当的异常 (:exc:`EOFError`, :exc:`ValueError` 或 :exc:`TypeError`) 并返回 ``NULL``。 从打开用于读取的 :c:type:`FILE*` 的对应数据流返回一个 C :c:type:`long`。 使用只函数只能读取 32 位的值，无论本机 :c:type:`long` 类型的长度为何。 从打开用于读取的 :c:type:`FILE*` 的对应数据流返回一个 C :c:type:`short`。 使用此函数只能读取 16 位的值，无论本机 :c:type:`short` 类型的长度为何。 从打开用于读取的 :c:type:`FILE*` 的对应数据流返回一个 Python 对象。 从打开用于读取的 :c:type:`FILE*` 的对应数据流返回一个 Python 对象。 不同于 :c:func:`PyMarshal_ReadObjectFromFile`，此函数假定将不再从该文件读取更多的对象，允许其将文件数据积极地载入内存，以便反序列化过程可以在内存中的数据上操作而不是每次从文件读取一个字节。 只有当你确定不会再从文件读取任何内容时方可使用此形式。 从包含指向 *data* 的 *len* 个字节的字节缓冲区对应的数据流返回一个 Python 对象。 返回一个包含 *value* 的 marshal 表示形式的字节串对象。 *version* 指明文件格式的版本。 以下函数允许读取并恢复存储为 marshal 格式的值。 此模块支持两种数据格式版本：第 0 版为历史版本，第 1 版本会在文件和 marshal 反序列化中共享固化的字符串。 第 2 版本会对浮点数使用二进制格式。 ``Py_MARSHAL_VERSION`` 指明了当前文件的格式（当前取值为 2）。 这些例程允许 C 代码处理与 :mod:`marshal` 模块所用相同数据格式的序列化对象。 其中有些函数可用来将数据写入这种序列化格式，另一些函数则可用来读取并恢复数据。 用于存储 marshal 数据的文件必须以二进制模式打开。 