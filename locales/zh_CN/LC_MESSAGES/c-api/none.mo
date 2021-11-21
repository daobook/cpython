��          D               l   �   m   �   l  �   �     �  �  �  �   k  {   a  �   �     _   Note that the :c:type:`PyTypeObject` for ``None`` is not directly exposed in the Python/C API.  Since ``None`` is a singleton, testing for object identity (using ``==`` in C) is sufficient. There is no :c:func:`PyNone_Check` function for the same reason. Properly handle returning :c:data:`Py_None` from within a C function (that is, increment the reference count of ``None`` and return it.) The Python ``None`` object, denoting lack of value.  This object has no methods. It needs to be treated just like any other object with respect to reference counts. The ``None`` Object Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 请注意， ``None`` 的 :c:type:`PyTypeObject` 不会直接在 Python / C API 中公开。 由于 ``None`` 是单例，测试对象标识（在C中使用 ``==`` ）就足够了。 由于同样的原因，没有 :c:func:`PyNone_Check` 函数。 正确处理来自C函数内的 :c:data:`Py_None` 返回（也就是说，增加 ``None`` 的引用计数并返回它。） Python ``None`` 对象，表示缺乏值。 这个对象没有方法。 它需要像引用计数一样处理任何其他对象。 ``None`` 对象 