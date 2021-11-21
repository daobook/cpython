��          �                 (     .   6  �   e       "   5  �   X  �   �     �  !     �   #  k   �  
   .  �   9  �   �  �  �  !   B  '   d  �   �     <	      O	  �   p	    �	     �
  $   
  �   /  u   �     /  �   ;  �   �   :mod:`unittest.mock` --- getting started Common uses for :class:`Mock` objects include: In most of these examples the :class:`Mock` and :class:`MagicMock` classes are interchangeable. As the ``MagicMock`` is the more capable class it makes a sensible one to use by default. Mock Patching Methods Mock for Method Calls on an Object Once our mock has been used (``real.method`` in this example) it has methods and attributes that allow you to make assertions about how it has been used. Once the mock has been called its :attr:`~Mock.called` attribute is set to ``True``. More importantly we can use the :meth:`~Mock.assert_called_with` or :meth:`~Mock.assert_called_once_with` method to check that it was called with the correct arguments. Patching methods Recording method calls on objects There is also :func:`patch.dict` for setting values in a dictionary just during a scope and restoring the dictionary to its original state when the test ends: This example tests that calling ``ProductionClass().method`` results in a call to the ``something`` method: Using Mock With :func:`patch` it matters that you patch objects in the namespace where they are looked up. This is normally straightforward, but for a quick guide read :ref:`where to patch <where-to-patch>`. You might want to replace a method on an object to check that it is called with the correct arguments by another part of the system: Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: kevin wong <huagang517@126.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :mod:`unittest.mock` 上手指南 使用 :class:`Mock` 的常见场景： 在多数示例中，:class:`Mock` 与 :class:`MagicMock` 两个类可以相互替换，而 ``MagicMock`` 是一个更适用的类，通常情况下，使用它就可以了。 模拟方法调用 对象上的方法调用的 mock 使用了 mock（本例中的 ``real.method``）之后，它有方法和属性可以让你针对它是被如何使用的下断言。 如果 mock 被调用，它的 :attr:`~Mock.called` 属性就会变成 ``True``，更重要的是，我们可以使用 :meth:`~Mock.assert_called_with` 或者 :meth:`~Mock.assert_called_once_with` 方法来确认它在被调用时使用了正确的参数。 模拟函数调用 记录“对象上的方法调用” 还有一个 :func:`patch.dict` 用于在一定范围内设置字典中的值，并在测试结束时将字典恢复为其原始状态： 在如下的测试示例中，验证对于 ``ProductionClass().method`` 的调用会导致 ``something`` 的调用。 使用 mock 在查找对象的名称空间中修补对象使用 :func:`patch` 。使用起来很简单，阅读 :ref:`在哪里打补丁 <where-to-patch>` 来快速上手。 你可能需要替换一个对象上的方法，用于确认此方法被系统中的其他部分调用过，并且调用时使用了正确的参数。 