Þ                         ü   .   ý   5   ,  N   b  Y   ±  L     &   X       N     8   j  >   £  4   â  ï         ¼  (  +   å  3   	  Y   E	  L   	  J   ì	  %   7
  r   ]
  D   Ð
  )     (   ?  $   h  º    è   H   **Source code:** :source:`Lib/modulefinder.py` :mod:`modulefinder` --- Find modules used by a script A dictionary mapping module names to modules. See :ref:`modulefinder-example`. Allows specifying that the module named *oldname* is in fact the package named *newname*. Analyze the contents of the *pathname* file, which must contain Python code. Example usage of :class:`ModuleFinder` Print a report to standard output that lists the modules imported by the script and their paths, as well as modules that are missing or seem to be missing. Record that the package named *pkg_name* can be found in the specified *path*. Sample output (may vary depending on the architecture):: The script that is going to get analyzed later on (bacon.py):: The script that will output the report of bacon.py:: This class provides :meth:`run_script` and :meth:`report` methods to determine the set of modules imported by a script. *path* can be a list of directories to search for modules; if not specified, ``sys.path`` is used.  *debug* sets the debugging level; higher values make the class print debugging messages about what it's doing. *excludes* is a list of module names to exclude from the analysis. *replace_paths* is a list of ``(oldpath, newpath)`` tuples that will be replaced in module paths. This module provides a :class:`ModuleFinder` class that can be used to determine the set of modules imported by a script. ``modulefinder.py`` can also be run as a script, giving the filename of a Python script as its argument, after which a report of the imported modules will be printed. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:09+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **æºç ï¼** :source:`Lib/modulefinder.py` :mod:`modulefinder` --- æ¥æ¾èæ¬ä½¿ç¨çæ¨¡å ä¸ä¸ªå°æ¨¡ååç§°æ å°å°æ¨¡åçå­å¸ã è¯·åé :ref:`modulefinder-example`ã åè®¸æå®åä¸º *oldname* çæ¨¡åå®éä¸æ¯åä¸º *newname* çåã åæ *pathname* æä»¶çåå®¹ï¼è¯¥æä»¶å¿é¡»åå« Python ä»£ç ã :class:`ModuleFinder` çç¤ºä¾ç¨æ³ å°æ¥åæå°å°æ åè¾åºï¼ååºèæ¬å¯¼å¥çæ¨¡ååå¶è·¯å¾ï¼ä»¥åç¼ºå°æä¼¼ä¹ç¼ºå¤±çæ¨¡åã è®°å½åä¸º *pkg_name* çåå¯ä»¥å¨æå®ç *path* ä¸­æ¾å°ã è¾åºæ ·ä¾ï¼å¯è½å æ¶æèå¼ï¼:: ç¨åå°åæçèæ¬ï¼bacon.pyï¼:: å°è¾åº bacon.py æ¥åçèæ¬:: è¯¥ç±»æä¾ :meth:`run_script` å :meth:`report` æ¹æ³ï¼ç¨äºç¡®å®èæ¬å¯¼å¥çæ¨¡åéã *path* å¯ä»¥æ¯æç´¢æ¨¡åçç®å½åè¡¨ï¼å¦ææ²¡ææå®ï¼åä½¿ç¨ ``sys.path`` ã  *debug* è®¾ç½®è°è¯çº§å«ï¼æ´é«çå¼ä½¿ç±»æå°è°è¯æ¶æ¯ï¼å³äºå®æ­£å¨åä»ä¹ã *excludes* æ¯è¦ä»åæä¸­æé¤çæ¨¡ååç§°åè¡¨ã *replace_paths* æ¯å°å¨æ¨¡åè·¯å¾ä¸­æ¿æ¢ç ``(oldpath, newpath)`` åç»çåè¡¨ã è¯¥æ¨¡åæä¾äºä¸ä¸ª :class:`ModuleFinder` ç±»ï¼å¯ç¨äºç¡®å®èæ¬å¯¼å¥çæ¨¡åéã ``modulefinder.py`` ä¹å¯ä»¥ä½ä¸ºèæ¬è¿è¡ï¼ç»åº Python èæ¬çæä»¶åä½ä¸ºåæ°ï¼ä¹åå°æå°å¯¼å¥æ¨¡åçæ¥åã 