��          �               L  +   M     y     �  %   �     �     �     �  
     &     $   B     g       -   �  .   �  �   �  X   �  ?   -  a   m  �  �  )   �     �     �  !   �     �          %  	   9     C  '   b     �     �  2   �  3   �  �   -  M   �  -   7	  H   e	   :mod:`parser` --- Access Python parse trees Converting ST Objects Creating ST Objects Example: Emulation of :func:`compile` Exceptions and Error Handling Module :mod:`symbol` Module :mod:`token` ST Objects ST objects have the following methods: Same as ``compilest(st, filename)``. Same as ``isexpr(st)``. Same as ``issuite(st)``. Same as ``st2list(st, line_info, col_info)``. Same as ``st2tuple(st, line_info, col_info)``. The parser module is deprecated and will be removed in future versions of Python. For the majority of use cases you can leverage the Abstract Syntax Tree (AST) generation and compilation stage, using the :mod:`ast` module. The type of the objects returned by :func:`expr`, :func:`suite` and :func:`sequence2st`. Useful constants representing internal nodes of the parse tree. Useful constants representing leaf nodes of the parse tree and functions for testing node values. Project-Id-Version: Python 3.9
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-01-01 05:02+0000
PO-Revision-Date: 2017-02-16 23:21+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2020
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :mod:`parser` --- 访问 Python 解析树 转换 ST 对象 创建 ST 对象 示例: :func:`compile` 的模拟 异常和错误处理 模块 :mod:`symbol` 模块 :mod:`token` ST 对象 ST 对象具有以下方法： 和 ``compilest(st, filename)`` 相同. 和  ``isexpr(st)`` 相同。 和 ``issuite(st)`` 相同。 和 ``st2list(st, line_info, col_info)`` 相同。 和 ``st2tuple(st, line_info, col_info)`` 相同。 parser 模块已被弃用并将在未来的 Python 版本中移除。 对于大多数用例你都可以使用 :mod:`ast` 模块来控制抽象语法树（AST）的生成和编译阶段。  :func:`expr`, :func:`suite` 和 :func:`sequence2st` 返回对象的类型。 代表解析树内部节点的有用常量。 代表解析树叶子节点和测试节点值的函数的有用常量。 