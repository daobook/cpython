��          T               �   �  �   <   l     �  t   �  0   7  �   h  �  .  �  �  >   �	     
  v   
  3   �
  �   �
   Create a :ref:`GenericAlias <types-genericalias>` object. Equivalent to calling the Python class :class:`types.GenericAlias`.  The *origin* and *args* arguments set the ``GenericAlias``\ 's ``__origin__`` and ``__args__`` attributes respectively. *origin* should be a :c:type:`PyTypeObject*`, and *args* can be a :c:type:`PyTupleObject*` or any ``PyObject*``.  If *args* passed is not a tuple, a 1-tuple is automatically constructed and ``__args__`` is set to ``(args,)``. Minimal checking is done for the arguments, so the function will succeed even if *origin* is not a type. The ``GenericAlias``\ 's ``__parameters__`` attribute is constructed lazily from ``__args__``.  On failure, an exception is raised and ``NULL`` is returned. Here's an example of how to make an extension type generic:: Objects for Type Hinting The C type of the object returned by :c:func:`Py_GenericAlias`. Equivalent to :class:`types.GenericAlias` in Python. The data model method :meth:`__class_getitem__`. Various built-in types for type hinting are provided.  Currently, two types exist -- :ref:`GenericAlias <types-genericalias>` and :ref:`Union <types-union>`.  Only ``GenericAlias`` is exposed to C. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 创建一个 :ref:`GenericAlias <types-genericalias>` 对象。相当于调用 Python 类 :class:`types.GenericAlias` 。参数 *origin* 和 *args* 分别设置 ``GenericAlias``\ 's ``__origin__`` 属性和 ``__args__`` 属性。 *origin* 应该是 :c:type:`PyTypeObject*` 类型， *args* 可以是 :c:type:`PyTupleObject*` 类型或者任意 ``PyObject*`` 类型。如果传递的 *args* 不是一个元组，则自动构建一个 1 元元组，并将 ``__args__`` 设置为 ``(args,)`` 。对参数进行了最小限度的检查，因此即使 *origin* 不是类型，函数也会成功。``GenericAlias`` 的 ``__parameters__`` 属性是通过 ``__args__`` 懒加载的。如果失败，则触发异常并返回 ``NULL`` 。 下面是一个如何创建一个扩展类型泛型的例子:: 类型注解对象 由 :c:func:`Py_GenericAlias` 所返回的对象的 C 类型。等价于 Python 中的 :class:`types.GenericAlias` 。 数据模型的方法 :meth:`__class_getitem__` 。 提供几种用于类型提示的内置类型。 目前存在两种类型 -- :ref:`GenericAlias <types-genericalias>` 和 :ref:`Union <types-union>`。 只有 ``GenericAlias`` 会向 C 开放。 