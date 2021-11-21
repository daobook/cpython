Þ          ¬               <  Ù   =  p    °    ¦   9  Ù   à    º  ´   J  Ý  ÿ  }  Ý
  $   [  $      ¥     Á  Ä  Ø  3     S   Ñ  X   %  »  ~  à   :  n    \       ç  Ê   i  A  4  n   v    å  0  i  .     Ô  É  Ý        |   ¡     !   +"  6   M"  ?   "   By the way, the language is named after the BBC show "Monty Python's Flying Circus" and has nothing to do with reptiles.  Making references to Monty Python skits in documentation is not only allowed, it is encouraged! If you do much work on computers, eventually you find that there's some task you'd like to automate.  For example, you may wish to perform a search-and-replace over a large number of text files, or rename and rearrange a bunch of photo files in a complicated way. Perhaps you'd like to write a small custom database, or a specialized GUI application, or a simple game. If you're a professional software developer, you may have to work with several C/C++/Java libraries but find the usual write/compile/test/re-compile cycle is too slow.  Perhaps you're writing a test suite for such a library and find writing the testing code a tedious task.  Or maybe you've written a program that could use an extension language, and you don't want to design and implement a whole new language for your application. In the next chapter, the mechanics of using the interpreter are explained.  This is rather mundane information, but essential for trying out the examples shown later. Now that you are all excited about Python, you'll want to examine it in some more detail.  Since the best way to learn a language is to use it, the tutorial invites you to play with the Python interpreter as you read. Python allows you to split your program into modules that can be reused in other Python programs.  It comes with a large collection of standard modules that you can use as the basis of your programs --- or as examples to start learning to program in Python.  Some of these modules provide things like file I/O, system calls, sockets, and even interfaces to graphical user interface toolkits like Tk. Python enables programs to be written compactly and readably.  Programs written in Python are typically much shorter than equivalent C,  C++, or Java programs, for several reasons: Python is *extensible*: if you know how to program in C it is easy to add a new built-in function or module to the interpreter, either to perform critical operations at maximum speed, or to link Python programs to libraries that may only be available in binary form (such as a vendor-specific graphics library). Once you are really hooked, you can link the Python interpreter into an application written in C and use it as an extension or command language for that application. Python is an interpreted language, which can save you considerable time during program development because no compilation and linking is necessary.  The interpreter can be used interactively, which makes it easy to experiment with features of the language, to write throw-away programs, or to test functions during bottom-up program development. It is also a handy desk calculator. Python is just the language for you. Python is simple to use, but it is a real programming language, offering much more structure and support for large programs than shell scripts or batch files can offer.  On the other hand, Python also offers much more error checking than C, and, being a *very-high-level language*, it has high-level data types built in, such as flexible arrays and dictionaries.  Because of its more general data types Python is applicable to a much larger problem domain than Awk or even Perl, yet many things are at least as easy in Python as in those languages. The rest of the tutorial introduces various features of the Python language and system through examples, beginning with simple expressions, statements and data types, through functions and modules, and finally touching upon advanced concepts like exceptions and user-defined classes. Whetting Your Appetite You could write a Unix shell script or Windows batch files for some of these tasks, but shell scripts are best at moving around files and changing text data, not well-suited for GUI applications or games. You could write a C/C++/Java program, but it can take a lot of development time to get even a first-draft program.  Python is simpler to use, available on Windows, macOS, and Unix operating systems, and will help you get the job done more quickly. no variable or argument declarations are necessary. statement grouping is done by indentation instead of beginning and ending brackets; the high-level data types allow you to express complex operations in a single statement; Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-08 15:17+0800
PO-Revision-Date: 2021-06-28 01:49+0000
Last-Translator: xinetzone <735613050@qq.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 é¡ºä¾¿æä¸å¥ï¼æ¬è¯­è¨çå½åæºèª BBC ç âMonty Python é£è¡é©¬æå¢âï¼ä¸ç¬è¡å¨ç©æ å³ï¼Python åä¹ä¸º âèèâï¼ãæ¬¢è¿å¤§å®¶å¨ææ¡£ä¸­å¼ç¨ Monty Python å°åç­ç¯éï¼å¤å¤çåï¼ å¦ææ¨çå·¥ä½ä¸»è¦æ¯ç¨çµèå®æçï¼æ»æä¸å¤©æ¨å¯è½ä¼æ³è½ä¸è½èªå¨æ§è¡ä¸äºä»»å¡ãæ¯å¦ï¼å¯¹å¤§éææ¬æä»¶æ§è¡æ¥æ¾ãæ¿æ¢æä½ï¼å©ç¨å¤æçè§åéå½åãéæåºä¸å ç§çæä»¶ï¼æ¨ä¹å¯è½æ³ç¼åä¸ä¸ªå°åèªå®ä¹æ°æ®åºãæå¼åä¸ç¨çå¾å½¢çé¢åºç¨ï¼çè³æ¯å¼åä¸ä¸ªç®åçæ¸¸æã ä½ä¸ºä¸åä¸ä¸è½¯ä»¶å¼åäººåï¼æ¨å¯è½è¦å¤ç C/C++/Java åºï¼ä½ç¼ç ãç¼è¯ãæµè¯ãåç¼è¯è¿äºå¼åæµç¨å¤ªæ¢äºï¼ä¹è®¸æ¨æ­£å¨ç»è¿äºåºå¼åæµè¯å¥ä»¶ï¼ä½æ»è§å¾è¿é¡¹å·¥ä½çæ¯æ¯ç¥ä¹å³ãåæè®¸ï¼æ¨å¼åäºä¸ªä½¿ç¨æ©å±è¯­è¨çè½¯ä»¶ï¼å´ä¸æ³ä¸ºè¿ä¸ªè½¯ä»¶ä¸é¨è®¾è®¡ä¸ç§æ°è¯­è¨ã ä¸ä¸ç« ä»ç»è§£éå¨çç¨æ³ãè¿é¨ååå®¹æäºåè°ä¹å³ï¼ä½å¯¹ä¸æå®è·µåé¢çä¾å­æ¥è¯´å´è³å³éè¦ã ç°å¨ï¼æ¨å·²ç»å¯¹ Python è·è·æ¬²è¯ï¼æ³æ·±å¥äºè§£ä¸äºç»èäºå§ãè¦ç¥éï¼å­¦ä¹ è¯­è¨çæä½³æ¹å¼æ¯ä¸æå®è·µï¼å»ºè®®æ¨è¾¹éè¯»æ¬æç¨ï¼è¾¹å¨ Python è§£éå¨ä¸­ç»ä¹ ã Python æ¯ææç¨åºåå²ä¸ºæ¨¡åï¼ä»¥ä¾¿å¨å¶ä» Python ç¨åºä¸­å¤ç¨ãå®è¿åç½®äºå¤§éæ åæ¨¡åï¼ä½ä¸ºå¼åç¨åºçåºç¡ ââ æ¨è¿å¯ä»¥æè¿äºæ¨¡åå½ä½å­¦ä¹  Python ç¼ç¨çå®ä¾ãè¿äºæ¨¡ååæ¬ I/Oãç³»ç»è°ç¨ãå¥æ¥å­ï¼çè³è¿åæ¬ Tk å¾å½¢ç¨æ·çé¢å·¥ä½å¥ä»¶ã Python ç¨åºç®æ´ãæè¯»ï¼éå¸¸æ¯å®ç°åç§åè½ç CãC++ãJava ä»£ç ç­å¾å¤ï¼åå å¦ä¸ï¼ Python æ¯ âå¯æ©å±çâï¼ä¼å¼å C è¯­è¨ç¨åºï¼å°±è½å¿«éä¸æä¸ºè§£éå¨å¢å æ°çåç½®å½æ°ææ¨¡åï¼ä¸è®ºæ¯è®©æ ¸å¿ç¨åºä»¥æé«éåº¦è¿è¡ï¼è¿æ¯æ Python ç¨åºé¾æ¥å°åªæä¾é¢ç¼è¯ç¨åºçåºï¼æ¯å¦ï¼ç¡¬ä»¶å¾å½¢åºï¼ãåªè¦ä¸ç¹åå¤«ï¼å°±è½æ Python è§£éå¨åç¨ C å¼åçåºç¨é¾æ¥å¨ä¸èµ·ï¼ç¨å®æ©å±åæ§å¶åºç¨ã Python æ¯ä¸ç§è§£éåè¯­è¨ï¼ä¸éè¦ç¼è¯åé¾æ¥ï¼å¯ä»¥èçå¤§éå¼åæ¶é´ãå®çè§£éå¨å®ç°äºäº¤äºå¼æä½ï¼è½»èæä¸¾å°å°±è½è¯ç¨åç§è¯­è¨åè½ï¼ç¼åä¸´æ¶ç¨åºï¼æå¨èªåºåä¸çç¨åºå¼åä¸­æµè¯åè½ãåæ¶ï¼å®è¿æ¯ä¸ä¸ªè¶å¥½ç¨çè®¡ç®å¨ã é£ä¹ï¼Python æ­£å¥½è½æ»¡è¶³æ¨çéè¦ã Python è½ç¶ç®åæç¨ï¼ä½å®å¯æ¯çæ­£çç¼ç¨è¯­è¨ï¼æä¾äºå¤§éçæ°æ®ç»æï¼ä¹æ¯æå¼åå¤§åç¨åºï¼è¿è¶ shell èæ¬ææ¹å¤çæä»¶ï¼Python æä¾çéè¯¯æ£æ¥æ¯ C è¿å¤ï¼ä½ä¸ºä¸ç§âéå¸¸é«çº§çè¯­è¨âï¼å®åç½®äºçµæ´»çæ°ç»ä¸å­å¸ç­é«çº§æ°æ®ç±»åãæ­£å ä¸ºéå¤äºæ´éç¨çæ°æ®ç±»åï¼Python æ¯ Awkï¼çè³ Perl è½è§£å³æ´å¤é®é¢ï¼èä¸ï¼å¾å¤æ¶åï¼Python æ¯è¿äºè¯­è¨æ´ç®åã æ¬æç¨çå¶ä½é¨åéè¿å®ä¾ä»ç»äº Python è¯­è¨åç³»ç»çåç§ç¹æ§ï¼ä»ç®åçè¡¨è¾¾å¼ãè¯­å¥åæ°æ®ç±»åå¼å§ï¼å°å½æ°åæ¨¡åï¼æåè°å°é«çº§æ¦å¿µï¼å¦å¼å¸¸åç¨æ·å®ä¹çç±»ã è¯¾åçç¹ è½ç¶ï¼Unix èæ¬æ Windows æ¹å¤çæä»¶ä¹å¯ä»¥å®æè¿äºä»»å¡ï¼ä½ shell èæ¬æé¿çæ¯ç§»å¨æä»¶åæ¿æ¢ææ¬ï¼å¹¶ä¸æé¿ GUI çé¢ææ¸¸æå¼åãå½ç¶ï¼æ¨ä¹å¯ä»¥ç¼å C/C++/Java ç¨åºï¼ä½å¼åç¬¬ä¸ä¸ªçæ¬çåç¨¿å¯è½å°±è¦èè´¹å¾é¿æ¶é´ãPython åç®åæç¨ï¼æ¢å¯ä»¥å¨ WindowsãMac OS XãUnix ç­æä½ç³»ç»ä¸ä½¿ç¨ï¼ä¹å¯ä»¥è®©æ¨æ´å¿«å®æä»»å¡ã æ éé¢å£°æåéæåæ°ã ä½¿ç¨ç¼©è¿ï¼èä¸æ¯æ¬å·å®ç°ä»£ç ååç»ï¼ é«çº§æ°æ®ç±»ååè®¸å¨åä¸è¯­å¥ä¸­è¡¨è¿°å¤ææä½ï¼ 