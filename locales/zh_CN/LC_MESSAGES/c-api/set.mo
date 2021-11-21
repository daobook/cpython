Þ          Ü                 Ì    &   j  :     º  Ì        
  <      M	  ×   P
  s   (  n     m        y  g        n     õ                 ^   ¨  X        `  %    ½  '  ã  å  '   É  9   ñ  Î  +    ú  ,    Q  À  ÷     Ó   
      Þ      _!  z   à!     ["  z   í"     h#     ÿ#  g   $  |   t$     ñ$  W   %  Q   Ü%    .&    ´(   Add *key* to a :class:`set` instance.  Also works with :class:`frozenset` instances (like :c:func:`PyTuple_SetItem` it can be used to fill-in the values of brand new frozensets before they are exposed to other code).  Return ``0`` on success or ``-1`` on failure. Raise a :exc:`TypeError` if the *key* is unhashable. Raise a :exc:`MemoryError` if there is no room to grow.  Raise a :exc:`SystemError` if *set* is not an instance of :class:`set` or its subtype. Empty an existing set of all elements. Macro form of :c:func:`PySet_Size` without error checking. Return ``1`` if found and removed, ``0`` if not found (no action taken), and ``-1`` if an error is encountered.  Does not raise :exc:`KeyError` for missing keys.  Raise a :exc:`TypeError` if the *key* is unhashable.  Unlike the Python :meth:`~set.discard` method, this function does not automatically convert unhashable sets into temporary frozensets. Raise :exc:`PyExc_SystemError` if *set* is not an instance of :class:`set` or its subtype. Return ``1`` if found, ``0`` if not found, and ``-1`` if an error is encountered.  Unlike the Python :meth:`__contains__` method, this function does not automatically convert unhashable sets into temporary frozensets.  Raise a :exc:`TypeError` if the *key* is unhashable. Raise :exc:`PyExc_SystemError` if *anyset* is not a :class:`set`, :class:`frozenset`, or an instance of a subtype. Return a new :class:`frozenset` containing objects returned by the *iterable*. The *iterable* may be ``NULL`` to create a new empty frozenset.  Return the new set on success or ``NULL`` on failure.  Raise :exc:`TypeError` if *iterable* is not actually iterable. Return a new :class:`set` containing objects returned by the *iterable*.  The *iterable* may be ``NULL`` to create a new empty set.  Return the new set on success or ``NULL`` on failure.  Raise :exc:`TypeError` if *iterable* is not actually iterable.  The constructor is also useful for copying a set (``c=set(s)``). Return a new reference to an arbitrary object in the *set*, and removes the object from the *set*.  Return ``NULL`` on failure.  Raise :exc:`KeyError` if the set is empty. Raise a :exc:`SystemError` if *set* is not an instance of :class:`set` or its subtype. Return the length of a :class:`set` or :class:`frozenset` object. Equivalent to ``len(anyset)``.  Raises a :exc:`PyExc_SystemError` if *anyset* is not a :class:`set`, :class:`frozenset`, or an instance of a subtype. Return true if *p* is a :class:`frozenset` object but not an instance of a subtype.  This function always succeeds. Return true if *p* is a :class:`frozenset` object or an instance of a subtype.  This function always succeeds. Return true if *p* is a :class:`set` object but not an instance of a subtype.  This function always succeeds. Return true if *p* is a :class:`set` object or a :class:`frozenset` object but not an instance of a subtype.  This function always succeeds. Return true if *p* is a :class:`set` object or an instance of a subtype. This function always succeeds. Return true if *p* is a :class:`set` object, a :class:`frozenset` object, or an instance of a subtype.  This function always succeeds. Set Objects The following functions and macros are available for instances of :class:`set` or :class:`frozenset` or instances of their subtypes. The following functions are available for instances of :class:`set` or its subtypes but not for instances of :class:`frozenset` or its subtypes. The following type check macros work on pointers to any Python object. Likewise, the constructor functions work with any iterable Python object. This is an instance of :c:type:`PyTypeObject` representing the Python :class:`frozenset` type. This is an instance of :c:type:`PyTypeObject` representing the Python :class:`set` type. This section details the public API for :class:`set` and :class:`frozenset` objects.  Any functionality not listed below is best accessed using the either the abstract object protocol (including :c:func:`PyObject_CallMethod`, :c:func:`PyObject_RichCompareBool`, :c:func:`PyObject_Hash`, :c:func:`PyObject_Repr`, :c:func:`PyObject_IsTrue`, :c:func:`PyObject_Print`, and :c:func:`PyObject_GetIter`) or the abstract number protocol (including :c:func:`PyNumber_And`, :c:func:`PyNumber_Subtract`, :c:func:`PyNumber_Or`, :c:func:`PyNumber_Xor`, :c:func:`PyNumber_InPlaceAnd`, :c:func:`PyNumber_InPlaceSubtract`, :c:func:`PyNumber_InPlaceOr`, and :c:func:`PyNumber_InPlaceXor`). This subtype of :c:type:`PyObject` is used to hold the internal data for both :class:`set` and :class:`frozenset` objects.  It is like a :c:type:`PyDictObject` in that it is a fixed size for small sets (much like tuple storage) and will point to a separate, variable sized block of memory for medium and large sized sets (much like list storage). None of the fields of this structure should be considered public and are subject to change.  All access should be done through the documented API rather than by manipulating the values in the structure. Project-Id-Version: Python 3.10
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
 æ·»å  *key* å°ä¸ä¸ª :class:`set` å®ä¾ã ä¹å¯ç¨äº :class:`frozenset` å®ä¾ï¼ç±»ä¼¼äº :c:func:`PyTuple_SetItem`ï¼å®å¯è¢«ç¨æ¥ä¸ºå¨æ°å»ç»éåå¨å¬å¼ç»å¶ä»ä»£ç ä¹åå¡«åå¨æ°çå¼ï¼ã æåæ¶è¿å ``0``ï¼å¤±è´¥æ¶è¿å ``-1``ã å¦æ *key* ä¸ºä¸å¯åå¸å¯¹è±¡åä¼å¼å :exc:`TypeError`ã å¦ææ²¡æå¢é¿ç©ºé´åä¼å¼å :exc:`MemoryError`ã å¦æ *set* ä¸æ¯ :class:`set` æå¶å­ç±»åçå®ä¾åä¼å¼å :exc:`SystemError`ã æ¸ç©ºç°æå­å¸çææé®å¼å¯¹ã å®çæ¬ç :c:func:`PySet_Size`ï¼ä¸å¸¦éè¯¯æ£æµã å¦ææ¾å°å¹¶ç§»é¤è¿å ``1``ï¼å¦ææªæ¾å°ï¼æ æä½ï¼è¿å ``0``ï¼å¦æéå°éè¯¯åè¿å ``-1``ã å¯¹äºä¸å­å¨çé®ä¸ä¼å¼å :exc:`KeyError`ã å¦æ *key* ä¸ºä¸å¯åå¸å¯¹è±¡åä¼å¼å :exc:`TypeError`ã ä¸åäº Python :meth:`~set.discard` æ¹æ³ï¼æ­¤å½æ°ä¸ä¼èªå¨å°ä¸å¯åå¸çéåè½¬æ¢ä¸ºä¸´æ¶çå»ç»éåã å¦æ *set* ä¸æ¯ :class:`set` æå¶å­ç±»åçå®ä¾åä¼å¼å :exc:`PyExc_SystemError`ã å¦ææ¾å°è¿å ``1``ï¼å¦ææªæ¾å°è¿å ``0``ï¼å¦æéå°éè¯¯åè¿å ``-1``ã ä¸åäº Python :meth:`__contains__` æ¹æ³ï¼æ­¤å½æ°ä¸ä¼èªå¨å°ä¸å¯åå¸çéåè½¬æ¢ä¸ºä¸´æ¶çå»ç»éåã å¦æ *key* ä¸ºä¸å¯åå¸å¯¹è±¡åä¼å¼å :exc:`TypeError`ã å¦æ *anyset* ä¸æ¯ :class:`set`, :class:`frozenset` æå¶å­ç±»åçå®ä¾åä¼å¼å :exc:`PyExc_SystemError`ã è¿åä¸ä¸ªæ°ç :class:`frozenset`ï¼å¶ä¸­åå« *iterable* æè¿åçå¯¹è±¡ã *iterable* å¯ä»¥ä¸º ``NULL`` è¡¨ç¤ºåå»ºä¸ä¸ªæ°çç©ºå»ç»éåã æåæ¶è¿åæ°çå»ç»éåï¼å¤±è´¥æ¶è¿å ``NULL``ã å¦æ *iterable* å®éä¸ä¸æ¯å¯è¿­ä»£å¯¹è±¡åå¼å :exc:`TypeError`ã è¿åä¸ä¸ªæ°ç :class:`set`ï¼å¶ä¸­åå« *iterable* æè¿åçå¯¹è±¡ã *iterable* å¯ä»¥ä¸º ``NULL`` è¡¨ç¤ºåå»ºä¸ä¸ªæ°çç©ºéåã æåæ¶è¿åæ°çéåï¼å¤±è´¥æ¶è¿å ``NULL``ã å¦æ *iterable* å®éä¸ä¸æ¯å¯è¿­ä»£å¯¹è±¡åå¼å :exc:`TypeError`ã è¯¥æé å¨ä¹éç¨äºæ·è´éå (``c=set(s)``)ã è¿å *set* ä¸­ä»»æå¯¹è±¡çæ°å¼ç¨ï¼å¹¶ä» *set* ä¸­ç§»é¤è¯¥å¯¹è±¡ã å¤±è´¥æ¶è¿å ``NULL``ã å¦æéåä¸ºç©ºåä¼å¼å :exc:`KeyError`ã å¦æ *set* ä¸æ¯ :class:`set` æå¶å­ç±»åçå®ä¾åä¼å¼å :exc:`SystemError`ã è¿å :class:`set` æ :class:`frozenset` å¯¹è±¡çé¿åº¦ã ç­ä»·äº ``len(anyset)``ã å¦æ *anyset* ä¸æ¯ :class:`set`, :class:`frozenset` æå¶å­ç±»åçå®ä¾åä¼å¼å :exc:`PyExc_SystemError`ã å¦æ *p* æ¯ä¸ä¸ª :class:`frozenset` å¯¹è±¡ä½ä¸æ¯å¶å­ç±»åçå®ä¾åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æ *p* æ¯ä¸ä¸ª :class:`frozenset` å¯¹è±¡æèæ¯å¶å­ç±»åçå®ä¾åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æ *p* æ¯ä¸ä¸ª :class:`set` å¯¹è±¡ä½ä¸æ¯å¶å­ç±»åçå®ä¾åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æ *p* æ¯ä¸ä¸ª :class:`set` æ :class:`frozenset` å¯¹è±¡ä½ä¸æ¯å¶å­ç±»åçå®ä¾åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æ *p* æ¯ä¸ä¸ª :class:`set` å¯¹è±¡æèæ¯å¶å­ç±»åçå®ä¾åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æ *p* æ¯ä¸ä¸ª :class:`set` å¯¹è±¡ã:class:`frozenset` å¯¹è±¡æèæ¯å¶å­ç±»åçå®ä¾åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã éåå¯¹è±¡ ä¸åå½æ°åå®éç¨äº :class:`set` æ :class:`frozenset` çå®ä¾ææ¯å¶å­ç±»åçå®ä¾ã ä¸åå½æ°éç¨äº :class:`set` æå¶å­ç±»åçå®ä¾ï¼ä½ä¸å¯ç¨äº :class:`frozenset` æå¶å­ç±»åçå®ä¾ã ä¸åç±»åæ£æ¥å®éç¨äºæåä»»æ Python å¯¹è±¡çæéã ç±»ä¼¼å°ï¼è¿äºæé å½æ°ä¹éç¨äºä»»æå¯è¿­ä»£ç Python å¯¹è±¡ã è¿æ¯ä¸ä¸ª :c:type:`PyTypeObject` å®ä¾ï¼è¡¨ç¤º Python :class:`frozenset` ç±»åã è¿æ¯ä¸ä¸ª :c:type:`PyTypeObject` å®ä¾ï¼è¡¨ç¤º Python :class:`set` ç±»åã è¿ä¸ç« èè¯¦ç»ä»ç»äº :class:`set` å :class:`frozenset` å¯¹è±¡çå¬å± APIã ä»»ä½æªå¨ä¸é¢ååºçåè½æå¥½æ¯ä½¿ç¨æ½è±¡å¯¹è±¡åè®® (åæ¬ :c:func:`PyObject_CallMethod`, :c:func:`PyObject_RichCompareBool`, :c:func:`PyObject_Hash`, :c:func:`PyObject_Repr`, :c:func:`PyObject_IsTrue`, :c:func:`PyObject_Print` ä»¥å :c:func:`PyObject_GetIter`) æèæ½è±¡æ°å­åè®® (åæ¬ :c:func:`PyNumber_And`, :c:func:`PyNumber_Subtract`, :c:func:`PyNumber_Or`, :c:func:`PyNumber_Xor`, :c:func:`PyNumber_InPlaceAnd`, :c:func:`PyNumber_InPlaceSubtract`, :c:func:`PyNumber_InPlaceOr` ä»¥å :c:func:`PyNumber_InPlaceXor`) æ¥è®¿é®ã è¿ä¸ª :c:type:`PyObject` çå­ç±»åè¢«ç¨æ¥ä¿å­ :class:`set` å :class:`frozenset` å¯¹è±¡çåé¨æ°æ®ã å®ç±»ä¼¼äº :c:type:`PyDictObject`ï¼å ä¸ºå¯¹äºå°å°ºå¯¸éåæ¥è¯´å®æ¯åºå®å¤§å°çï¼å¾ååç»çå­å¨æ¹å¼ï¼ï¼å¹¶ä¸å¯¹äºä¸­ç­åå¤§å°ºå¯¸éåæ¥è¯´å®å°æååç¬çå¯åå¤§å°çåå­åï¼å¾ååè¡¨çå­å¨æ¹å¼ï¼ã æ­¤ç»æä½çå­æ®µä¸åºè¢«è§ä¸ºå¬æå¹¶ä¸å¯è½åçæ¹åã ææè®¿é®åºå½éè¿å·²åå¥ææ¡£ç API æ¥è¿è¡ï¼èä¸å¯éè¿æçºµç»æä½ä¸­çå¼ã 