��    "      ,              <  %   =  +   c  $   �     �  e   �     -  �  >  �   �     G  ^   Z  �   �     �  R   �  �   �  k   �  c     �   g  Q  �  �   O
  �   �
     �     �  "   �  i   �  j  5  �   �  5   �  J   �  #         D  �   E  +   @     l  �  �  %   @  '   f     �     �  S   �       a  ,  a   �     �  X      �   Y  	     H   '  �   p  c   �  N   \  �   �  (  1  ~   Z  �   �  	   j  	   t     ~  a   �    �  �        �  H   �     H  �  d    !  *   "     D"   **Source code:** :source:`Lib/ast.py` :class:`AsyncFunctionDef` is now supported. :mod:`ast` --- Abstract Syntax Trees :mod:`ast` Helpers A :class:`NodeVisitor` subclass that walks the abstract syntax tree and allows modification of nodes. Abstract Grammar An abstract syntax tree can be generated by passing :data:`ast.PyCF_ONLY_AST` as a flag to the :func:`compile` built-in function, or using the :func:`parse` helper provided in this module.  The result will be a tree of objects whose classes all inherit from :class:`ast.AST`.  An abstract syntax tree can be compiled into a Python code object using the built-in :func:`compile` function. Apart from the node classes, the :mod:`ast` module defines these utility functions and classes for traversing abstract syntax trees: Command-Line Usage Each concrete class has an attribute :attr:`_fields` which gives the names of all child nodes. Each instance of a concrete class has one attribute for each child node, of the type as defined in the grammar.  For example, :class:`ast.BinOp` instances have an attribute :attr:`left` of type :class:`ast.expr`. Expressions For example, to create and populate an :class:`ast.UnaryOp` node, you could use :: For nodes that were part of a collection of statements (that applies to all statement nodes), the visitor may also return a list of nodes rather than just a single node. Here is an example transformer that rewrites all occurrences of name lookups (``foo``) to ``data['foo']``:: If there are keyword arguments, they will set the attributes of the same names to the given values. If there are positional arguments, there must be as many as there are items in :attr:`T._fields`; they will be assigned as attributes of these names. If these attributes are marked as optional in the grammar (using a question mark), the value might be ``None``.  If the attributes can have zero-or-more values (marked with an asterisk), the values are represented as Python lists.  All possible attributes must be present and have valid values when compiling an AST with :func:`compile`. It is possible to crash the Python interpreter with a sufficiently large/complex string due to stack depth limitations in Python's AST compiler. Keep in mind that if the node you're operating on has child nodes you must either transform the child nodes yourself or call the :meth:`generic_visit` method for the node first. Literals Node classes Now allows bytes and set literals. Parse the source into an AST node.  Equivalent to ``compile(source, filename, mode, ast.PyCF_ONLY_AST)``. The :class:`NodeTransformer` will walk the AST and use the return value of the visitor methods to replace or remove the old node.  If the return value of the visitor method is ``None``, the node will be removed from its location, otherwise it is replaced with the return value.  The return value may be the original node in which case no replacement takes place. The :mod:`ast` module helps Python applications to process trees of the Python abstract syntax grammar.  The abstract syntax itself might change with each Python release; this module helps to find out programmatically what the current grammar looks like. The abstract grammar is currently defined as follows: The constructor of a class :class:`ast.T` parses its arguments as follows: The following options are accepted: There is one class defined for each left-hand side symbol in the abstract grammar (for example, :class:`ast.stmt` or :class:`ast.expr`).  In addition, there is one class defined for each constructor on the right-hand side; these classes inherit from the classes for the left-hand side trees.  For example, :class:`ast.BinOp` inherits from :class:`ast.expr`.  For production rules with alternatives (aka "sums"), the left-hand side class is abstract: only instances of specific constructor nodes are ever created. This is the base of all AST node classes.  The actual node classes are derived from the :file:`Parser/Python.asdl` file, which is reproduced :ref:`below <abstract-grammar>`.  They are defined in the :mod:`_ast` C module and re-exported in :mod:`ast`. Usually you use the transformer like this:: or the more compact :: Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-08 15:17+0800
