Þ    .                    ü     ý     	          &     6     F     S  `  b     Ã     à     ç     î            
              '     .     7     ?     E  
   L     W     `  
   l     w                              «  £   ´     X     _     e     i  	   n     x     }                    ¬     ¿  ½  Î               ¦     µ     Å     Õ     â    ñ     	
     %
     .
     7
     M
     Q
  
   X
     c
     j
     q
     z
     
     
  
   
     
     £
  
   ¯
     º
     Â
     Ë
     Ó
     Ú
     â
     î
  x   ÷
     p     w     }  	     	                  ¢     °     ½     Ë     Þ   :attr:`doc` :attr:`flags` :attr:`ml_doc` :attr:`ml_meth` :attr:`ml_name` :attr:`name` :attr:`offset` All Python objects ultimately share a small number of fields at the beginning of the object's representation in memory.  These are represented by the :c:type:`PyObject` and :c:type:`PyVarObject` types, which are defined, in turn, by the expansions of some macros also used, whether directly or indirectly, in the definition of all other Python objects. Base object types and macros C Type C type Common Object Structures Field Meaning Py_ssize_t T_BYTE T_CHAR T_DOUBLE T_FLOAT T_INT T_LONG T_LONGLONG T_OBJECT T_OBJECT_EX T_PYSSIZET T_SHORT T_STRING T_UBYTE T_UINT T_ULONG T_ULONGLONG T_USHORT There are a large number of structures which are used in the definition of object types for Python.  This section describes these structures and how they are used. double float int long long long name short unsigned char unsigned int unsigned long unsigned long long unsigned short Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-03 13:12+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :attr:`doc` :attr:`flags` :attr:`ml_doc` :attr:`ml_meth` :attr:`ml_name` :attr:`name` :attr:`offset` ææç Python å¯¹è±¡é½å¨å¯¹è±¡çåå­è¡¨ç¤ºçå¼å§é¨åå±äº«å°éçå­æ®µã è¿äºå­æ®µç¨ :c:type:`PyObject` æ :c:type:`PyVarObject` ç±»åæ¥è¡¨ç¤ºï¼è¿äºç±»ååç±ä¸äºå®å®ä¹ï¼è¿äºå®ä¹ç´æ¥æé´æ¥å°ç¨äºææå¶ä» Python å¯¹è±¡çå®ä¹ã åºæ¬çå¯¹è±¡ç±»ååå® C ç±»å C ç±»å å¬ç¨å¯¹è±¡çç»æ å å«æ Py_ssize_t T_BYTE T_CHAR T_DOUBLE T_FLOAT T_INT T_LONG T_LONGLONG T_OBJECT T_OBJECT_EX T_PYSSIZET T_SHORT T_STRING T_UBYTE T_UINT T_ULONG T_ULONGLONG T_USHORT å¤§éçç»æä½è¢«ç¨äºå®ä¹Pythonçå¯¹è±¡ç±»åãè¿ä¸èæè¿°äºè¿äºçç»æä½åå®ä»¬çä½¿ç¨æ¹æ³ã double float int é¿æ´å long long åç§° short unsigned char unsigned int unsigned long unsigned long long unsigned short 