Þ          ´               L  F   M  ë    ö        w  )     Ñ   ´  »     Z   B  ¡     ?   ?      o     Ö   ý  â   Ô	  m   ·
  v   %  ¨    ·   E  ½  ý  @   »  ¬  ü  Ó   ©     }  %     Ð   °  Ç     ?   I  ½     >   G  Ü     c   c  â   Ç  Ì   ª  b   w  u   Ú  y  P  ·   Ê   A small number of constants live in the built-in namespace.  They are: A special value which should be returned by the binary special methods (e.g. :meth:`__eq__`, :meth:`__lt__`, :meth:`__add__`, :meth:`__rsub__`, etc.) to indicate that the operation is not implemented with respect to the other type; may be returned by the in-place binary special methods (e.g. :meth:`__imul__`, :meth:`__iand__`, etc.) for the same purpose. It should not be evaluated in a boolean context. ``NotImplemented`` is the sole instance of the :data:`types.NotImplementedType` type. An object frequently used to represent the absence of a value, as when default arguments are not passed to a function. Assignments to ``None`` are illegal and raise a :exc:`SyntaxError`. ``None`` is the sole instance of the :data:`NoneType` type. Built-in Constants Constants added by the :mod:`site` module Evaluating ``NotImplemented`` in a boolean context is deprecated. While it currently evaluates as true, it will emit a :exc:`DeprecationWarning`. It will raise a :exc:`TypeError` in a future version of Python. Object that when printed, prints the message "Type license() to see the full license text", and when called, displays the full license text in a pager-like fashion (one screen at a time). Objects that when printed or called, print the text of copyright or credits, respectively. Objects that when printed, print a message like "Use quit() or Ctrl-D (i.e. EOF) to exit", and when called, raise :exc:`SystemExit` with the specified exit code. See :ref:`implementing-the-arithmetic-operations` for examples. The :mod:`site` module (which is imported automatically during startup, except if the :option:`-S` command-line option is given) adds several constants to the built-in namespace.  They are useful for the interactive interpreter shell and should not be used in programs. The false value of the :class:`bool` type. Assignments to ``False`` are illegal and raise a :exc:`SyntaxError`. The names :data:`None`, :data:`False`, :data:`True` and :data:`__debug__` cannot be reassigned (assignments to them, even as an attribute name, raise :exc:`SyntaxError`), so they can be considered "true" constants. The same as the ellipsis literal "``...``". Special value used mostly in conjunction with extended slicing syntax for user-defined container data types. ``Ellipsis`` is the sole instance of the :data:`types.EllipsisType` type. The true value of the :class:`bool` type. Assignments to ``True`` are illegal and raise a :exc:`SyntaxError`. This constant is true if Python was not started with an :option:`-O` option. See also the :keyword:`assert` statement. When a binary (or in-place) method returns ``NotImplemented`` the interpreter will try the reflected operation on the other type (or some other fallback, depending on the operator).  If all attempts return ``NotImplemented``, the interpreter will raise an appropriate exception. Incorrectly returning ``NotImplemented`` will result in a misleading error message or the ``NotImplemented`` value being returned to Python code. ``NotImplementedError`` and ``NotImplemented`` are not interchangeable, even though they have similar names and purposes. See :exc:`NotImplementedError` for details on when to use it. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:57+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 æå°æ°çå¸¸éå­å¨äºåç½®å½åç©ºé´ä¸­ã å®ä»¬æ¯ï¼ åºå½ç±åç®è¿ç®ç¹æ®æ¹æ³ï¼å¦ :meth:`__eq__`, :meth:`__lt__`, :meth:`__add__`, :meth:`__rsub__` ç­ï¼è¿åçç¹æ®å¼ï¼ç¨äºè¡¨æè¿ç®æ²¡æéå¯¹å¶ä»ç±»åçå®ç°ï¼ä¹å¯ç±åå°åç®è¿ç®ç¹æ®æ¹æ³ï¼å¦ :meth:`__imul__`, :meth:`__iand__` ç­ï¼åºäºåæ ·çç®çèè¿åã å®ä¸åºå¨å¸å°è¿ç®ä¸­è¢«æ±å¼ã ``NotImplemented`` æ¯ :data:`types.NotImplementedType` ç±»åçå¯ä¸å®ä¾ã éå¸¸è¢«ç¨æ¥ä»£è¡¨ç©ºå¼çå¯¹è±¡ï¼ä¾å¦å¨æªåæä¸ªå½æ°ä¼ å¥é»è®¤åæ°æ¶ã ç» ``None`` èµå¼æ¯éæ³çå¹¶ä¼å¼å :exc:`SyntaxError`ã ``None`` æ¯ :data:`NoneType` ç±»åçå¯ä¸å®ä¾ã åç½®å¸¸é ç± :mod:`site` æ¨¡åæ·»å çå¸¸é ä½ä¸ºå¸å°å¼æ¥è§£è¯» ``NotImplemented`` å·²è¢«å¼ç¨ã è½ç¶å®ç®åä¼è¢«è§£è¯»ä¸ºçå¼ï¼ä½å°åæ¶ååº :exc:`DeprecationWarning`ã å®å°å¨æªæ¥ç Python çæ¬ä¸­å¼å :exc:`TypeError`ã å½æå°æ­¤å¯¹è±¡æ¶ï¼ä¼æå°åºä¸æ¡æ¶æ¯âType license() to see the full license textâï¼å½è°ç¨æ­¤å¯¹è±¡æ¶ï¼å°ä»¥åé¡µå½¢å¼æ¾ç¤ºå®æ´çè®¸å¯è¯ææ¬ï¼æ¯æ¬¡æ¾ç¤ºä¸å±ï¼ã æå°æè°ç¨çå¯¹è±¡åå«æå°çææä½èçææ¬ã å½æå°æ­¤å¯¹è±¡æ¶ï¼ä¼æå°åºä¸æ¡æ¶æ¯ï¼ä¾å¦âUse quit() or Ctrl-D (i.e. EOF) to exitâï¼å½è°ç¨æ­¤å¯¹è±¡æ¶ï¼å°ä½¿ç¨æå®çéåºä»£ç æ¥å¼å :exc:`SystemExit`ã åè§ :ref:`implementing-the-arithmetic-operations` ä¸ºä¾ã :mod:`site` æ¨¡åï¼å¨å¯å¨æé´èªå¨å¯¼å¥ï¼é¤éç»åº :option:`-S` å½ä»¤è¡éé¡¹ï¼å°å ä¸ªå¸¸éæ·»å å°åç½®å½åç©ºé´ã å®ä»¬å¯¹äº¤äºå¼è§£éå¨ shell å¾æç¨ï¼å¹¶ä¸ä¸åºå¨ç¨åºä¸­ä½¿ç¨ã :class:`bool` ç±»åçåå¼ã ç» ``False`` èµå¼æ¯éæ³çå¹¶ä¼å¼å :exc:`SyntaxError`ã åéå :data:`None`ï¼:data:`False`ï¼:data:`True` å :data:`__ debug__` æ æ³éæ°èµå¼ï¼èµå¼ç»å®ä»¬ï¼å³ä½¿æ¯å±æ§åï¼å°å¼å :exc:`SyntaxError` ï¼ï¼æä»¥å®ä»¬å¯ä»¥è¢«è®¤ä¸ºæ¯âçæ­£çâå¸¸æ°ã ä¸çç¥å·å­é¢å¼ "``...``" ç¸åã è¯¥ç¹æ®å¼ä¸»è¦æ¯ä¸ç¨æ·å®ä¹çå®¹å¨æ°æ®ç±»åçæ©å±åçè¯­æ³ç»åä½¿ç¨ã ``Ellipsis`` æ¯ :data:`types.EllipsisType` ç±»åçå¯ä¸å®ä¾ã :class:`bool` ç±»åççå¼ã ç» ``True`` èµå¼æ¯éæ³çå¹¶ä¼å¼å :exc:`SyntaxError`ã å¦æ Python æ²¡æä»¥ :option:`-O` éé¡¹å¯å¨ï¼åæ­¤å¸¸éä¸ºçå¼ã å¦è¯·åè§ :keyword:`assert` è¯­å¥ã å½äºè¿å¶ï¼æå°±å°ï¼æ¹æ³è¿å``NotImplemented``æ¶ï¼è§£éå¨å°å°è¯å¯¹å¦ä¸ç§ç±»åï¼æå¶ä»ä¸äºåæ»æä½ï¼åå³äºè¿ç®ç¬¦ï¼çåå°æä½ã å¦æææå°è¯é½è¿å``NotImplemented``ï¼åè§£éå¨å°å¼åéå½çå¼å¸¸ã éè¯¯è¿åç``NotImplemented``å°å¯¼è´è¯¯å¯¼æ§éè¯¯æ¶æ¯æè¿åå°Pythonä»£ç ä¸­ç``NotImplemented``å¼ã ``NotImplementedError`` å ``NotImplemented`` ä¸å¯äºæ¢ï¼å³ä½¿å®ä»¬æç¸ä¼¼çåç§°åç¨éã æå³ä½æ¶ä½¿ç¨å®çè¯¦ç»ä¿¡æ¯ï¼è¯·åé :exc:`NotImplementedError`ã 