PO-Revision-Date: 2021-06-28 00:54+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **源代码：** :source:`Lib/ast.py` 目前支持 :class:`AsyncFunctionDef`  :mod:`ast` --- 抽象语法树 :mod:`ast` 中的辅助函数 子类 :class:`NodeVisitor`  用于遍历抽象语法树，并允许修改节点。 抽象文法 抽象语法树可通过将 :data:`ast.PyCF_ONLY_AST` 作为旗标传递给 :func:`compile` 内置函数来生成，或是使用此模块中提供的 :func:`parse` 辅助函数。返回结果将是一个对象树，，其中的类都继承自 :class:`ast.AST`。抽象语法树可被内置的 :func:`compile` 函数编译为一个 Python 代码对象。 除了节点类， :mod:`ast` 模块里为遍历抽象语法树定义了这些工具函数和类: 命令行用法 每个具体类都有个属性 :attr:`_fields`, 用来给出所有子节点的名字。  每个具体类的实例对它每个子节点都有一个属性，对应类型如文法中所定义。比如，:class:`ast.BinOp` 的实例有个属性 :attr:`left`，类型是 :class:`ast.expr`. 表达式 比方说，要创建和填充节点 :class:`ast.UnaryOp`，你得用 :: 对于属于语句集合（适用于所有语句节点）的节点，访问者还可以返回节点列表而不仅仅是单个节点。 如下是一个转换器示例，它将所有出现的名称 (``foo``) 重写为 ``data['foo']``::  如果有关键字参数，它们必须被设为和给定值同名的属性。 如果有位置参数，它们必须和 :attr:`T._fields` 中的元素一样多；他们会像这些名字的属性一样被赋值。 如果这些属性在文法中标记为可选（使用问号），对应值可能会是 ``None``。如果这些属性有零或多个（用星号标记），对应值会用Python的列表来表示。所有可能的属性必须在用 :func:`compile` 编译得到AST时给出，且是有效的值。 足够复杂或是巨大的字符串可能导致Python解释器的崩溃，因为Python的AST编译器是有栈深限制的。 请记住，如果您正在操作的节点具有子节点，则必须先转换其子节点或为该节点调用 :meth:`generic_visit`  方法。 字面值 节点类 目前支持字节和集合。 把源码解析为AST节点。和 ``compile(source, filename, mode,ast.PyCF_ONLY_AST)`` 等价。 :class:`NodeTransformer` 将遍历抽象语法树并使用visitor方法的返回值去替换或移除旧节点。如果visitor方法的返回值为 ``None`` , 则该节点将从其位置移除，否则将替换为返回值。当返回值是原始节点时，无需替换。 :mod:`ast` 模块帮助 Python 程序处理 Python 语法的抽象语法树。抽象语法或许会随着 Python 的更新发布而改变；该模块能够帮助理解当前语法在编程层面的样貌。 抽象文法目前定义如下 一个类的构造器 :class:`ast.T` 像下面这样parse它的参数。 可以接受以下选项： 抽象语法定义的每个左侧符号(比方说，  :class:`ast.stmt` 或者 :class:`ast.expr`)定义了一个类。另外，在抽象语法定义的右侧，对每一个构造器也定义了一个类；这些类继承自树左侧的类。比如，:class:`ast.BinOp` 继承自 :class:`ast.expr`。对于多分支产生式(也就是"和规则")，树右侧的类是抽象的；只有特定构造器结点的实例能被构造。 这是所有 AST 节点类的基类。实际上，这些节点类派生自 :file:`Parser/Python.asdl` 文件，其中定义的语法树示例 :ref:`如下 <abstract-grammar>`。它们在 C 语言模块 :mod:`_ast` 中定义，并被导出至 :mod:`ast` 模块。 通常你可以像这样使用转换器::  或者更紧凑点 :: 