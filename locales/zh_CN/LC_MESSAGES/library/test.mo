Þ          ¤               ,  3   -  o  a     Ñ      ð          1     Q     g  "   ~  "   ¡  E   Ä  ì   
  +  ÷  '   #     K      S  ¼  t  &   1  \  X     µ	     Ï	     ç	     
  %   
     >
  "   U
  "   x
  =   
  Ô   Ù
    ®     ¼  	   Ü     æ   :mod:`test` --- Regression tests package for Python Each module in the :mod:`test` package whose name starts with ``test_`` is a testing suite for a specific module or feature. All new tests should be written using the :mod:`unittest` or :mod:`doctest` module.  Some older tests are written using a "traditional" testing style that compares output printed to ``sys.stdout``; this style of test is considered deprecated. Its default value is 1 minute. Its default value is 30 seconds. Its default value is 5 minutes. Its default value is 5 seconds. Module :mod:`doctest` Module :mod:`unittest` See also :data:`INTERNET_TIMEOUT`. See also :data:`LOOPBACK_TIMEOUT`. Set to ``True`` if IPv6 is enabled on this host, ``False`` otherwise. The :mod:`test` package contains all regression tests for Python as well as the modules :mod:`test.support` and :mod:`test.regrtest`. :mod:`test.support` is used to enhance your tests while :mod:`test.regrtest` drives the testing suite. The :mod:`test` package is meant for internal use by Python only. It is documented for the benefit of the core developers of Python. Any use of this package outside of Python's standard library is discouraged as code mentioned here can change or be removed without notice between releases of Python. The module defines the following class: Usage:: Writing PyUnit regression tests. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-08 15:17+0800
PO-Revision-Date: 2021-06-28 01:14+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :mod:`test` ---  Pythonåå½æµè¯å :mod:`test`åä¸­æ¯ä¸ªåå­ä»¥ ``test_`` å¼å¤´çæ¨¡åé½æ¯ä¸ä¸ªç¹å®æ¨¡åæåè½çæµè¯å¥ä»¶ãæææ°çæµè¯åºè¯¥ä½¿ç¨ :mod:`unittest` æ :mod:`doctest` æ¨¡åç¼åãä¸äºæ§çæµè¯æ¯ä½¿ç¨âä¼ ç»âçæµè¯é£æ ¼ç¼åçï¼å³æ¯è¾æå°åºæ¥çè¾åºå°``sys.stdout``ï¼è¿ç§æµè¯é£æ ¼è¢«è®¤ä¸ºæ¯è¿æ¶çã å¶é»è®¤å¼æ¯1åéã å¶é»è®¤å¼ä¸º30ç§ã å¶é»è®¤å¼ä¸º5åéã å¶é»è®¤å¼ä¸º5ç§ã :mod:`doctest` --- ææ¡£æµè¯æ¨¡å æ¨¡å :mod:`unittest` åè§ :data:`INTERNET_TIMEOUT`ã åè§ :data:`LOOPBACK_TIMEOUT`ã è®¾ç½®ä¸º ``True`` å¦æä¸»æºæå¼IPv6, å¦å ``False`` . :mod:`test` ååå«äº Python çææåå½æµè¯ï¼ä»¥å :mod:`test.support` å :mod:`test.regrtest` æ¨¡åã  :mod:`test.support` ç¨äºå¢å¼ºä½ çæµè¯ï¼è :mod:`test.regrtest` é©±å¨æµè¯å¥ä»¶ã :mod:`test` ååªä¾ Python åé¨ä½¿ç¨ãå®çè®°å½æ¯ä¸ºäºè®© Python çæ ¸å¿å¼åèåçãæä»¬ä¸é¼å±å¨ Python æ ååºä¹å¤ä½¿ç¨è¿ä¸ªåï¼å ä¸ºè¿éæå°çä»£ç å¨ Python çä¸åçæ¬ä¹é´å¯è½ä¼æ¹åæè¢«å é¤èä¸å¦è¡éç¥ã  æ­¤æ¨¡åå®ä¹äºä»¥ä¸ç±»ï¼ ç¨æ³ï¼ ç¼å PyUnit åå½æµè¯. 