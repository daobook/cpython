Þ          ì               ¼     ½  2  ×  º  
     Å  R  Í  %     ¼  F	  ì       ð     }  
     #       ¹     À     ß     è     í  =  ý     ;  <  ¾  ÿ   û     û  b     ­   â      ½  ¥     c  '  p  e       þ      §    `  ¼   Ï   "  Y  í"     G$  
   N$  Ø  Y$     2&     9&     P&     W&     \&  é   l&  e   V'    ¼'  á   ¿(  w   ¡)  >   *     X*  Ì  â*   Alternate Implementations An alternate Python for .NET.  Unlike Python.NET, this is a complete Python implementation that generates IL, and compiles Python code directly to .NET assemblies.  It was created by Jim Hugunin, the original creator of Jython.  For more information, see `the IronPython website <http://ironpython.net/>`_. An implementation of Python written completely in Python. It supports several advanced features not found in other implementations like stackless support and a Just in Time compiler. One of the goals of the project is to encourage experimentation with the language itself by making it easier to modify the interpreter (since it is written in Python).  Additional information is available on `the PyPy project's home page <http://pypy.org/>`_. CPython Each of these implementations varies in some way from the language as documented in this manual, or introduces specific information beyond what's covered in the standard Python documentation.  Please refer to the implementation-specific documentation to determine what else you need to know about the specific implementation you're using. Each rule begins with a name (which is the name defined by the rule) and ``::=``.  A vertical bar (``|``) is used to separate alternatives; it is the least binding operator in this notation.  A star (``*``) means zero or more repetitions of the preceding item; likewise, a plus (``+``) means one or more repetitions, and a phrase enclosed in square brackets (``[ ]``) means zero or one occurrences (in other words, the enclosed phrase is optional).  The ``*`` and ``+`` operators bind as tightly as possible; parentheses are used for grouping.  Literal strings are enclosed in quotes.  White space is only meaningful to separate tokens. Rules are normally contained on a single line; rules with many alternatives may be formatted alternatively with each line after the first beginning with a vertical bar. Even though the notation used is almost the same, there is a big difference between the meaning of lexical and syntactic definitions: a lexical definition operates on the individual characters of the input source, while a syntax definition operates on the stream of tokens generated by the lexical analysis. All uses of BNF in the next chapter ("Lexical Analysis") are lexical definitions; uses in subsequent chapters are syntactic definitions. Every Python implementation comes with a number of built-in and standard modules.  These are documented in :ref:`library-index`.  A few built-in modules are mentioned when they interact in a significant way with the language definition. In lexical definitions (as the example above), two more conventions are used: Two literal characters separated by three dots mean a choice of any single character in the given (inclusive) range of ASCII characters.  A phrase between angular brackets (``<...>``) gives an informal description of the symbol defined; e.g., this could be used to describe the notion of 'control character' if needed. Introduction IronPython It is dangerous to add too many implementation details to a language reference document --- the implementation may change, and other implementations of the same language may work differently.  On the other hand, CPython is the one Python implementation in widespread use (although alternate implementations continue to gain support), and its particular quirks are sometimes worth being mentioned, especially where the implementation imposes additional limitations. Therefore, you'll find short "implementation notes" sprinkled throughout the text. Jython Known implementations include: Notation PyPy Python for .NET Python implemented in Java.  This implementation can be used as a scripting language for Java applications, or can be used to create applications using the Java class libraries.  It is also often used to create tests for Java libraries. More information can be found at `the Jython website <http://www.jython.org/>`_. The descriptions of lexical analysis and syntax use a modified BNF grammar notation.  This uses the following style of definition: The first line says that a ``name`` is an ``lc_letter`` followed by a sequence of zero or more ``lc_letter``\ s and underscores.  An ``lc_letter`` in turn is any of the single characters ``'a'`` through ``'z'``.  (This rule is actually adhered to for the names defined in lexical and grammar rules in this document.) This implementation actually uses the CPython implementation, but is a managed .NET application and makes .NET libraries available.  It was created by Brian Lloyd.  For more information, see the `Python for .NET home page <https://pythonnet.github.io/>`_. This is the original and most-maintained implementation of Python, written in C. New language features generally appear here first. This reference manual describes the Python programming language. It is not intended as a tutorial. Though there is one Python implementation which is by far the most popular, there are some alternate implementations which are of particular interest to different audiences. While I am trying to be as precise as possible, I chose to use English rather than formal specifications for everything except syntax and lexical analysis. This should make the document more understandable to the average reader, but will leave room for ambiguities. Consequently, if you were coming from Mars and tried to re-implement Python from this document alone, you might have to guess things and in fact you would probably end up implementing quite a different language. On the other hand, if you are using Python and wonder what the precise rules about a particular area of the language are, you should definitely be able to find them here. If you would like to see a more formal definition of the language, maybe you could volunteer your time --- or invent a cloning machine :-). Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 å¶ä»å®ç° å¦ä¸ä¸ª .NET ç Python å®ç°ï¼ä¸ Python.NET ä¸åç¹å¨äºå®æ¯çæ IL çå®å¨ Python å®ç°ï¼å¹¶ä¸å° Python ä»£ç ç´æ¥ç¼è¯ä¸º .NET ç¨åºéãå®çåé èå°±æ¯å½ååé  Jython ç Jim Huguninãæ³äºè§£è¯¦æå¯è®¿é® `IronPython ç½ç« <http://ironpython.net/>`_ã å®å¨ä½¿ç¨ Python è¯­è¨ç¼åç Python å®ç°ãå®æ¯æå¤ä¸ªå¶ä»å®ç°ææ²¡æçé«çº§ç¹æ§ï¼ä¾å¦éæ å¼æ¯æå JIT ç¼è¯å¨ç­ãæ­¤é¡¹ç®çç®æ ä¹ä¸æ¯éè¿åè®¸æ¹ä¾¿å°ä¿®æ¹è§£éå¨ (å ä¸ºå®æ¯ç¨ Python ç¼åç)ï¼é¼å±è¯¥å¯¹è¯­è¨æ¬èº«è¿è¡è¯éªãæ³äºè§£è¯¦æå¯è®¿é® `PyPy é¡¹ç®ä¸»é¡µ <http://pypy.org/>`_ã CPython ä»¥ä¸è¿äºå®ç°é½å¯è½å¨æäºæ¹é¢ä¸æ­¤åèææ¡£æåçæè¿°ææå·®å¼ï¼ææ¯å¼å¥äºè¶åºæ å Python ææ¡£èå´çç¹å®ä¿¡æ¯ãè¯·åèå®ä»¬åèªçä¸é¨ææ¡£ï¼ä»¥ç¡®å®ä½ æ­£å¨ä½¿ç¨çè¿ä¸ªå®ç°æåªäºä½ éè¦äºè§£çä¸è¥¿ã æ¯æ¡è§åçå¼å¤´æ¯ä¸ä¸ªåç§° (å³è¯¥è§åæå®ä¹çåç§°) å ä¸ ``::=``ãç«çº¿ ï¼``|``ï¼ è¢«ç¨æ¥åéå¯éé¡¹ï¼å®æ¯æ­¤æ æ³¨ä¸­ç»å®ç¨åº¦æä½çæä½ç¬¦ãæå· ï¼``*``ï¼ è¡¨ç¤ºåä¸é¡¹çé¶æ¬¡æå¤æ¬¡éå¤ï¼ç±»ä¼¼å°ï¼å å· ï¼``+``ï¼ è¡¨ç¤ºä¸æ¬¡æå¤æ¬¡éå¤ï¼èç±æ¹æ¬å·æ¬èµ·çåå®¹ ï¼``[ ]``ï¼ è¡¨ç¤ºåºç°é¶æ¬¡æä¸æ¬¡ï¼æèè¯´ï¼è¿é¨ååå®¹æ¯å¯éçï¼ã``*`` å ``+`` æä½ç¬¦çç»å®æ¯æç´§å¯çï¼åæ¬å·ç¨äºåç»ãå­ç¬¦ä¸²å­é¢å¼åå«å¨å¼å·åãç©ºæ ¼çä½ç¨ä»éäºåéå½¢ç¬¦ãæ¯æ¡è§åéå¸¸ä¸ºä¸è¡ï¼æè®¸å¤ä¸ªå¯éé¡¹çè§åå¯è½ä¼ä»¥ç«çº¿ä¸ºçåä¸ºå¤è¡ã è½ç¶æç¨çæ æ³¨æ¹å¼å ä¹ç¸åï¼ä½æ¯è¯æ³å®ä¹åå¥æ³å®ä¹æ¯å­å¨å¾å¤§åºå«çï¼è¯æ³å®ä¹ä½ç¨äºè¾å¥æºä¸­åç¬çå­ç¬¦ï¼èå¥æ³å®ä¹åä½ç¨äºç±è¯æ³åææçæçå½¢ç¬¦æµãå¨ä¸ä¸ç« èï¼âè¯æ³åæâ) ä¸­ä½¿ç¨ç BNF å¨é¨é½æ¯è¯æ³å®ä¹ï¼å¨ä¹åçç« èä¸­ä½¿ç¨çåæ¯å¥æ³å®ä¹ã æ¯ç§ Python å®ç°é½å¸¦æä¸äºåç½®åæ åçæ¨¡åãç¸å³çææ¡£å¯åè§ :ref:`library-index` ç´¢å¼ãå°æ°åç½®æ¨¡åä¹ä¼å¨æ­¤æåï¼å¦æå®ä»¬åè¯­è¨æè¿°å­å¨ææ¾çå³èã å¨è¯æ³å®ä¹ä¸­ï¼å¦ä¸è¿°ç¤ºä¾ï¼ï¼è¿é¢å¤ä½¿ç¨äºä¸¤ä¸ªçº¦å®ï¼ç±ä¸ä¸ªç¹å·åéçä¸¤ä¸ªå­ç¬¦å­é¢å¼è¡¨ç¤ºå¨æå®ï¼é­ï¼åºé´èå´åçä»»æåä¸ª ASCII å­ç¬¦ãç±å°æ¬å·ï¼``<...>``ï¼æ¬èµ·æ¥çåå®¹æ¯å¯¹äºæå®ä¹ç¬¦å·çéæ­£å¼æè¿°ï¼å³å¯ä»¥å¨å¿è¦æ¶ç¨æ¥è¯´æ âæ§å¶å­ç¬¦â çæå¾ã æ¦è¿° IronPython å¨è¯­è¨åèææ¡£éå å¥è¿å¤çå®ç°ç»èæ¯å¾å±é©ç --- å·ä½å®ç°å¯è½åçæ¹åï¼å¯¹åä¸è¯­è¨çå¶ä»å®ç°å¯è½ä½¿ç¨ä¸åçæ¹å¼ãèå¨å¦ä¸æ¹é¢ï¼CPython æ¯å¾å°å¹¿æ³ä½¿ç¨ç Python å®ç° (ç¶èå¶ä»ä¸äºå®ç°çæ¥æ¤èä¹å¨å¢å )ï¼å¶ä¸­çç¹æ®ç»èææ¶ä¹å¼å¾ä¸æï¼ç¹å«æ¯å½å¶å®ç°æ¹å¼å¯¼è´é¢å¤çéå¶æ¶ãå æ­¤ï¼ä½ ä¼åç°å¨æ­£æéä¸æ¶ä¼è·³åºæ¥ä¸äºç®ç­ç âå®ç°æ³¨éâã Jython ç¥åçå®ç°åæ¬: æ æ³¨ PyPy Python for .NET ä»¥ Java è¯­è¨ç¼åç Python å®ç°ãæ­¤å®ç°å¯ä»¥ä½ä¸º Java åºç¨çä¸ä¸ªèæ¬è¯­è¨ï¼æèå¯ä»¥ç¨æ¥åå»ºéè¦ Java ç±»åºæ¯æçåºç¨ãæ³äºè§£æ´å¤ä¿¡æ¯å¯è®¿é® `Jython ç½ç« <http://www.jython.org/>`_ã å¥æ³åè¯æ³è§£æçæè¿°éç¨ç»è¿æ¹è¿ç BNF è¯­æ³æ æ³¨ãè¿åå«ä»¥ä¸å®ä¹æ ·å¼ï¼ ç¬¬ä¸è¡è¡¨ç¤º ``name`` æ¯ ``lc_letter``ï¼å¶åè·é¶ä¸ªæå¤ä¸ª ``lc_letter`` åä¸åçº¿ãè ``1c_letter`` åæ¯ä»»æåä¸ª ``'a'`` è³ ``'z'`` å­ç¬¦ãï¼å®éä¸å¨æ¬ææ¡£ä¸­å§ç»éç¨æ­¤è§åæ¥å®ä¹è¯æ³åè¯­æ³è§åçåç§°ãï¼ æ­¤å®ç°å®éä¸ä½¿ç¨äº CPython å®ç°ï¼ä½æ¯å±äº .NET æç®¡åºç¨å¹¶ä¸å¯ä»¥å¼å¥ .NET ç±»åºãå®çåé èæ¯ Brian Lloydãæ³äºè§£è¯¦æå¯è®¿é® `Python for .NET ä¸»é¡µ <https://pythonnet.github.io/>`_ã è¿æ¯ææ©åºç°å¹¶æç»­ç»´æ¤ç Python å®ç°ï¼ä»¥ C è¯­è¨ç¼åãæ°çè¯­è¨ç¹æ§éå¸¸å¨æ­¤çåæ·»å ã æ¬æåä»æè¿° Python ç¼ç¨è¯­è¨ï¼ä¸å®å½ä½æç¨ã è½ç¶å®æ¹ Python å®ç°å·®ä¸å¤å¾å°æå¹¿æ³çæ¬¢è¿ï¼ä½ä¹æä¸äºå¶ä»å®ç°å¯¹ç¹å®é¢åçç¨æ·æ¥è¯´æ´å·å¸å¼åã å¸æå°½å¯è½å°ä¿è¯åå®¹ç²¾ç¡®æ è¯¯ï¼ä½è¿æ¯éæ©ä½¿ç¨èªç¶è¯å¥è¿è¡æè¿°ï¼æ­£å¼çè§æ ¼å®ä¹ä»ç¨äºå¥æ³åè¯æ³è§£æãè¿æ ·åºè¯¥è½ä½¿ææ¡£å¯¹äºæ®éäººæ¥è¯´æ´æçè§£ï¼ä½ä¹å¯è½å¯¼è´ä¸äºæ­§ä¹ãå æ­¤ï¼å¦æä½ æ¯æ¥èªç«æå¹¶ä¸æ³å­åè¿ä»½ææ¡£æ Python éæ°å®ç°ä¸éï¼ä¹è®¸ææ¶éè¦èªè¡çæµï¼å®éä¸æç»å¤§æ¦ä¼å¾å°ä¸ä¸ªååä¸åçè¯­è¨ãèå¨å¦ä¸æ¹é¢ï¼å¦æä½ æ­£å¨ä½¿ç¨ Python å¹¶ä¸æ³äºè§£æå³è¯¥è¯­è¨ç¹å®é¢åçç²¾ç¡®è§åï¼ä½ åºè¯¥è½å¤å¨è¿éæ¾å°å®ä»¬ãå¦æä½ å¸ææ¥çå¯¹è¯¥è¯­è¨æ´æ­£å¼çå®ä¹ï¼ä¹è®¸ä½ å¯ä»¥è±äºæ¶é´èªå·±åä¸ä¸ä»½ --- æèåæä¸å°åéæºå¨ :-) ã 