Þ    '      T                     '     ,   Ã  M   ð     >     N  W   _  .   ·     æ     ï  ,   õ  $   "     G     W     g      y          :     Y  =   u     ³  -   Ï  °   ý     ®     .  &   G     n  6     1   ¸     ê     û       	                  *  
   /     :  º  F     
  %   
  %   5
  D   [
      
     ¯
  <   ¿
  2   ü
     /     6  $   :  -   _          £     ³     Æ     c     |       "   ®     Ñ  6   ä       E   ±     ÷       	   &  (   0  +   Y                 	   ¥     ¯     ¶     Â  
   Ç     Ò   # of channels **Source code:** :source:`Lib/sunau.py` :mod:`sunau` --- Read and write Sun AU files ASCII string giving a description of the audio file (padded with null bytes). AU_read Objects AU_write Objects An audio file consists of a header followed by the data.  The fields of the header are: Any :term:`bytes-like object` is now accepted. Contents Field Indicates how the audio samples are encoded. Physical size of the data, in bytes. Raise an error. Read only mode. Returns ``None``. Returns a :func:`~collections.namedtuple` ``(nchannels, sampwidth, framerate, nframes, comptype, compname)``, equivalent to output of the :meth:`get\*` methods. Returns number of audio frames. Returns sample width in bytes. Returns sampling frequency. Rewind the file pointer to the beginning of the audio stream. Set the number of channels. Size of the header, including info, in bytes. The :mod:`sunau` module provides a convenient interface to the Sun AU sound format.  Note that this module is interface-compatible with the modules :mod:`aifc` and :mod:`wave`. The following two methods define a term "position" which is compatible between them, and is otherwise implementation dependent. The four bytes ``.snd``. The number of channels in the samples. The sampling rate. Write audio frames and make sure *nframes* is correct. Write audio frames, without correcting *nframes*. Write only mode. ``'r'`` ``'w'`` data size encoding header size info magic word sample rate Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:14+0000
Last-Translator: ppcfish <ppcfish@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 # of channels **æºä»£ç :** :source:`Lib/sunau.py` :mod:`sunau` --- è¯»å Sun AU æä»¶ æä¾é³é¢æä»¶æè¿°çASCIIå­ç¬¦ä¸²ï¼ç¨ç©ºå­èå¡«åï¼ã AU_read å¯¹è±¡ AU_write å¯¹è±¡ é³é¢æä»¶ç±æ å¤´åæ°æ®ç»æãæ å¤´çå­æ®µä¸ºï¼ ç°å¨å¯æ¥åä»»æ :term:`bytes-like object`ã ç®å½ å æç¤ºé³é¢æ ·æ¬çç¼ç æ¹å¼ã æ°æ®çç©çå¤§å°ï¼ä»¥å­èä¸ºåä½ã å¼åéè¯¯å¼å¸¸ã åªè¯»æ¨¡å¼ã è¿å ``None``ã è¿åä¸ä¸ª :func:`~collections.namedtuple` ``(nchannels, sampwidth, framerate, nframes, comptype, compname)``ï¼ä¸ :meth:`get\*` æ¹æ³çè¾åºç¸åã è¿åé³é¢æ»å¸§æ°ã è¿åéæ ·å­èé¿åº¦ã è¿åéæ ·é¢çã éç½®æä»¶æéè³é³é¢å¼å¤´. è®¾ç½®å£°éæ°ã æ å¤´çå¤§å°ï¼åæ¬ä¿¡æ¯ï¼ä»¥å­èä¸ºåä½ã :mod:`sunau` æ¨¡ææä¾äºä¸ä¸ªå¤ç Sun AU å£°é³æ ¼å¼çä¾¿å©æ¥å£ãè¯·æ³¨ææ­¤æ¨¡åä¸ :mod:`aifc` å :mod:`wave` æ¯å¼å®¹æ¥å£çã ä»¥ä¸ä¸¤ä¸ªæ¹æ³é½ä½¿ç¨æéï¼å·ä½å®ç°ç±å¶åºå±å³å®ã åä¸ªå­è ``.snd`` éæ ·ä¸­çééæ°ã éæ ·ç åå¥é³é¢æ°æ®å¹¶æ´æ° *nframes*ã åå¥é³é¢æ°æ®ä½ä¸æ´æ° *nframes*ã åªåæ¨¡å¼ã ``'r'`` ``'w'`` data size ç¼ç  header size info magic word sample rate 