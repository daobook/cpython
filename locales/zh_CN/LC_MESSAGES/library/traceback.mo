Þ          t               Ì   +   Í   8   ù      2     R     q      +     ±   ´  9  f  R      ¸  ó  +   ¬  0   Ø  '   	     1  }   O  Î  Í  $   
  ¨   Á
  )  j  W      **Source code:** :source:`Lib/traceback.py` :mod:`traceback` --- Print or retrieve a stack traceback Added negative *limit* support. Added the *compact* parameter. Print exception information and stack trace entries from traceback object *tb* to *file*. This differs from :func:`print_tb` in the following ways: Print up to *limit* stack trace entries from traceback object *tb* (starting from the caller's frame) if *limit* is positive.  Otherwise, print the last ``abs(limit)`` entries.  If *limit* is omitted or ``None``, all entries are printed.  If *file* is omitted or ``None``, the output goes to ``sys.stderr``; otherwise it should be an open file or file-like object to receive the output. The module defines the following functions: The module uses traceback objects --- this is the object type that is stored in the :data:`sys.last_traceback` variable and returned as the third item from :func:`sys.exc_info`. This module provides a standard interface to extract, format and print stack traces of Python programs.  It exactly mimics the behavior of the Python interpreter when it prints a stack trace.  This is useful when you want to print stack traces under program control, such as in a "wrapper" around the interpreter. if *tb* is not ``None``, it prints a header ``Traceback (most recent call last):`` Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: shenjack <3695888@qq.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **æºä»£ç ï¼** :source:`Lib/traceback.py` :mod:`traceback` --- æå°ææ£ç´¢å æ åæº¯ æ·»å äºå¯¹è´æ°å¼ *limit* çæ¯æ å¢å äº *compact* å½¢åã æå°åæº¯å¯¹è±¡ *tb* å° *file* çå¼å¸¸ä¿¡æ¯åæ´ä¸ªå æ åæº¯ãè¿å :func:`print_tb` æ¯æä»¥ä¸æ¹é¢ä¸åï¼ å¦æ*limit*æ¯æ­£æ´æ°ï¼é£ä¹ä» traceback å¯¹è±¡ "tb" è¾åºæé« *limit* ä¸ªï¼ä»è°ç¨å½æ°å¼å§çï¼æ çå æ åæº¯âæ¡ç®âï¼å¦æ *limit* æ¯è´æ°å°±è¾åº ``abs(limit)`` ä¸ªåæº¯æ¡ç®ï¼åå¦æ *limit* è¢«çç¥æèä¸º ``None``ï¼é£ä¹å°±ä¼è¾åºææåæº¯æ¡ç®ãå¦æ *file* è¢«çç¥æä¸º ``None`` é£ä¹å°±ä¼è¾åºè³æ åè¾åº``sys.stderr``å¦åå®åºè¯¥æ¯ä¸ä¸ªæå¼çæä»¶æèæä»¶ç±»å¯¹è±¡æ¥æ¥æ¶è¾åº è¿ä¸ªæ¨¡åå®ä¹äºä»¥ä¸å½æ°ï¼ è¿ä¸ªæ¨¡åä½¿ç¨ traceback å¯¹è±¡ ââ è¿æ¯å­å¨å¨ :data:`sys.last_traceback` ä¸­çå¯¹è±¡ç±»ååéï¼å¹¶ä½ä¸º :func:`sys.exc_info` çç¬¬ä¸é¡¹è¢«è¿åã è¯¥æ¨¡åæä¾äºä¸ä¸ªæ åæ¥å£æ¥æåãæ ¼å¼ååæå° Python ç¨åºçå æ è·è¸ªç»æãå®å®å¨æ¨¡ä»¿Python è§£éå¨å¨æå°å æ è·è¸ªç»ææ¶çè¡ä¸ºãå½æ¨æ³è¦å¨ç¨åºæ§å¶ä¸æå°å æ è·è¸ªç»ææ¶ï¼ä¾å¦å¨âå°è£âè§£éå¨æ¶ï¼è¿æ¯éå¸¸æç¨çã å¦æ *tb* ä¸ä¸º ``None``ï¼å®å°æå°å¤´é¨ ``Traceback (most recent call last):`` 