��    K      t              �     �     �     �          &  �   5  "   �  k   
  F   v  �   �  �   �       	   �  �   �  R   F	  \   �	  �   �	  =   �
  M   �
  :     �   [  �   �  �  �    x  H   �  <   �  Q     �   k  _   �     N  2   T  �  �  �   x  D   �     D  �   L  �   3  1  /  �   a  �   �  �   �     9    I  /   P     �  d   �  �   �  _   �  R   �  <  C  �  �   C  "  9   H$  B   �$  �   �$  g  M%  �   �&  �   �'  =  (  y   �)  �   7*  |   �*  -   5+  I   c+  M   �+  �   �+  {   �,    U-  |   q.     �.  Q   /  �   ]/  �   �/  N   �0  �  &1     �2     �2     3     (3     >3  �   M3     �3  E   �3     $4  �   =4  �   5     �5     �5  �   �5  -   Y6  N   �6  �   �6  9   W7  B   �7  
  �7  o   �8  �   O9  n  �9  �  W;  E   1=  /   w=  H   �=  j   �=  c   [>     �>     �>  Y  �>  u   ?@  @   �@     �@  �   �@  �   �A  �   rB  x   lC  �   �C  �   �D     "E  �   2E  '   F  	   GF  C   QF  �   �F  P   &G  -   wG  �  �G  "  aI    �J  +   �L  4   �L  n   �L  �   nM  �   QN  �   O    �O  Z   �P  @   Q  ^   ^Q  !   �Q  3   �Q  K   R  �   _R  [   S    dS  b   mT     �T  /   �T  U   U  �   mU  3   FV   :ref:`f-strings` :ref:`formatstrings` :ref:`old-string-formatting` :ref:`string-methods` :ref:`textseq` All slice operations return a new list containing the requested elements.  This means that the following slice returns a :ref:`shallow copy <shallow_vs_deep_copy>` of the list:: An Informal Introduction to Python Assignment to slices is also possible, and this can even change the size of the list or clear it entirely:: Attempting to use an index that is too large will result in an error:: Besides numbers, Python can also manipulate strings, which can be expressed in several ways.  They can be enclosed in single quotes (``'...'``) or double quotes (``"..."``) with the same result [#]_.  ``\`` can be used to escape quotes:: Division (``/``) always returns a float.  To do :term:`floor division` and get an integer result (discarding any fractional result) you can use the ``//`` operator; to calculate the remainder you can use ``%``:: First Steps Towards Programming Footnotes For non-negative indices, the length of a slice is the difference of the indices, if both are within bounds.  For example, the length of ``word[1:3]`` is 2. However, out of range slice indexes are handled gracefully when used for slicing:: If a variable is not "defined" (assigned a value), trying to use it will give you an error:: If you don't want characters prefaced by ``\`` to be interpreted as special characters, you can use *raw strings* by adding an ``r`` before the first quote:: If you need a different string, you should create a new one:: If you want to concatenate variables or a variable and a literal, use ``+``:: In addition to :class:`int` and :class:`float`, Python supports other types of numbers, such as :class:`~decimal.Decimal` and :class:`~fractions.Fraction`. Python also has built-in support for :ref:`complex numbers <typesnumeric>`, and uses the ``j`` or ``J`` suffix to indicate the imaginary part (e.g. ``3+5j``). In addition to indexing, *slicing* is also supported.  While indexing is used to obtain individual characters, *slicing* allows you to obtain substring:: In interactive mode, the last printed expression is assigned to the variable ``_``.  This means that when you are using Python as a desk calculator, it is somewhat easier to continue calculations, for example:: In the following examples, input and output are distinguished by the presence or absence of prompts (:term:`>>>` and :term:`...`): to repeat the example, you must type everything after the prompt, when the prompt appears; lines that do not begin with a prompt are output from the interpreter. Note that a secondary prompt on a line by itself in an example means you must type a blank line; this is used to end a multi-line command. In the interactive interpreter, the output string is enclosed in quotes and special characters are escaped with backslashes.  While this might sometimes look different from the input (the enclosing quotes could change), the two strings are equivalent.  The string is enclosed in double quotes if the string contains a single quote and no double quotes, otherwise it is enclosed in single quotes.  The :func:`print` function produces a more readable output, by omitting the enclosing quotes and by printing escaped and special characters:: Indices may also be negative numbers, to start counting from the right:: Information about string formatting with :meth:`str.format`. It is possible to nest lists (create lists containing other lists), for example:: Let's try some simple Python commands.  Start the interpreter and wait for the primary prompt, ``>>>``.  (It shouldn't take long.) Like strings (and all other built-in :term:`sequence` types), lists can be indexed and sliced:: Lists Lists also support operations like concatenation:: Many of the examples in this manual, even those entered at the interactive prompt, include comments.  Comments in Python start with the hash character, ``#``, and extend to the end of the physical line.  A comment may appear at the start of a line or following whitespace or code, but not within a string literal.  A hash character within a string literal is just a hash character. Since comments are to clarify code and are not interpreted by Python, they may be omitted when typing in examples. Note how the start is always included, and the end always excluded.  This makes sure that ``s[:i] + s[i:]`` is always equal to ``s``:: Note that since -0 is the same as 0, negative indices start from -1. Numbers Of course, we can use Python for more complicated tasks than adding two and two together.  For instance, we can write an initial sub-sequence of the `Fibonacci series <https://en.wikipedia.org/wiki/Fibonacci_number>`_ as follows:: One way to remember how slices work is to think of the indices as pointing *between* characters, with the left edge of the first character numbered 0. Then the right edge of the last character of a string of *n* characters has index *n*, for example:: Python knows a number of *compound* data types, used to group together other values.  The most versatile is the *list*, which can be written as a list of comma-separated values (items) between square brackets.  Lists might contain items of different types, but usually the items all have the same type. :: Python strings cannot be changed --- they are :term:`immutable`. Therefore, assigning to an indexed position in the string results in an error:: Since ``**`` has higher precedence than ``-``, ``-3**2`` will be interpreted as ``-(3**2)`` and thus result in ``-9``.  To avoid this and get ``9``, you can use ``(-3)**2``. Slice indices have useful defaults; an omitted first index defaults to zero, an omitted second index defaults to the size of the string being sliced. :: Some examples:: String literals can span multiple lines.  One way is using triple-quotes: ``"""..."""`` or ``'''...'''``.  End of lines are automatically included in the string, but it's possible to prevent this by adding a ``\`` at the end of the line.  The following example:: String literals that have embedded expressions. Strings Strings are examples of *sequence types*, and support the common operations supported by such types. Strings can be *indexed* (subscripted), with the first character having index 0. There is no separate character type; a character is simply a string of size one:: Strings can be concatenated (glued together) with the ``+`` operator, and repeated with ``*``:: Strings support a large number of methods for basic transformations and searching. The *body* of the loop is *indented*: indentation is Python's way of grouping statements.  At the interactive prompt, you have to type a tab or space(s) for each indented line.  In practice you will prepare more complicated input for Python with a text editor; all decent text editors have an auto-indent facility.  When a compound statement is entered interactively, it must be followed by a blank line to indicate completion (since the parser cannot guess when you have typed the last line).  Note that each line within a basic block must be indented by the same amount. The :func:`print` function writes the value of the argument(s) it is given. It differs from just writing the expression you want to write (as we did earlier in the calculator examples) in the way it handles multiple arguments, floating point quantities, and strings.  Strings are printed without quotes, and a space is inserted between items, so you can format things nicely, like this:: The :keyword:`while` loop executes as long as the condition (here: ``a < 10``) remains true.  In Python, like in C, any non-zero integer value is true; zero is false.  The condition may also be a string or list value, in fact any sequence; anything with a non-zero length is true, empty sequences are false.  The test used in the example is a simple comparison.  The standard comparison operators are written the same as in C: ``<`` (less than), ``>`` (greater than), ``==`` (equal to), ``<=`` (less than or equal to), ``>=`` (greater than or equal to) and ``!=`` (not equal to). The built-in function :func:`len` also applies to lists:: The built-in function :func:`len` returns the length of a string:: The equal sign (``=``) is used to assign a value to a variable. Afterwards, no result is displayed before the next interactive prompt:: The first line contains a *multiple assignment*: the variables ``a`` and ``b`` simultaneously get the new values 0 and 1.  On the last line this is used again, demonstrating that the expressions on the right-hand side are all evaluated first before any of the assignments take place.  The right-hand side expressions are evaluated  from the left to the right. The first row of numbers gives the position of the indices 0...6 in the string; the second row gives the corresponding negative indices. The slice from *i* to *j* consists of all characters between the edges labeled *i* and *j*, respectively. The integer numbers (e.g. ``2``, ``4``, ``20``) have type :class:`int`, the ones with a fractional part (e.g. ``5.0``, ``1.6``) have type :class:`float`.  We will see more about numeric types later in the tutorial. The interpreter acts as a simple calculator: you can type an expression at it and it will write the value.  Expression syntax is straightforward: the operators ``+``, ``-``, ``*`` and ``/`` work just like in most other languages (for example, Pascal or C); parentheses (``()``) can be used for grouping. For example:: The keyword argument *end* can be used to avoid the newline after the output, or end the output with a different string:: The old formatting operations invoked when strings are the left operand of the ``%`` operator are described in more detail here. There is full support for floating point; operators with mixed type operands convert the integer operand to floating point:: This example introduces several new features. This feature is particularly useful when you want to break long strings:: This only works with two literals though, not with variables or expressions:: This variable should be treated as read-only by the user.  Don't explicitly assign a value to it --- you would create an independent local variable with the same name masking the built-in variable with its magic behavior. Two or more *string literals* (i.e. the ones enclosed between quotes) next to each other are automatically concatenated. :: Unlike other languages, special characters such as ``\n`` have the same meaning with both single (``'...'``) and double (``"..."``) quotes. The only difference between the two is that within single quotes you don't need to escape ``"`` (but you have to escape ``\'``) and vice versa. Unlike strings, which are :term:`immutable`, lists are a :term:`mutable` type, i.e. it is possible to change their content:: Using Python as a Calculator With Python, it is possible to use the ``**`` operator to calculate powers [#]_:: You can also add new items at the end of the list, by using the :meth:`~list.append` *method* (we will see more about methods later):: You can toggle the display of prompts and output by clicking on ``>>>`` in the upper-right corner of an example box.  If you hide the prompts and output for an example, then you can easily copy and paste the input lines into your interpreter. produces the following output (note that the initial newline is not included): Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-08 15:17+0800
PO-Revision-Date: 2021-06-28 01:50+0000
Last-Translator: jaystone776 <1732865113@qq.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :ref:`f-strings` :ref:`formatstrings` :ref:`old-string-formatting` :ref:`string-methods` :ref:`textseq` 切片操作返回包含请求元素的新列表。以下切片操作会返回列表的 :ref:`浅拷贝 <shallow_vs_deep_copy>`： Python 速览 为切片赋值可以改变列表大小，甚至清空整个列表： 索引越界会报错： 除了数字，Python 还可以操作字符串。字符串有多种表现形式，用单引号（``'……'``）或双引号（``"……"``）标注的结果相同 [#]_。反斜杠 ``\`` 用于转义： 除法运算（``/``）返回浮点数。用 ``//`` 运算符执行 :term:`floor division` 的结果是整数（忽略小数）；计算余数用 ``%``： 走向编程的第一步 备注 对于使用非负索引的切片，如果两个索引都不越界，切片长度就是起止索引之差。例如， ``word[1:3]`` 的长度是 2。 但是，切片会自动处理越界索引： 如果变量未定义（即，未赋值），使用该变量会提示错误： 如果不希望前置 ``\`` 的字符转义成特殊字符，可以使用 *原始字符串*，在引号前添加 ``r`` 即可： 要生成不同的字符串，应新建一个字符串： 合并多个变量，或合并变量与字面值，要用 ``+``： 除了 :class:`int` 和 :class:`float`，Python 还支持其他数字类型，例如 :class:`~decimal.Decimal` 或 :class:`~fractions.Fraction`。Python 还内置支持 :ref:`复数 <typesnumeric>`，后缀 ``j`` 或 ``J`` 用于表示虚数（例如 ``3+5j`` ）。 除了索引，字符串还支持 *切片*。索引可以提取单个字符，*切片* 则提取子字符串： 交互模式下，上次输出的表达式会赋给变量 ``_``。把 Python 当作计算器时，用该变量实现下一步计算更简单，例如： 下面的例子以是否显示提示符（:term:`>>>` 与 :term:`...`）区分输入与输出：输入例子中的代码时，要键入以提示符开头的行中提示符后的所有内容；未以提示符开头的行是解释器的输出。注意，例子中的某行出现的第二个提示符是用来结束多行命令的，此时，要键入一个空白行。 交互式解释器会为输出的字符串加注引号，特殊字符使用反斜杠转义。虽然，有时输出的字符串看起来与输入的字符串不一样（外加的引号可能会改变），但两个字符串是相同的。如果字符串中有单引号而没有双引号，该字符串外将加注双引号，反之，则加注单引号。:func:`print` 函数输出的内容更简洁易读，它会省略两边的引号，并输出转义后的特殊字符： 索引还支持负数，用负数索引时，从右边开始计数： 使用 :meth:`str.format` 格式化字符串。 还可以嵌套列表（创建包含其他列表的列表），例如： 现在，尝试一些简单的 Python 命令。启动解释器，等待主提示符（``>>>`` ）出现。 和字符串（及其他内置 :term:`sequence` 类型）一样，列表也支持索引和切片： 列表 列表还支持合并操作： 本手册中的许多例子，甚至交互式命令都包含注释。Python 注释以 ``#`` 开头，直到该物理行结束。注释可以在行开头，或空白符与代码之后，但不能在字符串里面。字符串中的 # 号就是 # 号。注释用于阐明代码，Python 不解释注释，键入例子时，可以不输入注释。 注意，输出结果包含切片开始，但不包含切片结束。因此，``s[:i] + s[i:]`` 总是等于 ``s``： 注意，-0 和 0 一样，因此，负数索引从 -1 开始。 数字 当然，Python 还可以完成比二加二更复杂的任务。 例如，可以编写 `斐波那契数列 <https://en.wikipedia.org/wiki/Fibonacci_number>`_ 的初始子序列，如下所示： 还可以这样理解切片，索引指向的是字符 *之间* ，第一个字符的左侧标为 0，最后一个字符的右侧标为 *n* ，*n* 是字符串长度。例如： Python 支持多种 *复合* 数据类型，可将不同值组合在一起。最常用的 *列表* ，是用方括号标注，逗号分隔的一组值。*列表* 可以包含不同类型的元素，但一般情况下，各个元素的类型相同： Python 字符串不能修改，是  :term:`immutable` 的。因此，为字符串中某个索引位置赋值会报错： ``**`` 比 ``-`` 的优先级更高, 所以 ``-3**2`` 会被解释成 ``-(3**2)`` ，因此，结果是 ``-9``。要避免这个问题，并且得到 ``9``, 可以用 ``(-3)**2``。 切片索引的默认值很有用；省略开始索引时，默认值为 0，省略结束索引时，默认为到字符串的结尾： 示例如下： 字符串字面值可以实现跨行连续输入。实现方式是用三引号：``"""..."""`` 或 ``'''...'''``，字符串行尾会自动加上回车换行，如果不需要回车换行，在行尾添加 ``\`` 即可。示例如下： 内嵌表达式的字符串字面值。 字符串 字符串是 *序列类型* ，支持序列类型的各种操作。 字符串支持 *索引* （下标访问），第一个字符的索引是 0。单字符没有专用的类型，就是长度为一的字符串： 字符串可以用 ``+`` 合并（粘到一起），也可以用 ``*`` 重复： 字符串支持很多变形与查找方法。 *循环体* 是 *缩进的* ：缩进是 Python 组织语句的方式。在交互式命令行里，得为每个缩输入制表符或空格。使用文本编辑器可以实现更复杂的输入方式；所有像样的文本编辑器都支持自动缩进。交互式输入复合语句时, 要在最后输入空白行表示结束（因为解析器不知道哪一行代码是最后一行）。注意，同一块语句的每一行的缩进相同。 :func:`print` 函数输出给定参数的值。与表达式不同（比如，之前计算器的例子），它能处理多个参数，包括浮点数与字符串。它输出的字符串不带引号，且各参数项之间会插入一个空格，这样可以实现更好的格式化操作： :keyword:`while` 循环只要条件（这里指：``a < 10``）保持为真就会一直执行。Python 和 C 一样，任何非零整数都为真，零为假。这个条件也可以是字符串或列表的值，事实上，任何序列都可以；长度非零就为真，空序列则为假。示例中的判断只是最简单的比较。比较操作符的标准写法和 C 语言一样： ``<`` （小于）、 ``>`` （大于）、 ``==`` （等于）、 ``<=`` （小于等于)、 ``>=`` （大于等于）及 ``!=`` （不等于）。 内置函数 :func:`len` 也支持列表： 内置函数 :func:`len` 返回字符串的长度： 等号（``=``）用于给变量赋值。赋值后，下一个交互提示符的位置不显示任何结果： 第一行中的 *多重赋值*：变量 ``a`` 和 ``b`` 同时获得新值 0 和 1。最后一行又用了一次多重赋值，这体现在右表达式在赋值前就已经求值了。右表达式求值顺序为从左到右。 第一行数字是字符串中索引 0...6 的位置，第二行数字是对应的负数索引位置。*i* 到 *j* 的切片由 *i* 和 *j* 之间所有对应的字符组成。 整数（如，``2``、``4``、``20`` ）的类型是 :class:`int`，带小数（如，``5.0``、``1.6`` ）的类型是 :class:`float`。本教程后半部分将介绍更多数字类型。 解释器像一个简单的计算器：输入表达式，就会给出答案。表达式的语法很直接：运算符 ``+``、``-``、``*``、``/`` 的用法和其他大部分语言一样（比如，Pascal 或 C）；括号 (``()``) 用来分组。例如： 关键字参数 *end* 可以取消输出后面的换行, 或用另一个字符串结尾： 这里详述了用 ``%`` 运算符格式化字符串的操作。 Python 全面支持浮点数；混合类型运算数的运算会把整数转换为浮点数： 本例引入了几个新功能。 拆分长字符串时，这个功能特别实用： 这项功能只能用于两个字面值，不能用于变量或表达式： 最好把该变量当作只读类型。不要为它显式赋值，否则会创建一个同名独立局部变量，该变量会用它的魔法行为屏蔽内置变量。 相邻的两个或多个 *字符串字面值* （引号标注的字符）会自动合并： 和其他语言不一样，特殊字符如 ``\n`` 在单引号（``'...'``）和双引号（``"..."``）里的意义一样。这两种引号唯一的区别是，不需要在单引号里转义双引号 ``"``，但必须把单引号转义成 ``\'``，反之亦然。 与 :term:`immutable` 字符串不同, 列表是 :term:`mutable` 类型，其内容可以改变： Python 用作计算器 Python 用 ``**`` 运算符计算乘方 [#]_： :meth:`~list.append` *方法* 可以在列表结尾添加新元素（详见后文）: 你可以通过点击实例框右上角的 ``>>>`` 来切换提示和输出的显示。如果你隐藏了一个例子的提示和输出，那么你可以很容易地将输入行复制和粘贴到你的解释器中。 输出如下（注意，第一行没有换行）： 