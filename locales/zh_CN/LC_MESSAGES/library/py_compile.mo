Þ                        ì  ,   í  Q    ´   l  1   !  /  S          £  5  ¼  °   ò     £    º  K   Í
  ²    Ý   Ì     ª  {   Ã     ?    W  ×   ó      Ë  ¡   ì  ¯     °   >  Í   ï  j  ½  s   (  ä     A     ½  Ã  *     >  ¬     ë  -   z  &  ¨  &   Ï     ö  G    ¬   ^       Þ    <   ú     7!  Í   ×"     ¥#  q   ¾#     0$    F$  Ò   æ%     ¹&  y   Õ&     O'  ¡   ã'  ª   (  B  0)  j   s*  ·   Þ*  ;   +   **Source code:** :source:`Lib/py_compile.py` *invalidation_mode* should be a member of the :class:`PycInvalidationMode` enum and controls how the generated bytecode cache is invalidated at runtime.  The default is :attr:`PycInvalidationMode.CHECKED_HASH` if the :envvar:`SOURCE_DATE_EPOCH` environment variable is set, otherwise the default is :attr:`PycInvalidationMode.TIMESTAMP`. *optimize* controls the optimization level and is passed to the built-in :func:`compile` function.  The default of ``-1`` selects the optimization level of the current interpreter. :mod:`py_compile` --- Compile Python source files A enumeration of possible methods the interpreter can use to determine whether a bytecode file is up to date with a source file. The ``.pyc`` file indicates the desired invalidation mode in its header. See :ref:`pyc-invalidation` for more information on how Python invalidates ``.pyc`` files at runtime. Added support for :option:`-q`. Added support for ``-``. Changed code to use :mod:`importlib` for the byte-code cache file writing. This means file creation/writing semantics now match what :mod:`importlib` does, e.g. permissions, write-and-move semantics, etc. Also added the caveat that :exc:`FileExistsError` is raised if *cfile* is a symlink or non-regular file. Changed default value of *cfile* to be :PEP:`3147`-compliant.  Previous default was *file* + ``'c'`` (``'o'`` if optimization was enabled). Also added the *optimize* parameter. Command-Line Interface Compile a source file to byte-code and write out the byte-code cache file. The source code is loaded from the file named *file*.  The byte-code is written to *cfile*, which defaults to the :pep:`3147`/:pep:`488` path, ending in ``.pyc``. For example, if *file* is ``/foo/bar/baz.py`` *cfile* will default to ``/foo/bar/__pycache__/baz.cpython-32.pyc`` for Python 3.2.  If *dfile* is specified, it is used as the name of the source file in error messages instead of *file*.  If *doraise* is true, a :exc:`PyCompileError` is raised when an error is encountered while compiling *file*. If *doraise* is false (the default), an error string is written to ``sys.stderr``, but no exception is raised.  This function returns the path to byte-compiled file, i.e. whatever *cfile* value was used. Exception raised when an error occurs while attempting to compile the file. If the path that *cfile* becomes (either explicitly specified or computed) is a symlink or non-regular file, :exc:`FileExistsError` will be raised. This is to act as a warning that import will turn those paths into regular files if it is allowed to write byte-compiled files to those paths. This is a side-effect of import using file renaming to place the final byte-compiled file into place to prevent concurrent file writing issues. Like :attr:`CHECKED_HASH`, the ``.pyc`` file includes a hash of the source file content. However, Python will at runtime assume the ``.pyc`` file is up to date and not validate the ``.pyc`` against the source file at all. Module :mod:`compileall` Positional arguments are files to compile.  If ``-`` is the only parameter, the list of files is taken from standard input. Suppress errors output. The *doraise* and *quiet* arguments determine how errors are handled while compiling file. If *quiet* is 0 or 1, and *doraise* is false, the default behaviour is enabled: an error string is written to ``sys.stderr``, and the function returns ``None`` instead of a path. If *doraise* is true, a :exc:`PyCompileError` is raised instead. However if *quiet* is 2, no message is written, and *doraise* has no effect. The *invalidation_mode* parameter was added as specified in :pep:`552`. If the :envvar:`SOURCE_DATE_EPOCH` environment variable is set, *invalidation_mode* will be forced to :attr:`PycInvalidationMode.CHECKED_HASH`. The *quiet* parameter was added. The :envvar:`SOURCE_DATE_EPOCH` environment variable no longer overrides the value of the *invalidation_mode* argument, and determines its default value instead. The :mod:`py_compile` module provides a function to generate a byte-code file from a source file, and another function used when the module source file is invoked as a script. The ``.pyc`` file includes a hash of the source file content, which Python will compare against the source at runtime to determine if the ``.pyc`` file needs to be regenerated. The ``.pyc`` file includes the timestamp and size of the source file, which Python will compare against the metadata of the source file at runtime to determine if the ``.pyc`` file needs to be regenerated. This module can be invoked as a script to compile several source files.  The files named in *filenames* are compiled and the resulting bytecode is cached in the normal manner.  This program does not search a directory structure to locate source files; it only compiles files named explicitly. The exit status is nonzero if one of the files could not be compiled. This option is useful when the ``.pycs`` are kept up to date by some system external to Python like a build system. Though not often needed, this function can be useful when installing modules for shared use, especially if some of the users may not have permission to write the byte-code cache files in the directory containing the source code. Utilities to compile all Python source files in a directory tree. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:11+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **æºä»£ç :** :source:`Lib/py_compile.py` *invalidation_mode* åºå½æ¯ :class:`PycInvalidationMode` æä¸¾çæåï¼å®æ§å¶å¨è¿è¡æ¶å¦ä½è®©å·²çæçå­èç ç¼å­å¤±æã å¦æè®¾ç½®äº :envvar:`SOURCE_DATE_EPOCH` ç¯å¢åéåé»è®¤å¼ä¸º :attr:`PycInvalidationMode.CHECKED_HASH`ï¼å¦åé»è®¤å¼ä¸º :attr:`PycInvalidationMode.TIMESTAMP`ã *optimize* æ§å¶ä¼åçº§å«å¹¶ä¼è¢«ä¼ ç»åç½®ç :func:`compile` å½æ°ã é»è®¤å¼ ``-1`` è¡¨ç¤ºéæ©å½åè§£éå¨çä¼åçº§å«ã :mod:`py_compile` --- ç¼è¯ Python æºæä»¶ ä¸ä¸ªç±å¯ç¨æ¹æ³ç»æçæä¸¾ï¼è§£éå¨å¯ä»¥ç¨æ¥ç¡®å®å­èç æä»¶æ¯å¦ä¸æºæä»¶ä¿æä¸è´ã ``.pyc`` æä»¶å¨å¶æ å¤´ä¸­ææäºæéçå¤±ææ¨¡å¼ã è¯·åé :ref:`pyc-invalidation` äºè§£æå³ Python å¨è¿è¡æ¶å¦ä½è®© ``.pyc`` æä»¶å¤±æçæ´å¤ä¿¡æ¯ã æ·»å äºå¯¹ :option:`-q` çæ¯æã æ·»å äºå¯¹ ``-`` çæ¯æã å°ä»£ç æ´æ¹ä¸ºä½¿ç¨ :mod:`importlib` æ§è¡å­èç ç¼å­æä»¶åå¥ã è¿æå³çæä»¶åå»º/åå¥çè¯­ä¹ç°å¨ä¸ :mod:`importlib` æåçç¸å¹éï¼ä¾å¦æéãåå¥åç§»å¨è¯­ä¹ç­ç­ã åæ¶ä¹æ·»å äºå½ *cfile* ä¸ºç¬¦å·é¾æ¥æéå¸¸è§æä»¶æ¶å¼å :exc:`FileExistsError` çé¢è­¦è®¾ç½®ã å° *cfile* çé»è®¤å¼æ¹æä¸ :PEP:`3147` å¼å®¹ã ä¹åçé»è®¤å¼æ¯ *file* + ``'c'`` (å¦æå¯ç¨ä¼ååä¸º ``'o'``)ã åæ¶ä¹æ·»å äº *optimize* å½¢åã å½ä»¤è¡æ¥å£ å°æºæä»¶ç¼è¯æå­èç å¹¶ååºå­èç ç¼å­æä»¶ã æºä»£ç ä»åä¸º *file* çæä»¶ä¸­å è½½ã å­èç ä¼åå¥å° *cfile*ï¼é»è®¤ä¸º :pep:`3147`/:pep:`488` è·¯å¾ï¼ä»¥ ``.pyc`` ç»å°¾ã ä¾å¦ï¼å¦æ *file* æ¯ ``/foo/bar/baz.py`` åå¯¹äº Python 3.2 *cfile* å°é»è®¤ä¸º ``/foo/bar/__pycache__/baz.cpython-32.pyc``ã å¦ææå®äº *dfile*ï¼åå¨éè¯¯ä¿¡æ¯ä¸­å®å°ä»£æ¿ *file* ä½ä¸ºæºæä»¶çåç§°ã å¦æ *doraise* ä¸ºçå¼ï¼åå½ç¼è¯ *file* éå°éè¯¯æ¶å°ä¼å¼å :exc:`PyCompileError`ã å¦æ *doraise* ä¸ºåå¼ï¼é»è®¤ï¼ï¼åå°éè¯¯ä¿¡æ¯åå¥å° ``sys.stderr``ï¼ä½ä¸ä¼å¼åå¼å¸¸ã æ­¤å½æ°è¿åç¼è¯åå­èç æä»¶çè·¯å¾ï¼å³ *cfile* æä½¿ç¨çå¼ã å½ç¼è¯æä»¶è¿ç¨ä¸­åçéè¯¯æ¶ï¼æåºçå¼å¸¸ã å¦æ *cfile* æè¡¨ç¤ºï¼æ¾å¼æå®æè®¡ç®å¾åºï¼çè·¯å¾ä¸ºç¬¦å·é¾æ¥æéå¸¸è§æä»¶ï¼åå°å¼å :exc:`FileExistsError`ã æ­¤è¡ä¸ºæ¯ç¨æ¥è­¦åå¦æåè®¸åå¥ç¼è¯åå­èç æä»¶å°è¿äºè·¯å¾åå¯¼å¥æä½å°ä¼æå®ä»¬è½¬ä¸ºå¸¸è§æä»¶ã è¿æ¯ä½¿ç¨æä»¶éå½åæ¥å°æç»ç¼è¯åå­èç æä»¶æ¾ç½®å°ä½ä»¥é²æ­¢å¹¶åæä»¶åå¥é®é¢çå¯¼å¥æä½çéå¸¦ææã ç±»ä¼¼äº :attr:`CHECKED_HASH`ï¼``.pyc`` æä»¶åæ¬æºæä»¶åå®¹çåå¸å¼ã ä½æ¯ï¼Python å°å¨è¿è¡æ¶åå® ``.pyc`` æä»¶æ¯ææ°çèå®å¨ä¸ä¼å° ``.pyc`` ä¸æºæä»¶è¿è¡éªè¯ã æ¨¡å :mod:`compileall` ä½ç½®åæ°æ¯è¦ç¼è¯çæä»¶ã å¦æ ``-`` æ¯å¯ä¸çå½¢åï¼åæä»¶åè¡¨å°ä»æ åè¾å¥è·åã å±è½éè¯¯è¾åºã *doraise* å *quiet* åæ°ç¡®å®å¨ç¼è¯æä»¶æ¶å¦ä½å¤çéè¯¯ã å¦æ *quiet* ä¸º 0 æ 1ï¼å¹¶ä¸ *doraise* ä¸ºåå¼ï¼åä¼å¯ç¨é»è®¤è¡ä¸ºï¼åå¥éè¯¯ä¿¡æ¯å° ``sys.stderr``ï¼å¹¶ä¸å½æ°å°è¿å ``None`` èéä¸ä¸ªè·¯å¾ã å¦æ *doraise* ä¸ºçå¼ï¼åå°æ¹ä¸ºå¼å :exc:`PyCompileError`ã ä½æ¯å¦æ *quiet* ä¸º 2ï¼åä¸ä¼åå¥æ¶æ¯ï¼å¹¶ä¸ *doraise* ä¹ä¸ä¼æææã *invalidation_mode* å½¢åæ¯æ ¹æ® :pep:`552` çæè¿°æ·»å çã å¦æè®¾ç½®äº :envvar:`SOURCE_DATE_EPOCH` ç¯å¢åéï¼*invalidation_mode* å°è¢«å¼ºå¶è®¾ä¸º :attr:`PycInvalidationMode.CHECKED_HASH`ã å¢å äº *quiet* å½¢åã :envvar:`SOURCE_DATE_EPOCH` ç¯å¢åéä¸ä¼åè¦ç *invalidation_mode* åæ°çå¼ï¼èæ¹ä¸ºç¡®å®å¶é»è®¤å¼ã :mod:`py_compile` æ¨¡åæä¾äºç¨æ¥ä»æºæä»¶çæå­èç çå½æ°åå¦ä¸ä¸ªç¨äºå½æ¨¡åæºæä»¶ä½ä¸ºèæ¬è¢«è°ç¨æ¶çå½æ°ã ``.pyc`` æä»¶åæ¬æºæä»¶åå®¹çåå¸å¼ï¼Python å°å¨è¿è¡æ¶å°å¶ä¸æºæä»¶åå®¹è¿è¡æ¯è¾ä»¥ç¡®å® ``.pyc`` æä»¶æ¯å¦éè¦éæ°çæã ``.pyc`` æä»¶åæ¬æ¶é´æ³åæºæä»¶çå¤§å°ï¼Python å°å¨è¿è¡æ¶å°å¶ä¸æºæä»¶çåæ°æ®è¿è¡æ¯è¾ä»¥ç¡®å® ``.pyc`` æä»¶æ¯å¦éè¦éæ°çæã è¿ä¸ªæ¨¡åå¯ä½ä¸ºèæ¬åèµ·è°ç¨ä»¥ç¼è¯å¤ä¸ªæºæä»¶ã å¨ *filenames* ä¸­æå®çæä»¶ä¼è¢«ç¼è¯å¹¶å°ç»æå­èç ä»¥æ®éæ¹å¼è¿è¡ç¼å­ã è¿ä¸ªç¨åºä¸ä¼æç´¢ç®å½ç»ææ¥å®ä½æºæä»¶ï¼å®åªç¼è¯æ¾å¼æå®çæä»¶ã å¦ææä¸ªæä»¶æ æ³è¢«ç¼è¯åéåºç¶æä¸ºéé¶å¼ã æ­¤éé¡¹éç¨äº ``.pycs`` ç± Python ä»¥å¤çæä¸ªç³»ç»ä¾å¦æå»ºç³»ç»æ¥ç¡®ä¿ææ°çæåµã è½ç¶ä¸å¤ªå¸¸ç¨ï¼ä½è¿ä¸ªå½æ°å¨å®è£å±äº«æ¨¡åæ¶è¿æ¯å¾æç¨çï¼ç¹å«æ¯å½ä¸äºç¨æ·å¯è½æ²¡ææéå¨åå«æºä»£ç çç®å½ä¸­åå­èç ç¼å­æä»¶æ¶ã ç¼è¯ä¸ä¸ªç®å½æ ä¸­ææ Python æºæä»¶çå·¥å·ã 