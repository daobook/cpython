Þ                         ì      í        	          ÿ   ,  z   ,  ]   §  `     W   f  l   ¾  I   +  /   u  ¼  ¥     b  |   w     ô     û  ñ   }  [   o	  V   Ë	  I   "
  `   l
  a   Í
  =   /  *   m   :mod:`email`: Examples First, let's see how to create and send a simple text message (both the text content and the addresses may contain unicode characters): Footnotes Here are a few examples of how to use the :mod:`email` package to read, write, and send simple email messages, as well as more complex MIME messages. Here's an example of how to create an HTML message with an alternative plain text version.  To make things a bit more interesting, we include a related image in the html part, and we save a copy of what we are going to send to disk, as well as sending it. Here's an example of how to send a MIME message containing a bunch of family pictures that may be residing in a directory: Here's an example of how to send the entire contents of a directory as an email message: [1]_ Here's an example of how to unpack a MIME message like the one above, into a directory of files: If we were sent the message from the last example, here is one way we could process it: Parsing :rfc:`822` headers can easily be done by the using the classes from the :mod:`~email.parser` module: Thanks to Matthew Dixon Cowles for the original inspiration and examples. Up to the prompt, the output from the above is: Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:05+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :mod:`email`: ç¤ºä¾ é¦åï¼è®©æä»¬ççå¦ä½åå»ºååéç®åçææ¬æ¶æ¯ï¼ææ¬åå®¹åå°åé½å¯è½åå«unicodeå­ç¬¦ï¼ï¼ å¤æ³¨ ä»¥ä¸æ¯ä¸äºå¦ä½ä½¿ç¨ :mod:`email` åæ¥è¯»åãåå¥ååéç®åçµå­é®ä»¶ä»¥åæ´å¤æçMIMEé®ä»¶çç¤ºä¾ã ä»¥ä¸æ¯å¦ä½ä½¿ç¨å¤ç¨çº¯ææ¬çæ¬åå»º HTML æ¶æ¯çç¤ºä¾ã ä¸ºäºè®©äºæåå¾æ´æè¶£ï¼æä»¬å¨ html é¨åä¸­åå«äºä¸ä¸ªç¸å³çå¾åï¼æä»¬ä¿å­äºä¸ä»½æä»¬è¦åéçåå®¹å°ç¡¬çä¸­ï¼ç¶ååéå®ã ä»¥ä¸æ¯å¦ä½åéåå«å¯è½å¨ç®å½ä¸­çä¸ç³»åå®¶åº­ç§ççMIMEæ¶æ¯ç¤ºä¾ï¼ ä»¥ä¸æ¯å¦ä½å°ç®å½çå¨é¨åå®¹ä½ä¸ºçµå­é®ä»¶æ¶æ¯åéçç¤ºä¾ï¼ [1]_ ä»¥ä¸æ¯å¦ä½å°ä¸è¿°MIMEæ¶æ¯è§£åç¼©å°æä»¶ç®å½ä¸­çç¤ºä¾ï¼ å¦ææä»¬åéæåä¸ä¸ªç¤ºä¾ä¸­çæ¶æ¯ï¼è¿æ¯æä»¬å¯ä»¥å¤çå®çä¸ç§æ¹æ³ï¼ è§£æ :rfc:`822` æ é¢å¯ä»¥éè¿ä½¿ç¨ :mod:`~email.parser` æ¨¡åä¸­çç±»æ¥è½»æ¾å®æï¼ æè°¢ Matthew Dixon Cowles æä¾æåççµæåç¤ºä¾ã ç´å°è¾åºæç¤ºï¼ä¸é¢çè¾åºæ¯ï¼ 