Þ                          -     +   ;     g              ¢  /   9  (  i  	            (  Ô   ?	  þ   
  ì               )  ²  Ú  Ü  Ï   ·       ´    0   ½  ç  î  ß  Ö    ¶  ö   Ê  Q   Á      ¦   ,    Ó  ½  ñ  +   ¯!      Û!     ü!     "  ò  7"     *$  )   µ$  Q  ß$     1&     8&    Ë&     ê(  
  )  Þ   *  ¡   j+  3  ,    @-  Å  V.  Û   0     ø0  9  ~1  6   ¸3  Ð  ï3  ¿  À5     8  Õ   9  1   W:    :  º   ;  #  R<   **Source code:** :source:`Lib/email/utils.py` :mod:`email.utils`: Miscellaneous utilities Added the *charset* option. Added the *domain* keyword. Attempts to parse a date according to the rules in :rfc:`2822`. however, some mailers don't follow that format as specified, so :func:`parsedate` tries to guess correctly in such cases.  *date* is a string containing an :rfc:`2822` date, such as  ``"Mon, 20 Nov 1995 19:12:08 -0500"``.  If it succeeds in parsing the date, :func:`parsedate` returns a 9-tuple that can be passed directly to :func:`time.mktime`; otherwise ``None`` will be returned.  Note that indexes 6, 7, and 8 of the result tuple are not usable. Decode parameters list according to :rfc:`2231`.  *params* is a sequence of 2-tuples containing elements of the form ``(content-type, string-value)``. Decode the string *s* according to :rfc:`2231`. Encode the string *s* according to :rfc:`2231`.  Optional *charset* and *language*, if given is the character set name and language name to use.  If neither is given, *s* is returned as-is.  If *charset* is given but *language* is not, the string is encoded using the empty string for *language*. Footnotes For convenience, if the *value* passed to :func:`collapse_rfc2231_value` is not a tuple, it should be a string and it is returned unquoted. Like ``formatdate``, but the input is a :mod:`datetime` instance.  If it is a naive datetime, it is assumed to be "UTC with no information about the source timezone", and the conventional ``-0000`` is used for the timezone. If it is an aware ``datetime``, then the numeric timezone offset is used. If it is an aware timezone with offset zero, then *usegmt* may be set to ``True``, in which case the string ``GMT`` is used instead of the numeric timezone offset.  This provides a way to generate standards conformant HTTP date headers. Note that the sign of the timezone offset is the opposite of the sign of the ``time.timezone`` variable for the same timezone; the latter variable follows the POSIX standard while this module follows :rfc:`2822`. Optional *charset* is the character set that will be used in the :rfc:`2047` encoding of the ``realname`` if the ``realname`` contains non-ASCII characters.  Can be an instance of :class:`str` or a :class:`~email.charset.Charset`.  Defaults to ``utf-8``. Optional *localtime* is a flag that when ``True``, interprets *timeval*, and returns a date relative to the local timezone instead of UTC, properly taking daylight savings time into account. The default is ``False`` meaning UTC is used. Optional *timeval* if given is a floating point time value as accepted by :func:`time.gmtime` and :func:`time.localtime`, otherwise the current time is used. Optional *usegmt* is a flag that when ``True``, outputs a  date string with the timezone as an ascii string ``GMT``, rather than a numeric ``-0000``. This is needed for some protocols (such as HTTP). This only applies when *localtime* is ``False``.  The default is ``False``. Parse address -- which should be the value of some address-containing field such as :mailheader:`To` or :mailheader:`Cc` -- into its constituent *realname* and *email address* parts.  Returns a tuple of that information, unless the parse fails, in which case a 2-tuple of ``('', '')`` is returned. Performs the same function as :func:`parsedate`, but returns either ``None`` or a 10-tuple; the first 9 elements make up a tuple that can be passed directly to :func:`time.mktime`, and the tenth is the offset of the date's timezone from UTC (which is the official term for Greenwich Mean Time) [#]_.  If the input string has no timezone, the last element of the tuple returned is ``0``, which represents UTC. Note that indexes 6, 7, and 8 of the result tuple are not usable. Return a new string which is an *unquoted* version of *str*. If *str* ends and begins with double quotes, they are stripped off.  Likewise if *str* ends and begins with angle brackets, they are stripped off. Return a new string with backslashes in *str* replaced by two backslashes, and double quotes replaced by backslash-double quote. Return local time as an aware datetime object.  If called without arguments, return current time.  Otherwise *dt* argument should be a :class:`~datetime.datetime` instance, and it is converted to the local time zone according to the system time zone database.  If *dt* is naive (that is, ``dt.tzinfo`` is ``None``), it is assumed to be in local time.  In this case, a positive or zero value for *isdst* causes ``localtime`` to presume initially that summer time (for example, Daylight Saving Time) is or is not (respectively) in effect for the specified time.  A negative value for *isdst* causes the ``localtime`` to attempt to divine whether summer time is in effect for the specified time. Returns a date string as per :rfc:`2822`, e.g.:: Returns a string suitable for an :rfc:`2822`\ -compliant :mailheader:`Message-ID` header.  Optional *idstring* if given, is a string used to strengthen the uniqueness of the message id.  Optional *domain* if given provides the portion of the msgid after the '@'.  The default is the local hostname.  It is not normally necessary to override this default, but may be useful certain cases, such as a constructing distributed system that uses a consistent domain name across multiple hosts. The inverse of :func:`format_datetime`.  Performs the same function as :func:`parsedate`, but on success returns a :mod:`~datetime.datetime`; otherwise ``ValueError`` is raised if *date* contains an invalid value such as an hour greater than 23 or a timezone offset not between -24 and 24 hours. If the input date has a timezone of ``-0000``, the ``datetime`` will be a naive ``datetime``, and if the date is conforming to the RFCs it will represent a time in UTC but with no indication of the actual source timezone of the message the date comes from.  If the input date has any other valid timezone offset, the ``datetime`` will be an aware ``datetime`` with the corresponding a :class:`~datetime.timezone` :class:`~datetime.tzinfo`. The inverse of :meth:`parseaddr`, this takes a 2-tuple of the form ``(realname, email_address)`` and returns the string value suitable for a :mailheader:`To` or :mailheader:`Cc` header.  If the first element of *pair* is false, then the second element is returned unmodified. The remaining functions are part of the legacy (``Compat32``) email API.  There is no need to directly use these with the new API, since the parsing and formatting they provide is done automatically by the header parsing machinery of the new API. There are a couple of useful utilities provided in the :mod:`email.utils` module: This method returns a list of 2-tuples of the form returned by ``parseaddr()``. *fieldvalues* is a sequence of header field values as might be returned by :meth:`Message.get_all <email.message.Message.get_all>`.  Here's a simple example that gets all the recipients of a message:: Turn a 10-tuple as returned by :func:`parsedate_tz` into a UTC timestamp (seconds since the Epoch).  If the timezone item in the tuple is ``None``, assume local time. When a header parameter is encoded in :rfc:`2231` format, :meth:`Message.get_param <email.message.Message.get_param>` may return a 3-tuple containing the character set, language, and value.  :func:`collapse_rfc2231_value` turns this into a unicode string.  Optional *errors* is passed to the *errors* argument of :class:`str`'s :func:`~str.encode` method; it defaults to ``'replace'``.  Optional *fallback_charset* specifies the character set to use if the one in the :rfc:`2231` header is not known by Python; it defaults to ``'us-ascii'``. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:05+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **æºä»£ç :** :source:`Lib/email/utils.py` :mod:`email.utils`: å¶ä»å·¥å· æ·»å äº *charset* éé¡¹ã å¢å äºå³é®å­ *domain*  å°è¯æ ¹æ® :rfc:`2822` çè§åè§£æä¸ä¸ªæ¥æãç¶èï¼æäºå¯ä¿¡äººä¸ä¸¥æ ¼éµå®è¿ä¸æ ¼å¼ï¼æä»¥è¿ç§æåµä¸ :func:`parsedate` ä¼å°è¯çæµå¶å½¢å¼ã*date* æ¯ä¸ä¸ªå­ç¬¦ä¸²åå«äºä¸ä¸ªå½¢å¦ ``"Mon, 20 Nov 1995 19:12:08 -0500"`` ç :rfc:`2822` æ ¼å¼æ¥æãå¦ææ¥æè§£ææåï¼ :func:`parsedate` å°è¿åä¸ä¸ªä¹åç»ï¼å¯ç´æ¥ä¼ éç» :func:`time.mktime`ï¼å¦åè¿å ``None``ãæ³¨æè¿åçåç»ä¸­ä¸æ ä¸º 6ã7ã8 çé¨åæ¯æ ç¨çã æ ¹æ® :rfc:`2231` è§£ç åæ°åè¡¨ã *params* æ¯ä¸ä¸ªåå« ``(content-type, string-value)`` å½¢å¼çåç´ ç 2 åç»çåºåã æ ¹æ® :rfc:`2231` è§£ç å­ç¬¦ä¸² *s*ã æ ¹æ® :rfc:`2231` å¯¹å­ç¬¦ä¸² *s* è¿è¡ç¼ç ã å¯éç *charset* å *language* å¦æç»åºï¼åä¸ºææè¦ä½¿ç¨çå­ç¬¦éåç§°åè¯­è¨åç§°ã å¦æä¸¤èåæªç»åºï¼åä¼åæ ·è¿å *s*ã å¦æç»åº *charset* ä½æªç»åº *language*ï¼åä¼ä½¿ç¨ç©ºå­ç¬¦ä¸²ä½ä¸º *language* å¼æ¥å¯¹å­ç¬¦ä¸²è¿è¡ç¼ç ã å¤æ³¨ ä¸ºæ¹ä¾¿èµ·è§ï¼å¦æä¼ ç» :func:`collapse_rfc2231_value` ç *value* ä¸æ¯ä¸ä¸ªåç»ï¼ååºä¸ºä¸ä¸ªå­ç¬¦ä¸²å¹¶ä¼å°å¶åæ ·è¿åã ç±»ä¼¼äº ``formatdate``ï¼ä½è¾å¥çæ¯ä¸ä¸ª :mod:`datetime` å®ä¾ã å¦æå®ä¾æ¯ä¸ä¸ªç®åå datetimeï¼å®ä¼è¢«è§ä¸º "ä¸å¸¦æºæ¶åºä¿¡æ¯ç UTC"ï¼å¹¶ä¸ä½¿ç¨ä¼ ç»ç ``-0000`` ä½ä¸ºæ¶åºã å¦æå®ä¾æ¯ä¸ä¸ªæç¥å ``datetime``ï¼åä¼ä½¿ç¨æ°å­å½¢å¼çæ¶åºæ¶å·®ã å¦æå®ä¾æ¯æç¥åä¸æ¶åºæ¶å·®ä¸ºé¶ï¼å *usegmt* å¯è½ä¼è¢«è®¾ä¸º ``True``ï¼å¨è¿ç§æåµä¸å°ä½¿ç¨å­ç¬¦ä¸² ``GMT`` èéæ°å­å½¢å¼çæ¶åºæ¶å·®ã è¿æä¾äºä¸ç§çæç¬¦åæ å HTTP æ¥ææ å¤´çæ¹å¼ã è¯·æ³¨ææ¶åºæ¶å·®çç¬¦å·ä¸åä¸æ¶åºç ``time.timezone`` åéçç¬¦å·ç¸åï¼åèéµå¾ª POSIX æ åèæ­¤æ¨¡åéµå¾ª :rfc:`2822`ã å¯éå°ï¼å¦ææå® *charset*ï¼åè¢«è§ä¸ºä¸ç¬¦å :rfc:`2047` çç¼ç å­ç¬¦éï¼ç¨äºç¼ç  ``çå®åå­`` ä¸­çé ASCII å­ç¬¦ãå¯ä»¥æ¯ä¸ä¸ª :class:`str` ç±»çå®ä¾ï¼æèä¸ä¸ª :class:`~email.charset.Charset` ç±»ãé»è®¤ä¸º  ``utf-8`` ã å¯éç *localtime* æ¯ä¸ä¸ªææ ï¼å½ä¸º ``True`` æ¶ï¼å°ä¼è§£æ *timeval*ï¼å¹¶è¿åä¸ä¸ªç¸å¯¹äºå½å°æ¶åºèé UTC çæ¥æå¼ï¼å¹¶ä¼éå½å°èèå¤ä»¤æ¶ã é»è®¤å¼ ``False`` è¡¨ç¤ºä½¿ç¨ UTCã å¯éç *timeval* å¦æç»åºï¼åæ¯ä¸ä¸ªå¯è¢« :func:`time.gmtime` å :func:`time.localtime` æ¥åçæµ®ç¹æ°æ¶é´å¼ï¼å¦åä¼ä½¿ç¨å½åæ¶é´ã å¯éç *usegmt* æ¯ä¸ä¸ªææ ï¼å½ä¸º ``True`` æ¶ï¼å°ä¼è¾åºä¸ä¸ªæ¥æå­ç¬¦ä¸²ï¼å¶ä¸­æ¶åºè¡¨ç¤ºä¸º ascii å­ç¬¦ä¸² ``GMT`` èéæ°å­å½¢å¼ç ``-0000``ã è¿å¯¹æäºåè®®ï¼ä¾å¦ HTTPï¼æ¥è¯´æ¯å¿è¦çã è¿ä»å¨ *localtime* ä¸º ``False`` æ¶åºç¨ã é»è®¤å¼ä¸º ``False``ã å°å°åï¼åºä¸ºè¯¸å¦ :mailheader:`To` æè :mailheader:`Cc` ä¹ç±»åå«å°åçå­æ®µå¼ï¼è§£æä¸ºææä¹ç *çå®åå­* å *çµå­é®ä»¶å°å* é¨åãè¿ååå«è¿ä¸¤ä¸ªä¿¡æ¯çä¸ä¸ªåç»ï¼å¦è¥è§£æå¤±è´¥ï¼åè¿åä¸ä¸ªäºåç» ``('', '')`` ã æ§è¡ä¸ :func:`parsedate` ç¸åçåè½ï¼ä½ä¼è¿å ``None`` ææ¯ä¸ä¸ª 10 åç»ï¼å 9 ä¸ªåç´ ææä¸ä¸ªå¯ä»¥ç´æ¥ä¼ ç» :func:`time.mktime` çåç»ï¼èç¬¬åä¸ªåç´ åæ¯è¯¥æ¥æçæ¶åºä¸ UTC (æ ¼æå¨æ²»å¹³åæ¶ GMT çæ­£å¼åç§°) [#]_ çæ¶å·®ã å¦æè¾å¥å­ç¬¦ä¸²ä¸å¸¦æ¶åºï¼åæè¿ååç»çæåä¸ä¸ªåç´ å°ä¸º ``0``ï¼è¿è¡¨ç¤º UTCã è¯·æ³¨æç»æåç»çç´¢å¼å· 6, 7 å 8 æ¯ä¸å¯ç¨çã è¿å *str* è¢«å»é¤å¼ç¨çæ¬çå­ç¬¦ä¸²ãå¦æ *str* å¼å¤´åç»å°¾åæ¯åå¼å·ï¼åè¿å¯¹åå¼å·è¢«å»é¤ãç±»ä¼¼å°ï¼å¦æ *str* å¼å¤´åç»å°¾é½æ¯å°è§æ¬å·ï¼è¿å¯¹å°è§æ¬å·ä¼è¢«å»é¤ã è¿åä¸ä¸ªæ°çå­ç¬¦ä¸²ï¼ *str* ä¸­çåææ è¢«æ¿æ¢ä¸ºä¸¤ä¸ªåææ ï¼å¹¶ä¸åå¼å·è¢«æ¿æ¢ä¸ºåææ å åå¼å·ã ä»¥æç¥å datetime å¯¹è±¡è¿åå½å°æ¶é´ã å¦æè°ç¨æ¶åæ°ä¸ºç©ºï¼åè¿åå½åæ¶é´ã å¦å *dt* åæ°åºè¯¥æ¯ä¸ä¸ª :class:`~datetime.datetime` å®ä¾ï¼å¹¶æ ¹æ®ç³»ç»æ¶åºæ°æ®åºè½¬æ¢ä¸ºå½å°æ¶åºã å¦æ *dt* æ¯ç®ååç ï¼å³ ``dt.tzinfo`` æ¯ ``None`` )ï¼ååå®ä¸ºå½å°æ¶é´ã å¨è¿ç§æåµä¸ï¼ä¸ºæ­£å¼æé¶ç *isdst* ä¼ä½¿ ``localtime`` åå®å¤å­£æ¶é´ï¼ä¾å¦ï¼å¤ä»¤æ¶ï¼å¯¹æå®æ¶é´ï¼åå«ï¼çææä¸çæã è´å¼ *isdst* ä¼ä½¿ ``localtime`` é¢æµå¤å­£æ¶é´å¯¹æå®æ¶é´æ¯å¦çæã è¿å :rfc:`2822` æ åçæ¥æå­ç¬¦ä¸²ï¼ä¾å¦:: è¿åä¸ä¸ªéåä½ä¸ºå¼å®¹ :rfc:`2822` ç :mailheader:`Message-ID` æ å¤´çå­ç¬¦ä¸²ãå¯éåæ° *idstring* å¯ä¼ å¥ä¸å­ç¬¦ä¸²ä»¥å¢å¼ºè¯¥æ¶æ¯ ID çå¯ä¸æ§ãå¯éåæ° *domain* å¯ç¨äºæä¾æ¶æ¯ ID ä¸­å­ç¬¦ '@' ä¹åçé¨åï¼å¶é»è®¤å¼æ¯æ¬æºçä¸»æºåãæ­£å¸¸æåµä¸æ éè¦çæ­¤é»è®¤å¼ï¼ä½å¨ç¹å®æåµä¸è¦çé»è®¤å¼å¯è½ä¼æç¨ï¼æ¯å¦æå»ºä¸ä¸ªåå¸å¼ç³»ç»ï¼å¨å¤å°ä¸»æºä¸éç¨ä¸è´çååã :func:`format_datetime` çéæä½ã æ§è¡ä¸ :func:`parsedate` ç¸åçåè½ï¼ä½ä¼å¨æåæ¶è¿åä¸ä¸ª :mod:`~datetime.datetime`ï¼å¦åå¦æ *date* åå«æ æçå¼ä¾å¦å°æ¶å¼å¤§äº 23 ææ¶åºåç§»éä¸å¨ -24 å 24 æ¶èå´ä¹ååä¼å¼å ``ValueError``ã å¦æè¾å¥æ¥æçæ¶åºå¼ä¸º ``-0000``ï¼å ``datetime`` å°ä¸ºä¸ä¸ªç®åå½¢ ``datetime``ï¼èå¦ææ¥æç¬¦å RFC æ ååå®å°ä»£è¡¨ä¸ä¸ª UTC æ¶é´ï¼ä½æ¯å¹¶ä¸æææ¥ææå¨æ¶æ¯çå®éæºæ¶åºã å¦æè¾å¥æ¥æå·æä»»ä½å¶ä»ææçæ¶åºåç§»éï¼å ``datetime`` å°æ¯ä¸ä¸ªæç¥å ``datetime`` å¹¶ä¸ :class:`~datetime.timezone` :class:`~datetime.tzinfo` ç¸å¯¹åºã æ¯ :meth:`parseaddr` çéæä½ï¼æ¥åä¸ä¸ª ``(çå®åå­, çµå­é®ä»¶å°å)`` çäºåç»ï¼å¹¶è¿åéåäº :mailheader:`To` or :mailheader:`Cc` æ å¤´çå­ç¬¦ä¸²ãå¦æç¬¬ä¸ä¸ªåç´ ä¸ºåæ§å¼ï¼åç¬¬äºä¸ªåç´ å°è¢«åæ ·è¿åã ä¸åå½æ°æ¯æ§ï¼``Compat32``ï¼çµå­é®ä»¶ API çä¸é¨åãæ° API æä¾çè§£æåæ ¼å¼åå¨æ å¤´è§£ææºå¶ä¸­å·²ç»è¢«èªå¨å®æï¼æå¨ä½¿ç¨æ° API æ¶æ²¡æå¿è¦ç´æ¥ä½¿ç¨å®ä»¬å½æ°ã :mod:`email.utils` æ¨¡åæä¾å¦ä¸å ä¸ªå·¥å· è¯¥æ¹æ³è¿åä¸ä¸ªå½¢ä¼¼ ``parseaddr()`` è¿åçäºåç»çåè¡¨ã *fieldvalues* æ¯ä¸ä¸ªåºåï¼åå«äºå½¢ä¼¼ :meth:`Message.get_all <email.message.Message.get_all>` è¿åå¼çæ å¤´å­æ®µå¼ãè·åäºä¸æ¶æ¯çæææ¶ä»¶äººçç®åç¤ºä¾å¦ä¸ï¼ å° :func:`parsedate_tz` æè¿åç 10 åç»è½¬æ¢ä¸ºä¸ä¸ª UTC æ¶é´æ³ï¼ç¸è· Epoch çºªååå§çç§æ°ï¼ã å¦æåç»ä¸­çæ¶åºé¡¹ä¸º ``None``ï¼åè§ä¸ºå½å°æ¶é´ã å½ä»¥ :rfc:`2231` æ ¼å¼æ¥ç¼ç æ å¤´å½¢åæ¶ï¼:meth:`Message.get_param <email.message.Message.get_param>` å¯è½è¿åä¸ä¸ªåå«å­ç¬¦éãè¯­è¨åå¼ç 3 åç»ã :func:`collapse_rfc2231_value` ä¼å°æ­¤è¿åä¸ºä¸ä¸ª unicode å­ç¬¦ä¸²ã å¯éç *errors* ä¼è¢«ä¼ éç» :class:`str` ç :func:`~str.encode` æ¹æ³ç *errors* åæ°ï¼å®çé»è®¤å¼ä¸º ``'replace'``ã å¯éç *fallback_charset* æå®å½ :rfc:`2231` æ å¤´ä¸­çå­ç¬¦éæ æ³è¢« Python è¯å«æ¶è¦ä½¿ç¨çå­ç¬¦éï¼å®çé»è®¤å¼ä¸º ``'us-ascii'``ã 