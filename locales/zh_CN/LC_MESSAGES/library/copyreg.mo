��    
      l               �   )   �   ;   �   �   #  �   �     c    k  c  �  _   �    G  �  f  '   $  C   L  �   �  �   /	     �	  �   �	  0  �
  T   �    R   **Source code:** :source:`Lib/copyreg.py` :mod:`copyreg` --- Register :mod:`pickle` support functions Declares *object* to be a valid constructor.  If *object* is not callable (and hence not valid as a constructor), raises :exc:`TypeError`. Declares that *function* should be used as a "reduction" function for objects of type *type*.  *function* should return either a string or a tuple containing two or three elements. Example See the :mod:`pickle` module for more details on the interface expected of *function* and *constructor*.  Note that the :attr:`~pickle.Pickler.dispatch_table` attribute of a pickler object or subclass of :class:`pickle.Pickler` can also be used for declaring reduction functions. The :mod:`copyreg` module offers a way to define functions used while pickling specific objects.  The :mod:`pickle` and :mod:`copy` modules use those functions when pickling/copying those objects.  The module provides configuration information about object constructors which are not classes. Such constructors may be factory functions or class instances. The example below would like to show how to register a pickle function and how it will be used: The optional *constructor* parameter, if provided, is a callable object which can be used to reconstruct the object when called with the tuple of arguments returned by *function* at pickling time.  :exc:`TypeError` will be raised if *object* is a class or *constructor* is not callable. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:03+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **源代码:** :source:`Lib/copyreg.py` :mod:`copyreg` --- 注册配合 :mod:`pickle` 模块使用的函数 将 *object* 声明为一个有效的构造器。 如果 *object* 是不可调用的（因而不是一个有效的构造器）则会引发 :exc:`TypeError`。 声明该 *function* 应当被用作 *type* 类型对象的“归约函数”。 *function* 应当返回字符串或包含两到三个元素的元组。 示例 请查看 :mod:`pickle` 模块了解 *function* 和 *constructor* 所要求的接口的详情。 请注意一个 pickler 对象或 :class:`pickle.Pickler` 的子类的 :attr:`~pickle.Pickler.dispatch_table` 属性也可以被用来声明归约函数。 :mod:`copyreg` 模块提供了可在封存特定对象时使用的一种定义函数方式。 :mod:`pickle` 和 :mod:`copy` 模块会在封存/拷贝特定对象时使用这些函数。 此模块提供了非类对象构造器的相关配置信息。 这样的构造器可以是工厂函数或类实例。 以下示例将会显示如何注册一个封存函数，以及如何来使用它： 如果提供了可选的 *constructor* 形参，它应当是一个可用来重建相应对象的可调用对象，在调用该对象时应传入由 *function* 所返回的参数元组。 如果 *object* 是一个类或 *constructor* 是不可调用的则将引发 :exc:`TypeError`。 