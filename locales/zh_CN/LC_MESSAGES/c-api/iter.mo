��          |               �      �   v   �      f  �   �  8     L   E  @   �  ]   �  S   1  K   �  M   �  �       �  r   �     `  �   a  1   �  A   	     \	  L   x	  Z   �	  _    
  [   �
   Iterator Protocol Return non-zero if the object *o* supports the iterator protocol, and ``0`` otherwise.  This function always succeeds. Return the next value from the iteration *o*.  The object must be an iterator (it is up to the caller to check this).  If there are no remaining values, returns ``NULL`` with no exception set.  If an error occurs while retrieving the item, returns ``NULL`` and passes along the exception. Returns non-zero if the object 'obj' provides :class:`AsyncIterator` protocols, and ``0`` otherwise.  This function always succeeds. Sends the *arg* value into the iterator *iter*. Returns: The enum value used to represent different results of :c:func:`PyIter_Send`. There are two functions specifically for working with iterators. To write a loop which iterates over an iterator, the C code should look something like this:: ``PYGEN_ERROR`` if iterator has raised and exception. *presult* is set to ``NULL``. ``PYGEN_NEXT`` if iterator yields. Yielded value is returned via *presult*. ``PYGEN_RETURN`` if iterator returns. Return value is returned via *presult*. Project-Id-Version: Python 3.10
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
 迭代器协议 如果对象 *o* 支持迭代器协议则返回非零值，否则返回 ``0``。 此函数总是会成功执行。 返回迭代 *o* 的下一个值。 对象必须是一个迭代器（这应由调用者来判断）。 如果没有余下的值，则返回 ``NULL`` 并且不设置异常。 如果在获取条目时发生了错误，则返回 ``NULL`` 并且传递异常。 如果对象 'obj' 提供了 :class:`AsyncIterator` 协议则返回非零值，否则返回 ``0``。 此函数总是会成功执行。 将 *arg* 值发送到迭代器 *iter*。 返回: 用于代表 :c:func:`PyIter_Send` 的不同结果的枚举值。 迭代器有两个函数。 要为迭代器编写一个一个循环，C代码应该看起来像这样 :: ``PYGEN_ERROR``，如果迭代器引发异常的话。  *presult* 会被设为 ``NULL``。 ``PYGEN_NEXT``，如果迭代器生成值的话。 生成的值会通过 *presult* 来返回。 ``PYGEN_RETURN``，如果迭代器返回的话。 返回值会通过 *presult* 来返回。 