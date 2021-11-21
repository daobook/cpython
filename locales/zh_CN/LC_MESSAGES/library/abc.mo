��    2      �              <  $   =  %   b  $   �  (   �  �   �  �   �  �   �  M   .  �   |  ^     B  d  O   �  }  �  e  u
  	   �  L   �  >   2  |   q  Y  �  l   H  �   �  m   n  4   �  V    F   h  3   �  4   �  E       ^  <   q  <   �  D   �  D  0  S  u  �   �  �   y  g   [  c  �  /  '  �   W  �   �  �   �  �     V   �  &  �    $  �  ?!  �   �"  <   �#  �  �#  !   �%  %   �%     �%  '   �%  �   %&  �   �&  ~   �'  E   E(  �   �(  U   )  N  d)  E   �*  N  �*  [  H,     �-  G   �-  I   �-  q   =.  5  �.  m   �/  �   S0  n   1  -   |1    �1  H   �2  0   3  '   <3  9   d3  �   �3  8   �4  ,   �4  0   �4    +5    J6  �   e7  �   8  V   �8  L  69  9  �:  �   �;  �   o<  �   �<  �   z=  X   >  �   [>    H?  y  NA  �   �B  0   XC   (Must be defined as a class method.) **Source code:** :source:`Lib/abc.py` :mod:`abc` --- Abstract Base Classes A decorator indicating abstract methods. A function to recalculate an abstract class's abstraction status. This function should be called if a class's abstract methods have been implemented or changed after it was created. Usually, this function should be called from within a class decorator. A helper class that has :class:`ABCMeta` as its metaclass.  With this class, an abstract base class can be created by simply deriving from :class:`ABC` avoiding sometimes confusing metaclass usage, for example:: A subclass of the built-in :func:`classmethod`, indicating an abstract classmethod. Otherwise it is similar to :func:`abstractmethod`. A subclass of the built-in :func:`property`, indicating an abstract property. A subclass of the built-in :func:`staticmethod`, indicating an abstract staticmethod. Otherwise it is similar to :func:`abstractmethod`. C++ programmers should note that Python's virtual base class concept is not the same as C++'s. Check whether *subclass* is considered a subclass of this ABC.  This means that you can customize the behavior of ``issubclass`` further without the need to call :meth:`register` on every class you want to consider a subclass of the ABC.  (This class method is called from the :meth:`__subclasscheck__` method of the ABC.) Classes created with a metaclass of :class:`ABCMeta` have the following method: Dynamically adding abstract methods to a class, or attempting to modify the abstraction status of a method or class once it is created, are only supported using the :func:`update_abstractmethods` function.  The :func:`abstractmethod` only affects subclasses derived using regular inheritance; "virtual subclasses" registered with the ABC's :meth:`register` method are not affected. Finally, the last line makes ``Foo`` a virtual subclass of ``MyIterable``, even though it does not define an :meth:`~iterator.__iter__` method (it uses the old-style iterable protocol, defined in terms of :meth:`__len__` and :meth:`__getitem__`).  Note that this will not make ``get_iterator`` available as a method of ``Foo``, so it is provided separately. Footnotes For a demonstration of these concepts, look at this example ABC definition:: If *cls* is not an instance of :class:`ABCMeta`, does nothing. If only some components are abstract, only those components need to be updated to create a concrete property in a subclass:: In order to correctly interoperate with the abstract base class machinery, the descriptor must identify itself as abstract using :attr:`__isabstractmethod__`. In general, this attribute should be ``True`` if any of the methods used to compose the descriptor are abstract. For example, Python's built-in :class:`property` does the equivalent of:: It is now possible to use :class:`classmethod` with :func:`abstractmethod`, making this decorator redundant. It is now possible to use :class:`property`, :meth:`property.getter`, :meth:`property.setter` and :meth:`property.deleter` with :func:`abstractmethod`, making this decorator redundant. It is now possible to use :class:`staticmethod` with :func:`abstractmethod`, making this decorator redundant. Metaclass for defining Abstract Base Classes (ABCs). Note that the type of :class:`ABC` is still :class:`ABCMeta`, therefore inheriting from :class:`ABC` requires the usual precautions regarding metaclass usage, as multiple inheritance may lead to metaclass conflicts. One may also define an abstract base class by passing the metaclass keyword and using :class:`ABCMeta` directly, for example:: Register *subclass* as a "virtual subclass" of this ABC. For example:: Returns *cls*, to allow usage as a class decorator. Returns the current abstract base class cache token. Returns the registered subclass, to allow usage as a class decorator. The :meth:`__subclasshook__` class method defined here says that any class that has an :meth:`~iterator.__iter__` method in its :attr:`~object.__dict__` (or in that of one of its base classes, accessed via the :attr:`~class.__mro__` list) is considered a ``MyIterable`` too. The :mod:`abc` module also provides the following decorator: The :mod:`abc` module also provides the following functions: The :mod:`abc` module also supports the following legacy decorators: The :mod:`collections` module has some concrete classes that derive from ABCs; these can, of course, be further derived. In addition, the :mod:`collections.abc` submodule has some ABCs that can be used to test whether a class or instance provides a particular interface, for example, if it is hashable or if it is a mapping. The ABC ``MyIterable`` defines the standard iterable method, :meth:`~iterator.__iter__`, as an abstract method.  The implementation given here can still be called from subclasses.  The :meth:`get_iterator` method is also part of the ``MyIterable`` abstract base class, but it does not have to be overridden in non-abstract derived classes. The above example defines a read-only property; you can also define a read-write abstract property by appropriately marking one or more of the underlying methods as abstract:: The token is an opaque object (that supports equality testing) identifying the current version of the abstract base class cache for virtual subclasses. The token changes with every call to :meth:`ABCMeta.register` on any ABC. This function assumes that *cls*'s superclasses are already updated. It does not update any subclasses. This method should return ``True``, ``False`` or ``NotImplemented``.  If it returns ``True``, the *subclass* is considered a subclass of this ABC. If it returns ``False``, the *subclass* is not considered a subclass of this ABC, even if it would normally be one.  If it returns ``NotImplemented``, the subclass check is continued with the usual mechanism. This module provides the infrastructure for defining :term:`abstract base classes <abstract base class>` (ABCs) in Python, as outlined in :pep:`3119`; see the PEP for why this was added to Python. (See also :pep:`3141` and the :mod:`numbers` module regarding a type hierarchy for numbers based on ABCs.) This module provides the metaclass :class:`ABCMeta` for defining ABCs and a helper class :class:`ABC` to alternatively define ABCs through inheritance: This special case is deprecated, as the :func:`classmethod` decorator is now correctly identified as abstract when applied to an abstract method:: This special case is deprecated, as the :func:`property` decorator is now correctly identified as abstract when applied to an abstract method:: This special case is deprecated, as the :func:`staticmethod` decorator is now correctly identified as abstract when applied to an abstract method:: To detect calls to :meth:`register`, you can use the :func:`get_cache_token` function. Unlike Java abstract methods, these abstract methods may have an implementation. This implementation can be called via the :func:`super` mechanism from the class that overrides it.  This could be useful as an end-point for a super-call in a framework that uses cooperative multiple-inheritance. Use this metaclass to create an ABC.  An ABC can be subclassed directly, and then acts as a mix-in class.  You can also register unrelated concrete classes (even built-in classes) and unrelated ABCs as "virtual subclasses" -- these and their descendants will be considered subclasses of the registering ABC by the built-in :func:`issubclass` function, but the registering ABC won't show up in their MRO (Method Resolution Order) nor will method implementations defined by the registering ABC be callable (not even via :func:`super`). [#]_ Using this decorator requires that the class's metaclass is :class:`ABCMeta` or is derived from it.  A class that has a metaclass derived from :class:`ABCMeta` cannot be instantiated unless all of its abstract methods and properties are overridden.  The abstract methods can be called using any of the normal 'super' call mechanisms.  :func:`abstractmethod` may be used to declare abstract methods for properties and descriptors. When :func:`abstractmethod` is applied in combination with other method descriptors, it should be applied as the innermost decorator, as shown in the following usage examples:: You can also override this method in an abstract base class: Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:54+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 （必须定义为类方法。） **源代码：** :source:`Lib/abc.py` :mod:`abc` --- 抽象基类 用于声明抽象方法的装饰器。 重新计算一个抽象类的抽象状态的函数。 如果一个类的抽象方法在类被创建后被实现或被修改则应当调用此函数。 通常，此函数应当在一个类装饰器内部被调用。 一个使用 :class:`ABCMeta` 作为元类的工具类。抽象基类可以通过从 :class:`ABC` 派生来简单地创建，这就避免了在某些情况下会令人混淆的元类用法，例如： 内置 :func:`classmethod` 的子类，指明一个抽象类方法。 在其他方面它都类似于 :func:`abstractmethod`。 内置 :func:`property` 的子类，指明一个抽象特性属性。 内置 :func:`staticmethod` 的子类，指明一个抽象静态方法。 在其他方面它都类似于 :func:`abstractmethod`。 C++ 程序员需要注意：Python 中虚基类的概念和 C++ 中的并不相同。 检查 *subclass* 是否是该抽象基类的子类。也就是说对于那些你希望定义为该抽象基类的子类的类，你不用对每个类都调用 :meth:`register` 方法了，而是可以直接自定义 ``issubclass`` 的行为。（这个类方法是在抽象基类的 :meth:`__subclasscheck__` 方法中调用的。） 使用 :class:`ABCMeta` 作为元类创建的类含有如下方法： 动态地添加抽象方法到一个类，或尝试在方法或类被创建后修改其抽象状态等操作仅在使用 :func:`update_abstractmethods` 函数时受到支持。 :func:`abstractmethod` 只会影响使用常规继承所派生的子类；通过 ABC 的 :meth:`register` 方法注册的“虚子类”不会受到影响。 最后，末尾行使得 ``Foo`` 成为 ``MyIterable`` 的一个虚子类，即使它没有定义 :meth:`~iterator.__iter__` 方法（它使用了以 :meth:`__len__` 和 :meth:`__getitem__` 术语定义的旧式可迭代对象协议）。 请注意这将不会使 ``get_iterator`` 成为 ``Foo`` 的一个可用方法，它是被另外提供的。 备注 为了对这些概念做一演示，请看以下定义 ABC 的示例： 如果 *cls* 不是 :class:`ABCMeta` 的子类，则不做任何操作。 如果只有某些组件是抽象的，则只需更新那些组件即可在子类中创建具体的特征属性:: 为了能正确地与抽象基类机制实现互操作，描述符必须使用 :attr:`__isabstractmethod__` 将自身标识为抽象的。 通常，如果被用于组成描述符的任何方法都是抽象的则此属性应当为 ``True``。 例如，Python 的内置 :class:`property` 所做的就等价于:: 现在可以让 :class:`classmethod` 配合 :func:`abstractmethod` 使用，使得此装饰器变得冗余。 现在可以让 :class:`property`, :meth:`property.getter`, :meth:`property.setter` 和 :meth:`property.deleter` 配合 :func:`abstractmethod` 使用，使得此装饰器变得冗余。 现在可以让 :class:`staticmethod` 配合 :func:`abstractmethod` 使用，使得此装饰器变得冗余。 用于定义抽象基类（ABC）的元类。 注意 :class:`ABC` 的类型仍然是 :class:`ABCMeta`，因此继承 :class:`ABC` 仍然需要关注元类使用中的注意事项，比如可能会导致元类冲突的多重继承。当然你也可以直接使用 :class:`ABCMeta` 作为元类来定义抽象基类，例如： 将“子类”注册为该抽象基类的“抽象子类”，例如： 返回 *cls*，使其能够用作类装饰器。 返回当前抽象基类的缓存令牌 返回注册的子类，使其能够作为类装饰器。 这里定义的 :meth:`__subclasshook__` 类方法指明了任何在其 :attr:`~object.__dict__` (或在其通过 :attr:`~class.__mro__` 列表访问的基类) 中具有 :meth:`~iterator.__iter__` 方法的类也都会被视为 ``MyIterable``。 此外，:mod:`abc` 模块还提供了这些装饰器： :mod:`abc` 模块还提供了这些函数： :mod:`abc` 模块还支持下列旧式装饰器: :mod:`collections` 模块中有一些派生自 ABC 的具体类；当然这些类还可以进一步被派生。此外，:mod:`collections.abc` 子模块中有一些 ABC 可被用于测试一个类或实例是否提供特定的接口，例如它是否可哈希或它是否为映射等。 ABC ``MyIterable`` 定义了标准的迭代方法 :meth:`~iterator.__iter__` 作为一个抽象方法。这里给出的实现仍可在子类中被调用。:meth:`get_iterator` 方法也是 ``MyIterable`` 抽象基类的一部分，但它并非必须被非抽象派生类所重载。 上面的例子定义了一个只读特征属性；你也可以通过适当地将一个或多个下层方法标记为抽象的来定义可读写的抽象特征属性:: 此令牌是一个不透明对象（支持相等性测试），用于为虚子类标识抽象基类缓存的当前版本。 此令牌会在任何 ABC 上每次调用 :meth:`ABCMeta.register` 时发生更改。 此函数会假定 *cls* 的上级类已经被更新。 它不会更新任何子类。 该方法必须返回 ``True``, ``False`` 或是 ``NotImplemented``。如果返回 ``True``，*subclass* 就会被认为是这个抽象基类的子类。如果返回 ``False``，无论正常情况是否应该认为是其子类，统一视为不是。如果返回 ``NotImplemented``，子类检查会按照正常机制继续执行。 该模块提供了在 Python 中定义 :term:`抽象基类 <abstract base class>` (ABC) 的组件，在 :pep:`3119` 中已有概述。查看 PEP 文档了解为什么需要在 Python 中增加这个模块。（也可查看 :pep:`3141` 以及 :mod:`numbers` 模块了解基于 ABC 的数字类型继承关系。） 该模块提供了一个元类 :class:`ABCMeta`，可以用来定义抽象类，另外还提供一个工具类 :class:`ABC`，可以用它以继承的方式定义抽象基类。 这个特例已被弃用，因为现在当 :func:`classmethod` 装饰器应用于抽象方法时它会被正确地标识为抽象的:: 这个特例已被弃用，因为现在当 :func:`property` 装饰器应用于抽象方法时它会被正确地标识为抽象的:: 这个特例已被弃用，因为现在当 :func:`staticmethod` 装饰器应用于抽象方法时它会被正确地标识为抽象的:: 你可以使用 :func:`get_cache_token` 函数来检测对 :meth:`register` 的调用。 不同于 Java 抽象方法，这些抽象方法可能具有一个实现。 这个实现可在重载它的类上通过 :func:`super` 机制来调用。 这在使用协作多重继承的框架中可以被用作超调用的一个端点。 使用该元类以创建抽象基类。抽象基类可以像 mix-in 类一样直接被子类继承。你也可以将不相关的具体类（包括内建类）和抽象基类注册为“抽象子类” —— 这些类以及它们的子类会被内建函数 :func:`issubclass` 识别为对应的抽象基类的子类，但是该抽象基类不会出现在其 MRO（Method Resolution Order，方法解析顺序）中，抽象基类中实现的方法也不可调用（即使通过 :func:`super` 调用也不行）。[#]_ 使用此装饰器要求类的元类是 :class:`ABCMeta` 或是从该类派生。一个具有派生自 :class:`ABCMeta` 的元类的类不可以被实例化，除非它全部的抽象方法和特征属性均已被重载。抽象方法可通过任何普通的“super”调用机制来调用。 :func:`abstractmethod` 可被用于声明特性属性和描述器的抽象方法。 当 :func:`abstractmethod` 与其他方法描述符配合应用时，它应当被应用为最内层的装饰器，如以下用法示例所示:: 你也可以在虚基类中重载这个方法。 