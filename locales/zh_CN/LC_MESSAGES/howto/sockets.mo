Þ    :      ì              ¼  S  ½      Ý     ¦   {     "  ;  +  `   g	     È	     Ï	  á  Û	     ½     Ï  ð   Ý     Î     Þ  O  æ     6  ©  :  T  ä  0  9  ø   j  É   c  ´  -  Ê   â  µ   ­  i  c  {  Í     I  g   ^  4  Æ  ù  û  	  õ!  :  ÿ"    :$  Î  Ø%  ;  §'  '  ã)    -  }   .     /     &/  w  ./    ¦0  Q   ¾2  ö  3  Î  5    Ö6  [  ^8  n  º9    )=     ?>     O>  g   ^>     Æ>     ×>  !  Ø?  í  ú@  ½  èB  k  ¦D  q  F  ô   G  Ì   yH     FI    MI  Y   dJ     ¾J     ÅJ  ¤  ÕJ     zM     M  ö   M     N     N  S  ¥N     ùP  µ  	Q  n  ¿R  c  .T  ÷   U  Í   V  Ç  XW  ¾    Y     ßY  >  jZ  d  ©[     ^  ~   $^  J  £^  ª  î`  ê   b  !  c    ¦d  æ  ,f  T  h    hj  r  m  w   wn     ïn  	   o  j  o  	  zp  M   r    Òr    ht  ¢  øu  Z  w  U  öx     L|     m}     }  w   }     ~  ô   '~      Ù  +   **Portability alert**: On Unix, ``select`` works both with the sockets and files. Don't try this on Windows. On Windows, ``select`` works with sockets only. Also note that in C, many of the more advanced socket options are done differently on Windows. In fact, on Windows I usually use threads (which work very, very well) with my sockets. A couple things to notice: we used ``socket.gethostname()`` so that the socket would be visible to the outside world.  If we had used ``s.bind(('localhost', 80))`` or ``s.bind(('127.0.0.1', 80))`` we would still have a "server" socket, but one that was only visible within the same machine.  ``s.bind(('', 80))`` specifies that the socket is reachable by any address the machine happens to have. A protocol like HTTP uses a socket for only one transfer. The client sends a request, then reads a reply.  That's it. The socket is discarded. This means that a client can detect the end of the reply by receiving 0 bytes. A second thing to note: low number ports are usually reserved for "well known" services (HTTP, SNMP etc). If you're playing around, use a nice high number (4 digits). Abstract Actually, ``select`` can be handy even with blocking sockets. It's one way of determining whether you will block - the socket returns as readable when there's something in the buffers.  However, this still doesn't help with the problem of determining whether the other end is done, or just busy with something else. Assuming you don't want to end the connection, the simplest solution is a fixed length message:: Author Binary Data But if you plan to reuse your socket for further transfers, you need to realize that *there is no* :abbr:`EOT (End of Transfer)` *on a socket.* I repeat: if a socket ``send`` or ``recv`` returns after handling 0 bytes, the connection has been broken.  If the connection has *not* been broken, you may wait on a ``recv`` forever, because the socket will *not* tell you that there's nothing more to read (for now).  Now if you think about that a bit, you'll come to realize a fundamental truth of sockets: *messages must either be fixed length* (yuck), *or be delimited* (shrug), *or indicate how long they are* (much better), *or end by shutting down the connection*. The choice is entirely yours, (but some ways are righter than others). Creating a Socket Disconnecting Finally, the argument to ``listen`` tells the socket library that we want it to queue up as many as 5 connect requests (the normal max) before refusing outside connections. If the rest of the code is written properly, that should be plenty. Gordon McMillan History I'm only going to talk about INET (i.e. IPv4) sockets, but they account for at least 99% of the sockets in use. And I'll only talk about STREAM (i.e. TCP) sockets - unless you really know what you're doing (in which case this HOWTO isn't for you!), you'll get better behavior and performance from a STREAM socket than anything else. I will try to clear up the mystery of what a socket is, as well as some hints on how to work with blocking and non-blocking sockets. But I'll start by talking about blocking sockets. You'll need to know how they work before dealing with non-blocking sockets. IPC If a socket is in the output readable list, you can be as-close-to-certain-as-we-ever-get-in-this-business that a ``recv`` on that socket will return *something*. Same idea for the writable list. You'll be able to send *something*. Maybe not all you want to, but *something* is better than nothing.  (Actually, any reasonably healthy socket will return as writable - it just means outbound network buffer space is available.) If you have a "server" socket, put it in the potential_readers list. If it comes out in the readable list, your ``accept`` will (almost certainly) work. If you have created a new socket to ``connect`` to someone else, put it in the potential_writers list. If it shows up in the writable list, you have a decent chance that it has connected. If you need fast IPC between two processes on one machine, you should look into pipes or shared memory.  If you do decide to use AF_INET sockets, bind the "server" socket to ``'localhost'``. On most platforms, this will take a shortcut around a couple of layers of network code and be quite a bit faster. If you've understood the preceding, you already know most of what you need to know about the mechanics of using sockets. You'll still use the same calls, in much the same ways. It's just that, if you do it right, your app will be almost inside-out. In C, coding ``select`` is fairly complex. In Python, it's a piece of cake, but it's close enough to the C version that if you understand ``select`` in Python, you'll have little trouble with it in C:: In Python, you use ``socket.setblocking(False)`` to make it non-blocking. In C, it's more complex, (for one thing, you'll need to choose between the BSD flavor ``O_NONBLOCK`` and the almost indistinguishable POSIX flavor ``O_NDELAY``, which is completely different from ``TCP_NODELAY``), but it's the exact same idea. You do this after creating the socket, but before using it. (Actually, if you're nuts, you can switch back and forth.) In return, you will get three lists. They contain the sockets that are actually readable, writable and in error. Each of these lists is a subset (possibly empty) of the corresponding list you passed in. In the interests of space, building your character, (and preserving my competitive position), these enhancements are left as an exercise for the reader. Lets move on to cleaning up. In these days of 32 bit machines, the ascii representation of binary data is frequently smaller than the binary representation. That's because a surprising amount of the time, all those longs have the value 0, or maybe 1. The string "0" would be two bytes, while binary is four. Of course, this doesn't fit well with fixed-length messages. Decisions, decisions. It is perfectly possible to send binary data over a socket. The major problem is that not all machines use the same formats for binary data. For example, a Motorola chip will represent a 16 bit integer with the value 1 as the two hex bytes 00 01. Intel and DEC, however, are byte-reversed - that same 1 is 01 00. Socket libraries have calls for converting 16 and 32 bit integers - ``ntohl, htonl, ntohs, htons`` where "n" means *network* and "h" means *host*, "s" means *short* and "l" means *long*. Where network order is host order, these do nothing, but where the machine is byte-reversed, these swap the bytes around appropriately. Non-blocking Sockets Now that we have a "server" socket, listening on port 80, we can enter the mainloop of the web server:: Now there are two sets of verbs to use for communication. You can use ``send`` and ``recv``, or you can transform your client socket into a file-like beast and use ``read`` and ``write``. The latter is the way Java presents its sockets. I'm not going to talk about it here, except to warn you that you need to use ``flush`` on sockets. These are buffered "files", and a common mistake is to ``write`` something, and then ``read`` for a reply. Without a ``flush`` in there, you may wait forever for the reply, because the request may still be in your output buffer. Now we come to the major stumbling block of sockets - ``send`` and ``recv`` operate on the network buffers. They do not necessarily handle all the bytes you hand them (or expect from them), because their major focus is handling the network buffers. In general, they return when the associated network buffers have been filled (``send``) or emptied (``recv``). They then tell you how many bytes they handled. It is *your* responsibility to call them again until your message has been completely dealt with. Of the various forms of :abbr:`IPC (Inter Process Communication)`, sockets are by far the most popular.  On any given platform, there are likely to be other forms of IPC that are faster, but for cross-platform communication, sockets are about the only game in town. One complication to be aware of: if your conversational protocol allows multiple messages to be sent back to back (without some kind of reply), and you pass ``recv`` an arbitrary chunk size, you may end up reading the start of a following message. You'll need to put that aside and hold onto it, until it's needed. One way to use ``shutdown`` effectively is in an HTTP-like exchange. The client sends a request and then does a ``shutdown(1)``. This tells the server "This client is done sending, but can still receive."  The server can detect "EOF" by a receive of 0 bytes. It can assume it has the complete request.  The server sends a reply. If the ``send`` completes successfully then, indeed, the client was still receiving. Part of the trouble with understanding these things is that "socket" can mean a number of subtly different things, depending on context. So first, let's make a distinction between a "client" socket - an endpoint of a conversation, and a "server" socket, which is more like a switchboard operator. The client application (your browser, for example) uses "client" sockets exclusively; the web server it's talking to uses both "server" sockets and "client" sockets. Prefixing the message with its length (say, as 5 numeric characters) gets more complex, because (believe it or not), you may not get all 5 characters in one ``recv``. In playing around, you'll get away with it; but in high network loads, your code will very quickly break unless you use two ``recv`` loops - the first to determine the length, the second to get the data part of the message. Nasty. This is also when you'll discover that ``send`` does not always manage to get rid of everything in one pass. And despite having read this, you will eventually get bit by it! Probably the worst thing about using blocking sockets is what happens when the other side comes down hard (without doing a ``close``). Your socket is likely to hang. TCP is a reliable protocol, and it will wait a long, long time before giving up on a connection. If you're using threads, the entire thread is essentially dead. There's not much you can do about it. As long as you aren't doing something dumb, like holding a lock while doing a blocking read, the thread isn't really consuming much in the way of resources. Do *not* try to kill the thread - part of the reason that threads are more efficient than processes is that they avoid the overhead associated with the automatic recycling of resources. In other words, if you do manage to kill the thread, your whole process is likely to be screwed up. Python takes the automatic shutdown a step further, and says that when a socket is garbage collected, it will automatically do a ``close`` if it's needed. But relying on this is a very bad habit. If your socket just disappears without doing a ``close``, the socket at the other end may hang indefinitely, thinking you're just being slow. *Please* ``close`` your sockets when you're done. Roughly speaking, when you clicked on the link that brought you to this page, your browser did something like the following:: Socket Programming HOWTO Sockets Sockets are used nearly everywhere, but are one of the most severely misunderstood technologies around. This is a 10,000 foot overview of sockets. It's not really a tutorial - you'll still have work to do in getting things operational. It doesn't cover the fine points (and there are a lot of them), but I hope it will give you enough background to begin using them decently. Strictly speaking, you're supposed to use ``shutdown`` on a socket before you ``close`` it.  The ``shutdown`` is an advisory to the socket at the other end. Depending on the argument you pass it, it can mean "I'm not going to send anymore, but I'll still listen", or "I'm not listening, good riddance!".  Most socket libraries, however, are so used to programmers neglecting to use this piece of etiquette that normally a ``close`` is the same as ``shutdown(); close()``.  So in most situations, an explicit ``shutdown`` is not needed. The :mod:`multiprocessing` integrates cross-platform IPC into a higher-level API. The easiest enhancement is to make the first character of the message an indicator of message type, and have the type determine the length. Now you have two ``recv``\ s - the first to get (at least) that first character so you can look up the length, and the second in a loop to get the rest. If you decide to go the delimited route, you'll be receiving in some arbitrary chunk size, (4096 or 8192 is frequently a good match for network buffer sizes), and scanning what you've received for a delimiter. The first thing to note, is that the web browser's "client" socket and the web server's "client" socket are identical beasts. That is, this is a "peer to peer" conversation. Or to put it another way, *as the designer, you will have to decide what the rules of etiquette are for a conversation*. Normally, the ``connect``\ ing socket starts the conversation, by sending in a request, or perhaps a signon. But that's a design decision - it's not a rule of sockets. The major mechanical difference is that ``send``, ``recv``, ``connect`` and ``accept`` can return without having done anything. You have (of course) a number of choices. You can check return code and error codes and generally drive yourself crazy. If you don't believe me, try it sometime. Your app will grow large, buggy and suck CPU. So let's skip the brain-dead solutions and do it right. The sending code here is usable for almost any messaging scheme - in Python you send strings, and you can use ``len()`` to determine its length (even if it has embedded ``\0`` characters). It's mostly the receiving code that gets more complex. (And in C, it's not much worse, except you can't use ``strlen`` if the message has embedded ``\0``\ s.) There's actually 3 general ways in which this loop could work - dispatching a thread to handle ``clientsocket``, create a new process to handle ``clientsocket``, or restructure this app to use non-blocking sockets, and multiplex between our "server" socket and any active ``clientsocket``\ s using ``select``. More about that later. The important thing to understand now is this: this is *all* a "server" socket does. It doesn't send any data. It doesn't receive any data. It just produces "client" sockets. Each ``clientsocket`` is created in response to some *other* "client" socket doing a ``connect()`` to the host and port we're bound to. As soon as we've created that ``clientsocket``, we go back to listening for more connections. The two "clients" are free to chat it up - they are using some dynamically allocated port which will be recycled when the conversation ends. They were invented in Berkeley as part of the BSD flavor of Unix. They spread like wildfire with the internet. With good reason --- the combination of sockets with INET makes talking to arbitrary machines around the world unbelievably easy (at least compared to other schemes). Use ``select``. Using a Socket What happens in the web server is a bit more complex. First, the web server creates a "server socket":: When Sockets Die When a ``recv`` returns 0 bytes, it means the other side has closed (or is in the process of closing) the connection.  You will not receive any more data on this connection. Ever.  You may be able to send data successfully; I'll talk more about this later. When the ``connect`` completes, the socket ``s`` can be used to send in a request for the text of the page. The same socket will read the reply, and then be destroyed. That's right, destroyed. Client sockets are normally only used for one exchange (or a small set of sequential exchanges). You pass ``select`` three lists: the first contains all sockets that you might want to try reading; the second all the sockets you might want to try writing to, and the last (normally left empty) those that you want to check for errors. You should note that a socket can go into more than one list. The ``select`` call is blocking, but you can give it a timeout. This is generally a sensible thing to do - give it a nice long timeout (say a minute) unless you have good reason to do otherwise. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-27 13:07+0000
PO-Revision-Date: 2021-06-28 00:53+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **å¯ç§»æ¤æ§è­¦å** ï¼å¨ Unix ä¸ï¼ ``select`` éç¨äºå¥æ¥å­åæä»¶ã ä¸è¦å¨ Windows ä¸å°è¯ãå¨ Windows ä¸ï¼ ``select`` ä»éç¨äºå¥æ¥å­ãå¦è¯·æ³¨æï¼å¨ C ä¸­ï¼è®¸å¤æ´é«çº§çå¥æ¥å­éé¡¹å¨ Windows ä¸çæ§è¡æ¹å¼ä¸åãäºå®ä¸ï¼å¨ Windows ä¸æéå¸¸å¨ä½¿ç¨æçå¥æ¥å­ä½¿ç¨çº¿ç¨ï¼éå¸¸éå¸¸å¥½ï¼ã æå ä»¶äºéè¦æ³¨æï¼æä»¬ä½¿ç¨äº ``socket.gethostname()``ï¼æä»¥å¥æ¥å­å°å¤ç½å¯è§ãå¦ææä»¬ä½¿ç¨çæ¯ ``s.bind(('localhost', 80))`` æè ``s.bind(('127.0.0.1', 80))``ï¼ä¹ä¼å¾å°ä¸ä¸ªãæå¡ç«¯ãå¥æ¥å­ï¼ä½æ¯åèåªå¨åä¸æºå¨ä¸å¯è§ã``s.bind(('', 80))``Â åæå®å¥æ¥å­å¯ä»¥è¢«æºå¨ä¸çä»»ä½å°åç¢°å·§è¿æ¥ å HTTP è¿æ ·çåè®®åªä½¿ç¨ä¸ä¸ªå¥æ¥å­è¿è¡ä¸æ¬¡ä¼ è¾ãå®¢æ·ç«¯åéä¸ä¸ªè¯·æ±ï¼ç¶åè¯»åååºãå°±è¿ä¹ç®åãå¥æ¥å­ä¼è¢«éæ¯ã è¡¨ç¤ºå®¢æ·ç«¯å¯ä»¥éè¿æ¥æ¶ 0 å­èåºåè¡¨ç¤ºæ£æµå°ååºçç»æã ç¬¬äºä¸ªéè¦æ³¨ç¹æ¯ï¼ä½ç«¯å£å·éå¸¸è¢«ä¸äºãå¸¸ç¨çãæå¡ï¼HTTP, SNMP ç­ï¼æä¿çãå¦æä½ æ³æç¨åºè·èµ·æ¥ï¼æå¥½ä½¿ç¨ä¸ä¸ªé«ä½ç«¯å£å·ï¼éå¸¸æ¯4ä½çæ°å­ï¼ã æè¦ å®éä¸ï¼å³ä½¿ä½¿ç¨é»å¡å¥æ¥å­ï¼ ``select`` ä¹å¾æ¹ä¾¿ãè¿æ¯ç¡®å®æ¯å¦é»å¡çä¸ç§æ¹æ³ ââ å½ç¼å²åºä¸­å­å¨æäºåå®¹æ¶ï¼å¥æ¥å­è¿åä¸ºå¯è¯»ãç¶èï¼è¿ä»ç¶æ å©äºç¡®å®å¦ä¸ç«¯æ¯å¦å®ææèåªæ¯å¿äºå¶ä»äºæçé®é¢ã åå®ä½ ä¸å¸æç»æè¿æ¥ï¼é£ä¹æç®åçè§£å³æ¹æ¡å°±æ¯ä½¿ç¨å®é¿æ¶æ¯:: ä½è äºè¿å¶æ°æ® ä½æ¯å¦æä½ æç®å¨éåæ¥çä¼ è¾ä¸­å¤ç¨å¥æ¥å­çè¯ï¼ä½ éè¦æç½ *å¥æ¥å­éé¢æ¯ä¸å­å¨ :abbr:`EOT (ä¼ è¾ç»æ)`* çãéå¤ä¸ä¸ï¼å¥æ¥å­ ``send`` æè ``recv`` å® 0 å­èåè¿åï¼è¿æ¥ä¼ä¸­æ­ãå¦æè¿æ¥æ²¡æè¢«æ­å¼ï¼ä½ å¯è½ä¼æ°¸è¿å¤äºç­å¾ ``recv`` çç¶æï¼å ä¸ºï¼å°±ç®åæ¥è¯´ï¼å¥æ¥å­ *ä¸ä¼* åè¯ä½ ä¸ç¨åè¯»åäºãç°å¨å¦æä½ ç»å¿ä¸ç¹ï¼ä½ å¯è½ä¼æè¯å°å¥æ¥å­åºæ¬äºå®ï¼*æ¶æ¯å¿é¡»è¦ä¹å·æåºå®é¿åº¦ï¼è¦ä¹å¯ä»¥çå®ï¼è¦ä¹æå®äºé¿åº¦ï¼æ¯è¾å¥½çåæ³ï¼ï¼è¦ä¹ä»¥å³é­è¿æ¥ä¸ºç»æ*ãéæ©å®å¨ç±ä½ èå®ï¼è¿æ¯è®©å«äººå®æ´åçï¼ã åå»ºå¥æ¥å­ æ­å¼è¿æ¥ æåï¼``listen`` æ¹æ³çåæ°ä¼åè¯å¥æ¥å­åºï¼æä»¬å¸æå¨éåä¸­ç´¯ç§¯å¤è¾¾ 5 ä¸ªï¼éå¸¸çæå¤§å¼ï¼è¿æ¥è¯·æ±ååæç»å¤é¨è¿æ¥ã å¦æææå¶ä»ä»£ç é½åç¡®æ è¯¯ï¼è¿ä¸ªéåé¿åº¦åºè¯¥æ¯è¶³å¤çã Gordon McMillan åå² æå°åªè®¨è®ºå³äº INETï¼æ¯å¦ï¼IPv4 å°åæï¼çå¥æ¥å­ï¼ä½æ¯å®å°è¦çå ä¹ 99% çå¥æ¥å­ä½¿ç¨åºæ¯ãå¹¶ä¸æå°ä»è®¨è®º STREAMï¼æ¯å¦ï¼TCPï¼ç±»åçå¥æ¥å­ - é¤éä½ ççç¥éä½ å¨åä»ä¹ï¼é£ä¹è¿ç¯ HOWTO å¯è½å¹¶ä¸éåä½ ï¼ï¼ä½¿ç¨ STREAM ç±»åçå¥æ¥å­å°ä¼å¾å°æ¯å¶å®ç±»åæ´å¥½çè¡¨ç°ä¸æ§è½ãæå°å°è¯æ­å¼å¥æ¥å­çç¥ç§é¢çº±ï¼ä¹ä¼è®²å°ä¸äºé»å¡ä¸éé»å¡å¥æ¥å­çä½¿ç¨ãä½æ¯æå°ä»¥é»å¡å¥æ¥å­ä¸ºèµ·ç¹å¼å§è®¨è®ºãåªæä½ äºè§£å®æ¯å¦ä½å·¥ä½çä»¥åæè½å¤çéé»å¡å¥æ¥å­ã è¿ç¨é´éä¿¡ å¦æä¸ä¸ªå¥æ¥å­å¨è¾åºå¯è¯»åè¡¨ä¸­ï¼é£ä¹ä½ å¯ä»¥åæä»¬ä¸æ ·æ¥è¿è¿ä¸ªä¸å¡ï¼é£ä¸ªå¥æ¥å­ä¸ç ``recv`` å°è¿å *ä¸äºåå®¹* ãå¯ååè¡¨çä¹ç¸åï¼ä½ å°è½å¤åé *ä¸äºåå®¹* ã ä¹è®¸ä¸æ¯ä½ æ³è¦çå¨é¨ï¼ä½ *æäºä¸è¥¿* æ¯æ²¡æä¸è¥¿æ´å¥½ã ï¼å®éä¸ï¼ä»»ä½åçå¥åº·çå¥æ¥å­é½å°ä»¥å¯åæ¹å¼è¿å ââ å®åªæ¯æå³çåºç«ç½ç»ç¼å²åºç©ºé´å¯ç¨ãï¼ å¦æä½ æä¸ä¸ªâæå¡å¨âå¥æ¥å­ï¼è¯·å°å¶æ¾å¨ potential_readers åè¡¨ä¸­ãå¦æå®åºç°å¨å¯è¯»åè¡¨ä¸­ï¼é£ä¹ä½ ç ``accept`` ï¼å ä¹è¯å®ï¼ä¼èµ·ä½ç¨ãå¦æä½ å·²ç»åå»ºäºä¸ä¸ªæ°çå¥æ¥å­ ``connect`` å¶ä»äººï¼è¯·å°å®æ¾å¨ potential_writers åè¡¨ä¸­ãå¦æå®åºç°å¨å¯ååè¡¨ä¸­ï¼é£ä¹å®æå¯è½å·²è¿æ¥ã å¦æä½ éè¦å¨åä¸å°æºå¨ä¸è¿è¡ä¸¤ä¸ªè¿ç¨é´çå¿«é IPC éä¿¡ï¼ä½ åºè¯¥äºè§£ç®¡éæèå±äº«åå­ãå¦æä½ å³å®ä½¿ç¨ AF_INET ç±»åçå¥æ¥å­ï¼ç»å®ãæå¡ç«¯ãå¥æ¥å­å° ``'localhost'`` ãå¨å¤§å¤æ°å¹³å°ï¼è¿å°ä¼ä½¿ç¨ä¸ä¸ªè®¸å¤ç½ç»å±é´çéç¨å¿«æ·æ¹å¼ï¼æ¬å°åç¯å°åï¼å¹¶ä¸éåº¦ä¼å¿«å¾å¤ å¦æä½ å·²çè§£ä¸è¿°åå®¹ï¼é£ä¹ä½ å·²ç»äºè§£äºä½¿ç¨å¥æ¥å­çæºå¶æéäºè§£çå¤§é¨ååå®¹ãä½ ä»å°ä»¥ç¸åçæ¹å¼ä½¿ç¨ç¸åçå½æ°è°ç¨ã åªæ¯ï¼å¦æä½ åå¾å¯¹ï¼ä½ çåºç¨ç¨åºå ä¹æ¯ç±åå°å¤çã å¨ C ä¸­ï¼ç¼ç  ``select`` ç¸å½å¤æã å¨ Python ä¸­ï¼å®æ¯å¾ç®åï¼ä½å®ä¸ C çæ¬è¶³å¤æ¥è¿ï¼å¦æä½ å¨ Python ä¸­çè§£ ``select`` ï¼é£ä¹å¨ C ä¸­ä½ ä¼å ä¹ä¸ä¼éå°éº»ç¦:: å¨ Python ä¸­æ¯ä½¿ç¨ ``socket.setblocking(False)`` æ¥è®¾ç½®éé»å¡ã å¨ C ä¸­çåæ³æ´ä¸ºå¤æï¼ä¾å¦ï¼ä½ éè¦å¨ BSD é£æ ¼ç ``O_NONBLOCK`` åå ä¹æ åºå«ç POSIX é£æ ¼ç ``O_NDELAY`` ä¹é´ä½åºéæ©ï¼è¿ä¸ ``TCP_NODELAY`` å®å¨ä¸ä¸æ ·ï¼ï¼ä½å¶æè·¯å®éä¸æ¯ç¸åçã ä½ è¦å¨åå»ºå¥æ¥å­ä¹åä½å¨ä½¿ç¨å®ä¹åæ§è¡æ­¤æä½ã ï¼å®éä¸ï¼å¦æä½ æ¯ç¯å­çè¯ä¹å¯ä»¥åå¤è¿è¡åæ¢ãï¼ ä½ä¸ºè¿åï¼ä½ å°è·å¾ä¸ä¸ªåè¡¨ãå®ä»¬åå«å®éå¯è¯»ãå¯ååæéè¯¯çå¥æ¥å­ã è¿äºåè¡¨ä¸­çæ¯ä¸ä¸ªé½æ¯ä½ ä¼ å¥çç¸åºåè¡¨çå­éï¼å¯è½ä¸ºç©ºï¼ã éäºç¯å¹ï¼å»ºç«ä½ çè§è²ï¼ï¼ä¿æä¸æçç«äºä½ç½®ï¼ï¼è¿äºæ¹è¿å°çç»è¯»èåä¸ºç»ä¹ ãç°å¨è®©æä»¬ç»§ç»­ã å¨ç°ä»ç 32 ä½æºå¨ä¸­ï¼äºè¿å¶æ°æ®ç ascii è¡¨ç¤ºå¾å¾æ¯äºè¿å¶è¡¨ç¤ºè¦å°ãè¿æ¯å ä¸ºå¨éå¸¸å¤çæ¶åææ long çå¼åä¸º 0 æè 1ãå­ç¬¦ä¸²å½¢å¼ç "0" ä¸ºä¸¤ä¸ªå­èï¼èäºè¿å¶å½¢å¼åä¸ºåä¸ªãå½ç¶è¿ä¸éç¨äºåºå®é¿åº¦çä¿¡æ¯ãèªè¡å³å®ï¼è¯·èªè¡å³å®ã éè¿å¥æ¥å­ä¼ éäºè¿å¶æ°æ®æ¯å¯è¡çãä¸»è¦é®é¢å¨äºå¹¶éæææºå¨é½ç¨åæ ·çäºè¿å¶æ°æ®æ ¼å¼ãæ¯å¦ Motorola è¯çç¨ä¸¤ä¸ªåå­è¿å¶å­è 00 01 æ¥è¡¨ç¤ºä¸ä¸ª 16 ä½æ´æ°å¼ 1ãè Intel å DEC åä¼åå­èåè½¬ ââ å³ç¨ 01 00 æ¥è¡¨ç¤º 1ãå¥æ¥å­åºè¦æ±è½¬æ¢ 16 ä½å 32 ä½æ´æ° ââ ``ntohl, htonl, ntohs, htons`` å¶ä¸­çãnãè¡¨ç¤º *network*ï¼ãhãè¡¨ç¤º *host*ï¼ãsãè¡¨ç¤º *short*ï¼ãlãè¡¨ç¤º *long*ãå¨ç½ç»åºåå°±æ¯ä¸»æºåºåæ¶å®ä»¬ä»ä¹é½ä¸åï¼ä½æ¯å¦ææºå¨æ¯å­èåè½¬çåä¼éå½å°äº¤æ¢å­èåºã éé»å¡çå¥æ¥å­ ç°å¨æä»¬å·²ç»æä¸ä¸ªãæå¡ç«¯ãå¥æ¥å­ï¼çå¬äº 80 ç«¯å£ï¼æä»¬å¯ä»¥è¿å¥ç½ç»æå¡å¨çä¸»å¾ªç¯äº:: ç°å¨æä¸¤ç»ç¨äºéä¿¡çå¨è¯ãä½ å¯ä»¥ä½¿ç¨ ``send`` å ``recv`` ï¼æèä½ å¯ä»¥æå®¢æ·ç«¯å¥æ¥å­æ¹ææä»¶ç±»åçå½¢å¼æ¥ä½¿ç¨  ``read`` å ``write`` æ¹æ³ãåèæ¯ Java è¯­è¨ä¸­è¡¨ç¤ºå¥æ¥å­çæ¹æ³ï¼æå°ä¸ä¼å¨è¿å¿è®¨è®ºè¿ä¸ªï¼ä½æ¯è¦æéä½ éè¦è°ç¨å¥æ¥å­ç ``flush`` æ¹æ³ãè¿äºæ¯âç¼å²âçæä»¶ï¼ä¸ä¸ªç»å¸¸åºç°çéè¯¯æ¯ ``write`` ä¸äºä¸è¥¿ï¼ç¶åå°±ç´æ¥å¼å§ ``read`` ä¸ä¸ªååºãå¦æä¸è°ç¨ ``flush`` ï¼ä½ å¯è½ä¼ä¸ç´ç­å¾è¿ä¸ªååºï¼å ä¸ºè¯·æ±å¯è½è¿å¨ä½ çè¾åºç¼å²ä¸­ã ç°å¨ææ¥å°äºå¥æ¥å­çä¸¤ä¸ªä¸»è¦çç»èç³ - ``send`` å ``recv`` æä½ç½ç»ç¼å²åºãå®ä»¬å¹¶ä¸ä¸å®å¯ä»¥å¤çææä½ æ³è¦ï¼ææï¼çå­èï¼å ä¸ºå®ä»¬ä¸»è¦å³æ³¨ç¹æ¯å¤çç½ç»ç¼å²ãéå¸¸ï¼å®ä»¬å¨å³èçç½ç»ç¼å²åº ``send`` æèæ¸ç©º ``recv`` æ¶è¿åãç¶ååè¯ä½ å¤çäºå¤å°ä¸ªå­èã*ä½ * çè´£ä»»æ¯ä¸ç´è°ç¨å®ä»¬ç´å°ä½ ææçæ¶æ¯å¤çå®æã ç®åä¸ºæ­¢ï¼å¨åç§å½¢å¼ç :abbr:`IPC (è¿ç¨é´éä¿¡)` ä¸­ï¼å¥æ¥å­æ¯ææµè¡çãå¨ä»»ä½æå®çå¹³å°ä¸ï¼å¯è½ä¼æå¶å®æ´å¿«ç IPC å½¢å¼ï¼ä½æ¯å°±è·¨å¹³å°éä¿¡æ¥è¯´ï¼å¥æ¥å­å¤§æ¦æ¯å¯ä¸çç©æ³ ä¸ä¸ªéè¦æè¯å°çå¤ææåµæ¯ï¼å¦æä½ çä¼è¯åè®®åè®¸å¤ä¸ªæ¶æ¯è¢«åéåæ¥ï¼æ²¡æååºï¼ï¼è°ç¨ ``recv`` ä¼ å¥ä»»æå¤§å°çåï¼ä½ å¯è½ä¼å ä¸ºè¯»å°åç»­æ¥æ¶çæ¶æ¯èåæ­¢è¯»åãä½ éè¦å°å®æ¾å¨ä¸è¾¹å¹¶ä¿å­ï¼ç´å°å®éè¦ä¸ºæ­¢ã é«æä½¿ç¨ ``shutdown`` çä¸ç§æ¹æ³æ¯å¨ç±»ä¼¼ HTTP çäº¤æ¢ä¸­ãå®¢æ·ç«¯åéè¯·æ±ï¼ç¶åæ§è¡ ``shutdown(1)`` ã è¿åè¯æå¡å¨âæ­¤å®¢æ·ç«¯å·²å®æåéï¼ä½ä»å¯ä»¥æ¥æ¶âãæå¡å¨å¯ä»¥éè¿æ¥æ¶ 0 å­èæ¥æ£æµ âEOFâ ãå®å¯ä»¥åè®¾å®æå®æ´çè¯·æ±ãæå¡å¨åéåå¤ãå¦æ ``send`` æåå®æï¼é£ä¹å®¢æ·ç«¯ä»å¨æ¥æ¶ã çè§£è¿äºä¸è¥¿çé¾ç¹ä¹ä¸å¨äºãå¥æ¥å­ãå¯ä»¥è¡¨ç¤ºå¾å¤å¾®å¦å·®å¼çä¸è¥¿ï¼è¿åå³äºä¸ä¸æãæä»¥é¦åï¼è®©æä»¬ååæ¸æ¥ãå®¢æ·ç«¯ãå¥æ¥å­åãæå¡ç«¯ãå¥æ¥å­ä¹é´çä¸åï¼å®¢æ·ç«¯å¥æ¥å­è¡¨ç¤ºå¯¹è¯çä¸ç«¯ï¼æå¡ç«¯å¥æ¥å­æ´åæ¯æ»æºæ¥çº¿åãå®¢æ·ç«¯ç¨åºåªè½ï¼æ¯å¦ï¼ä½ çæµè§å¨ï¼ä½¿ç¨ãå®¢æ·ç«¯ãå¥æ¥å­ï¼ç½ç»æå¡å¨åå¯ä»¥ä½¿ç¨ãæå¡ç«¯ãå¥æ¥å­åãå®¢æ·ç«¯ãå¥æ¥å­æ¥ä¼è¯ ä»¥å¶é¿åº¦ï¼ä¾å¦ï¼ä½ä¸º5ä¸ªæ°å­å­ç¬¦ï¼ä½ä¸ºæ¶æ¯åç¼æ¶ä¼åå¾æ´å¤æï¼å ä¸ºï¼ä¿¡ä¸ä¿¡ç±ä½ ï¼ä½ å¯è½æ æ³å¨ä¸ä¸ª ``recv`` ä¸­è·å¾ææ5ä¸ªå­ç¬¦ãå¨ä¸è¬ä½¿ç¨æ¶ï¼ä½ ä¼ä¾¥å¹¸é¿åè¯¥ç¶åµï¼ä½æ¯å¨é«ç½ç»è´è½½ä¸­ï¼é¤éä½ ä½¿ç¨ä¸¤ä¸ª ``recv`` å¾ªç¯ï¼å¦åä½ çä»£ç å°å¾å¿«ä¸­æ­ ââ ç¬¬ä¸ä¸ªç¨äºç¡®å®é¿åº¦ï¼ç¬¬äºä¸ªç¨äºè·åæ¶æ¯çæ°æ®é¨åãè¿å¾è®¨åãå½ä½ åç° ``send`` å¹¶ä¸æ»æ¯è®¾æ³å¨æ¯ææå®ä¸åæ¶ï¼ä½ ä¹ä¼æè¿ç§æè§ã å°½ç®¡å·²ç»éè¯»è¿è¿ç¯æç« ï¼ä½æç»è¿æ¯ä¼ææäºè§£ï¼ ä½¿ç¨é»å¡å¥æ¥å­æç³ç³çäºæå¯è½å°±æ¯å½å¦ä¸è¾¹ä¸çº¿æ¶ï¼æ²¡æ ``close`` ï¼ä¼åçä»ä¹ãä½ çå¥æ¥å­å¯è½ä¼æèµ·ã TCP æ¯ä¸ç§å¯é çåè®®ï¼å®ä¼å¨æ¾å¼è¿æ¥ä¹åç­å¾å¾é¿æ¶é´ãå¦æä½ æ­£å¨ä½¿ç¨çº¿ç¨ï¼é£ä¹æ´ä¸ªçº¿ç¨åºæ¬ä¸å·²ç»æ­»äºãä½ æ è½ä¸ºåãåªè¦ä½ æ²¡æåä¸äºæè ¢çäºæï¼æ¯å¦å¨è¿è¡é»å¡è¯»åæ¶ææä¸ä¸ªéï¼é£ä¹çº¿ç¨å¹¶æ²¡æçæ­£æ¶èæèµæºã *ä¸è¦* å°è¯ææ­»çº¿ç¨ ââ çº¿ç¨æ¯è¿ç¨æ´ææçé¨ååå æ¯å®ä»¬é¿åäºä¸èªå¨åæ¶èµæºç¸å³çå¼éãæ¢å¥è¯è¯´ï¼å¦æä½ è®¾æ³ææ­»çº¿ç¨ï¼ä½ çæ´ä¸ªè¿ç¨å¾å¯è½è¢«æåã Python è¿ä¸æ­¥èªå¨å³é­ï¼å¹¶è¯´å½ä¸ä¸ªå¥æ¥å­è¢«åå¾æ¶éæ¶ï¼å¦æéè¦å®ä¼èªå¨æ§è¡ ``close`` ãä½ä¾é è¿ä¸ªæºå¶æ¯ä¸ä¸ªéå¸¸åçä¹ æ¯ãå¦æä½ çå¥æ¥å­å¨æ²¡æ ``close`` çæåµä¸å°±æ¶å¤±äºï¼é£ä¹å¦ä¸ç«¯çå¥æ¥å­å¯è½ä¼æ éæå°æèµ·ï¼ä»¥ä¸ºä½ åªæ¯æ¢äºä¸æ­¥ãå®æå *è¯·* ``close`` ä½ çå¥æ¥å­ã ç®ç¥å°è¯´ï¼å½ä½ ç¹å»å¸¦ä½ æ¥å°è¿ä¸ªé¡µé¢çé¾æ¥æ¶ï¼ä½ çæµè§å¨å°±å·²ç»åäºä¸é¢è¿å ä»¶äºæ:: å¥æ¥å­ç¼ç¨æå å¥æ¥å­ å¥æ¥å­å ä¹æ å¤ä¸å¨ï¼ä½æ¯å®å´æ¯è¢«è¯¯è§£æä¸¥éçææ¯ä¹ä¸ãè¿æ¯ä¸ç¯ç®åçå¥æ¥å­æ¦è¿°ãå¹¶ä¸æ¯ä¸ç¯çæ­£çæç¨ ââ ä½ éè¦åæ´å¤çäºææè½è®©å®å·¥ä½èµ·æ¥ãå¶ä¸­ä¹å¹¶æ²¡ææ¶µçç»èï¼ç»èä¼æå¾å¤ï¼ï¼ä½æ¯æå¸æå®è½æä¾è¶³å¤çèæ¯ç¥è¯ï¼è®©ä½ åæ¨¡åæ ·çå¼å§ä½¿ç¨å¥æ¥å­ ä¸¥æ ¼å°è®²ï¼ä½ åºè¯¥å¨ ``close`` å®ä¹åå°å¥æ¥å­ ``shutdown`` ã ``shutdown`` æ¯åéç»å¥æ¥å­å¦ä¸ç«¯çä¸ç§å»ºè®®ãè°ç¨æ¶åæ°ä¸åæä¹ä¹ä¸ä¸æ ·ï¼å®å¯è½æå³çãæä¸ä¼ååéäºï¼ä½æä»ç¶ä¼çå¬ãï¼æèãææ²¡æçå¬äºï¼çæ£ï¼ããç¶èï¼å¤§å¤æ°å¥æ¥å­åºæèç¨åºåé½ä¹ æ¯äºå¿½ç¥ä½¿ç¨è¿ç§ç¤¼èï¼å ä¸ºéå¸¸æåµä¸ ``close`` ä¸ ``shutdown(); close()`` æ¯ä¸æ ·çãæä»¥å¨å¤§å¤æ°æåµä¸ï¼ä¸éè¦æ¾å¼ç ``shutdown`` ã :mod:`multiprocessing` æ¨¡åä½¿è·¨å¹³å° IPC éä¿¡æä¸ºä¸ä¸ªé«å±ç API æç®åçæ¹è¿æ¯è®©æ¶æ¯çç¬¬ä¸ä¸ªå­ç¬¦è¡¨ç¤ºæ¶æ¯ç±»åï¼ç±ç±»åå³å®é¿åº¦ãç°å¨ä½ éè¦ä¸¤æ¬¡ ``recv``\ - ç¬¬ä¸æ¬¡åï¼è³å°ï¼ç¬¬ä¸ä¸ªå­ç¬¦æ¥ç¥æé¿åº¦ï¼ç¬¬äºæ¬¡å¨å¾ªç¯ä¸­è·åå©ä½ææçæ¶æ¯ãå¦æä½ å³å®å°åççº¿ï¼ä½ å°æ¶å°ä¸äºä»»æå¤§å°çåï¼ï¼4096 æè 8192 éå¸¸æ¯æ¯è¾åéçç½ç»ç¼å²åºå¤§å°ï¼ï¼æ«æä½ æ¥æ¶å°çåçç¬¦ é¦åéè¦æ³¨æï¼æµè§å¨çãå®¢æ·ç«¯ãå¥æ¥å­åç½ç»æå¡å¨çãå®¢æ·ç«¯ãå¥æ¥å­æ¯æä¸ºç¸ä¼¼çãå³è¿ç§ä¼è¯æ¯ãç¹å¯¹ç¹ãçãæèä¹å¯ä»¥è¯´ *ä½ ä½ä¸ºè®¾è®¡å¸éè¦èªè¡å³å®ä¼è¯çè§ååç¤¼è* ãéå¸¸æåµä¸ï¼``è¿æ¥`` å¥æ¥å­éè¿åéä¸ä¸ªè¯·æ±æèä¿¡å·æ¥å¼å§ä¸æ¬¡ä¼è¯ãä½è¿å±äºè®¾è®¡å³å®ï¼å¹¶ä¸æ¯å¥æ¥å­è§åã ä¸»è¦çæºå¶å·®å¼æ¯ ``send`` ã ``recv`` ã ``connect`` å ``accept`` å¯ä»¥å¨æ²¡æåä»»ä½äºæçæåµä¸è¿åã ä½ ï¼å½ç¶ï¼æå¾å¤éæ©ãä½ å¯ä»¥æ£æ¥è¿åä»£ç åéè¯¯ä»£ç ï¼éå¸¸ä¼è®©èªå·±åç¯ãå¦æä½ ä¸ç¸ä¿¡æï¼è¯·å°è¯ä¸ä¸ãä½ çåºç¨ç¨åºå°åå¾è¶æ¥è¶å¤§ãè¶æ¥è¶ Bug ãå¸å¹² CPUãå æ­¤ï¼è®©æä»¬è·³è¿èæ­»äº¡çè§£å³æ¹æ¡å¹¶åæ­£ç¡®çäºã åéåé¨ä»£ç å ä¹å¯ç¨äºä»»ä½æ¶æ¯ä¼ éæ¹æ¡ ââ å¨ Python ä¸­ä½ åéå­ç¬¦ä¸²ï¼å¯ä»¥ä½¿ç¨ ``len()`` æ¹æ³æ¥ç¡®å®å®çé¿åº¦ï¼å³ä½¿å®åµå¥äº ``\0`` å­ç¬¦ï¼ï¼ä¸»è¦æ¯æ¥æ¶ä»£ç åå¾æ´å¤æãï¼å¨ C è¯­è¨ä¸­ï¼å¹¶æ²¡ææ´ç³ç³ï¼é¤éæ¶æ¯åµå¥äº ``\0`` å­ç¬¦èä¸ä½ åæ æ³ä½¿ç¨ ``strlen`` ï¼ äºéä¸ï¼éå¸¸æ 3 ç§æ¹æ³å¯ä»¥è®©è¿ä¸ªå¾ªç¯å·¥ä½èµ·æ¥ - è°åº¦ä¸ä¸ªçº¿ç¨æ¥å¤ç ``å®¢æ·ç«¯å¥æ¥å­``ï¼æèæè¿ä¸ªåºç¨æ¹æä½¿ç¨éé»å¡æ¨¡å¼å¥æ¥å­ï¼äº¦ææ¯ä½¿ç¨ ``select`` åºæ¥å®ç°ãæå¡ç«¯ãå¥æ¥å­ä¸ä»»ææ´»å¨ ``å®¢æ·ç«¯å¥æ¥å­`` ä¹é´çå¤è·¯å¤ç¨ãç¨åä¼è¯¦ç»ä»ç»ãç°å¨æéè¦çæ¯çè§£ï¼è¿å°±æ¯ä¸ä¸ª *æå¡ç«¯* å¥æ¥å­åç *ææ* äºæãå®å¹¶æ²¡æåéä»»ä½æ°æ®ãä¹æ²¡ææ¥æ¶ä»»ä½æ°æ®ãå®åªåå»ºãå®¢æ·ç«¯ãå¥æ¥å­ãæ¯ä¸ª ``å®¢æ·ç«¯å¥æ¥å­`` é½æ¯ä¸ºäºååºæäºå¶å®å®¢æ·ç«¯å¥æ¥å­ ``connect()`` å°æä»¬ç»å®çä¸»æºãä¸æ¦åå»º ``å®¢æ·ç«¯å¥æ¥å­`` å®æï¼å°±ä¼è¿åå¹¶çå¬æ´å¤çè¿æ¥è¯·æ±ãç°ä¸ªå®¢æ·ç«¯å¯ä»¥éæéä¿¡ - å®ä»¬ä½¿ç¨äºä¸äºå¨æåéçç«¯å£ï¼ä¼è¯ç»ææ¶ç«¯å£æä¼è¢«åæ¶ å¥æ¥å­ä½ä¸º Unix ç BSD åæ¯çä¸é¨åè¯çäº Berkeleyã å®ä»¬åéç«ä¸æ ·å¨äºèç½ä¸ä¼ æ­ã è¿æ¯æååçç±ç --- å¥æ¥å­ä¸ INET çç»åè®©ä¸çåå°çä»»ä½æºå¨ä¹é´çéä¿¡åå¾ä»¤äººé¾ä»¥ç½®ä¿¡çç®åï¼è³å°æ¯ä¸å¶ä»æ¹æ¡ç¸æ¯ï¼ã ä½¿ç¨ ``select`` åº ä½¿ç¨ä¸ä¸ªå¥æ¥å­ ç½ç»æå¡å¨åçäºä»ä¹è¿ä¸ªé®é¢å°±æç¹å¤æäºãé¦é¡µï¼æå¡å¨åå»ºä¸ä¸ªãæå¡ç«¯å¥æ¥å­ã:: å¥æ¥å­ä½æ¶éæ¯ å½ ``recv`` æ¹æ³è¿å 0 å­èæ¶ï¼å°±è¡¨ç¤ºå¦ä¸ç«¯å·²ç»å³é­ï¼æèå®æå¨çè¿ç¨å³é­ï¼äºè¿æ¥ãä½ åä¹ä¸è½ä»è¿ä¸ªè¿æ¥ä¸è·åå°ä»»ä½æ°æ®äºãä½ å¯ä»¥æåçåéæ°æ®ï¼æå°å¨åé¢è®¨è®ºè¿ä¸ç¹ã å½è¿æ¥å®æï¼å¥æ¥å­å¯ä»¥ç¨æ¥åéè¯·æ±æ¥æ¥æ¶é¡µé¢ä¸æ¾ç¤ºçæå­ãåæ ·æ¯è¿ä¸ªå¥æ¥å­ä¹ä¼ç¨æ¥è¯»åååºï¼æååè¢«éæ¯ãæ¯çï¼è¢«éæ¯äºãå®¢æ·ç«¯å¥æ¥å­éå¸¸ç¨æ¥åä¸æ¬¡äº¤æ¢ï¼æèè¯´ä¸å°ç»åºåçäº¤æ¢ï¼ã ä½ ä¼ éç» ``select`` ä¸ä¸ªåè¡¨ï¼ç¬¬ä¸ä¸ªåå«ä½ å¯è½æ³è¦å°è¯è¯»åçææå¥æ¥å­ï¼ç¬¬äºä¸ªæ¯ä½ å¯è½æ³è¦å°è¯åå¥çææå¥æ¥å­ï¼ä»¥åè¦æ£æ¥éè¯¯çæåä¸ä¸ªï¼éå¸¸ä¸ºç©ºï¼ãä½ åºè¯¥æ³¨æï¼å¥æ¥å­å¯ä»¥è¿å¥å¤ä¸ªåè¡¨ã ``select`` è°ç¨æ¯é»å¡çï¼ä½ä½ å¯ä»¥ç»å®ä¸ä¸ªè¶æ¶ãè¿éå¸¸æ¯ä¸ä»¶ææºçäºæ ââ ç»å®ä¸ä¸ªå¾é¿çè¶æ¶ï¼æ¯å¦ä¸åéï¼ï¼é¤éä½ æååççç±ä¸è¿æ ·åã 