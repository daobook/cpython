Þ                        ì  :   í     (     ¹    Å     ã     ó  X     Ç  Ú  S   ¢  »   ö  S   ²       >     Y   U  j   ¯  j   	    	  4     f   S  ¬   º  b   g  ô   Ê     ¿  D   à  >   %  ?   d  >   ¤  @   ã  Á  $  9   æ           ¢    °     Ç     Ô  G   T       a   =  Ã     U   c     ¹  ;   Æ  ]     m   `  m   Î    <  ?   Ä  g     ¿   l  Y   ,  ¨     ÷   /  B   '  >   j  ?   ©  >   é  @   (   :mod:`msvcrt` --- Useful routines from the MS VC++ runtime Cause the byte string *char* to be "pushed back" into the console buffer; it will be the next character read by :func:`getch` or :func:`getche`. Console I/O Create a C runtime file descriptor from the file handle *handle*.  The *flags* parameter should be a bitwise OR of :const:`os.O_APPEND`, :const:`os.O_RDONLY`, and :const:`os.O_TEXT`.  The returned file descriptor may be used as a parameter to :func:`os.fdopen` to create a file object. File Operations Force the :c:func:`malloc` heap to clean itself up and return unused blocks to the operating system.  On failure, this raises :exc:`OSError`. Further documentation on these functions can be found in the Platform API documentation. Lock part of a file based on file descriptor *fd* from the C runtime.  Raises :exc:`OSError` on failure.  The locked region of the file extends from the current file position for *nbytes* bytes, and may continue beyond the end of the file.  *mode* must be one of the :const:`LK_\*` constants listed below. Multiple regions in a file may be locked at the same time, but may not overlap.  Adjacent regions are not merged; they must be unlocked individually. Locks the specified bytes. If the bytes cannot be locked, :exc:`OSError` is raised. Locks the specified bytes. If the bytes cannot be locked, the program immediately tries again after 1 second.  If, after 10 attempts, the bytes cannot be locked, :exc:`OSError` is raised. Operations in this module now raise :exc:`OSError` where :exc:`IOError` was raised. Other Functions Print the byte string *char* to the console without buffering. Raises an :ref:`auditing event <auditing>` ``msvcrt.get_osfhandle`` with argument ``fd``. Raises an :ref:`auditing event <auditing>` ``msvcrt.locking`` with arguments ``fd``, ``mode``, ``nbytes``. Raises an :ref:`auditing event <auditing>` ``msvcrt.open_osfhandle`` with arguments ``handle``, ``flags``. Read a keypress and return the resulting character as a byte string. Nothing is echoed to the console.  This call will block if a keypress is not already available, but will not wait for :kbd:`Enter` to be pressed. If the pressed key was a special function key, this will return ``'\000'`` or ``'\xe0'``; the next call will return the keycode. The :kbd:`Control-C` keypress cannot be read with this function. Return ``True`` if a keypress is waiting to be read. Return the file handle for the file descriptor *fd*.  Raises :exc:`OSError` if *fd* is not recognized. Set the line-end translation mode for the file descriptor *fd*. To set it to text mode, *flags* should be :const:`os.O_TEXT`; for binary, it should be :const:`os.O_BINARY`. Similar to :func:`getch`, but the keypress will be echoed if it  represents a printable character. The module implements both the normal and wide char variants of the console I/O api. The normal API deals only with ASCII characters and is of limited use for internationalized applications. The wide char API should be used where ever possible. These functions provide access to some useful capabilities on Windows platforms. Some higher-level modules use these functions to build the  Windows implementations of their services.  For example, the :mod:`getpass` module uses this in the implementation of the :func:`getpass` function. Unlocks the specified bytes, which must have been previously locked. Wide char variant of :func:`getch`, returning a Unicode value. Wide char variant of :func:`getche`, returning a Unicode value. Wide char variant of :func:`putch`, accepting a Unicode value. Wide char variant of :func:`ungetch`, accepting a Unicode value. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:09+0000
Last-Translator: Sean Chao <seanchao0804@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :mod:`msvcrt` --- æ¥èª MS VC++ è¿è¡æ¶çæç¨ä¾ç¨ ä½¿å¾å­èä¸² *char* è¢«âæ¨åâç»ç«¯ç¼å²åºï¼å®å°æ¯è¢« :func:`getch` æ :func:`getche` è¯»åçä¸ä¸ä¸ªå­ç¬¦ã æ§å¶å° I/O åºäºæä»¶å¥æ *handle* åå»ºä¸ä¸ª C è¿è¡æ¶æä»¶æè¿°ç¬¦ã *flags* å½¢ååºå½ :const:`os.O_APPEND`, :const:`os.O_RDONLY` å :const:`os.O_TEXT` æä½ OR çç»æã è¿åçæä»¶æè¿°ç¬¦å¯ä»¥è¢«ç¨ä½ :func:`os.fdopen` çå½¢åä»¥åå»ºä¸ä¸ªæä»¶å¯¹è±¡ã æä»¶æä½ å¼ºå¶ :c:func:`malloc` å æ¸ç©ºèªèº«å¹¶å°æªä½¿ç¨çåè¿åç»æä½ç³»ç»ã å¤±è´¥æ¶ï¼è¿å°å¼å :exc:`OSError`ã å³äºè¿äºå½æ°çæ´å¤ä¿¡æ¯å¯ä»¥å¨å¹³å° API ææ¡£ä¸­æ¾å°ã åºäºæä»¶æè¿°ç¬¦ *fd* ä» C è¿è¡æ¶éå®æä»¶çæä¸é¨åã å¤±è´¥æ¶å¼å :exc:`OSError`ã éå®çæä»¶åºåä»å½åæä»¶ä½ç½®å¼å§æ©å± *nbytes* ä¸ªå­èï¼å¹¶å¯è½æç»­å°è¶åºæä»¶æ«å°¾ã *mode* å¿é¡»ä¸ºä¸é¢ååºç :const:`LK_\*` ä¹ä¸ã ä¸ä¸ªæä»¶ä¸­çå¤ä¸ªåºåå¯ä»¥è¢«åæ¶éå®ï¼ä½æ¯ä¸è½éå ã ç¸é»åºåä¸ä¼è¢«åå¹¶ï¼å®ä»¬å¿é¡»åç¬è¢«è§£éã éå®æå®çå­èæ°æ®ã å¦æå­èæ°æ®æ æ³è¢«éå®ï¼åä¼å¼å :exc:`OSError`ã éå®æå®çå­èæ°æ®ã å¦æå­èæ°æ®æ æ³è¢«éå®ï¼ç¨åºä¼å¨ 1 ç§ä¹åç«å³éè¯ã å¦æå¨ 10 æ¬¡å°è¯åå­èæ°æ®ä»æ æ³è¢«éå®ï¼åä¼å¼å :exc:`OSError`ã æ­¤æ¨¡åä¸­è¿å»ä¼å¼å :exc:`IOError` çæä½ç°å¨å°å¼å :exc:`OSError`ã å¶ä»å½æ° å°å­ç¬¦ä¸² *char* æå°å°ç»ç«¯ï¼ä¸ä½¿ç¨ç¼å²åºã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``msvcrt.get_osfhandle``ï¼éå¸¦åæ° ``fd``ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``msvcrt.locking``ï¼éå¸¦åæ° ``fd``, ``mode``, ``nbytes``ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``msvcrt.open_osfhandle``ï¼éå¸¦åæ° ``handle``, ``flags``ã è¯»åä¸ä¸ªæé®å¹¶å°ç»æå­ç¬¦è¿åä¸ºä¸ä¸ªå­èä¸²ã ä¸ä¼æåå®¹åæ¾å°ç¼å¶å°ã å¦æè¿æ²¡æä»»ä½é®è¢«æä¸æ­¤è°ç¨å°ä¼é»å¡ï¼ä½å®å°ä¸ä¼ç­å¾ :kbd:`Enter` è¢«æä¸ã å¦ææä¸çé®æ¯ä¸ä¸ªç¹æ®åè½é®ï¼æ­¤å½æ°å°è¿å ``'\000'`` æ ``'\xe0'``ï¼ä¸ä¸æ¬¡è°ç¨å°è¿åé®ä»£ç ã :kbd:`Control-C` æé®æ æ³ä½¿ç¨æ­¤å½æ°æ¥è¯»åã å¦æææä¸ªæé®æ­£å¨ç­å¾è¢«è¯»ååè¿å ``True``ã è¿åæä»¶æè¿°ç¬¦ *fd* çæä»¶å¥æã å¦æ *fd* ä¸è½è¢«è¯å«åä¼å¼å :exc:`OSError`ã è®¾ç½®æä»¶æè¿°ç¬¦ *fd* çè¡ç»æç¬¦è½¬åæ¨¡å¼ã è¦å°å¶è®¾ä¸ºææ¬æ¨¡å¼ï¼å *flags* åºå½ä¸º :const:`os.O_TEXT`ï¼è®¾ä¸ºäºè¿å¶æ¨¡å¼ï¼ååºå½ä¸º :const:`os.O_BINARY`ã ç±»ä¼¼äº :func:`getch`ï¼ä½æé®å¦æè¡¨ç¤ºä¸ä¸ªå¯æå°å­ç¬¦åå®å°è¢«åæ¾ã è¯¥æ¨¡åå®ç°äºæ§å¶å° I/O API çæ®éåå®½å­ç¬¦åä½ãæ®éç API åªå¤çASCIIå­ç¬¦ï¼å½éååºç¨åéãåºè¯¥å°½å¯è½å°ä½¿ç¨å®½å­ç¬¦ API ã è¿äºå½æ°æä¾äºå¯¹ Windows å¹³å°ä¸ä¸äºæç¨åè½çè®¿é®ãä¸äºæ´é«çº§å«çæ¨¡åä½¿ç¨è¿äºå½æ°æ¥æå»ºå¶æå¡ç Windows å®ç°ã ä¾å¦ï¼ :mod:`getpass` æ¨¡åå¨å®ç° :func:`getpass` å½æ°æ¶ä½¿ç¨äºè¿äºå½æ°ã è§£éæå®çå­èæ°æ®ï¼è¯¥å¯¹è±¡å¿é¡»å¨ä¹åè¢«éå®ã :func:`getch` çå®½å­ç¬¦çæ¬ï¼è¿åä¸ä¸ª Unicode å¼ã :func:`getche` çå®½å­ç¬¦çæ¬ï¼è¿åä¸ä¸ª Unicode å¼ã :func:`putch` çå®½å­ç¬¦çæ¬ï¼æ¥åä¸ä¸ª Unicode å¼ã :func:`ungetch` çå®½å­ç¬¦çæ¬ï¼æ¥åä¸ä¸ª Unicode å¼ã 