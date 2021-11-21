��          �               l  .   m  -   �  -   �  -   �     &     5     =  �   L  �   G  �  
     �     �  
   �     �     �     �     �     �  
   �       �    ,   �  (   �  $     0   D     u     �     �  �   �  �   �	  7  A
     y     �  
   �     �     �     �     �     �  
   �     �   **Source code:** :source:`Lib/http/cookies.py` :mod:`http.cookies` --- HTTP state management :rfc:`2109` - HTTP State Management Mechanism Allowed ':' as a valid Cookie name character. Cookie Objects Example Morsel Objects The :mod:`http.cookies` module defines classes for abstracting the concept of cookies, an HTTP state management mechanism. It supports both simple string-only cookies, and provides an abstraction for having any serializable data-type as cookie value. The character set, :data:`string.ascii_letters`, :data:`string.digits` and ``!#$%&'*+-.^_`|~:`` denote the set of valid characters allowed by this module in Cookie name (as :attr:`~Morsel.key`). The module formerly strictly applied the parsing rules described in the :rfc:`2109` and :rfc:`2068` specifications.  It has since been discovered that MSIE 3.0x doesn't follow the character rules outlined in those specs and also many current day browsers and servers have relaxed parsing rules when comes to Cookie handling.  As a result, the parsing rules used are a bit less strict. The value of the cookie. ``comment`` ``domain`` ``expires`` ``httponly`` ``max-age`` ``path`` ``samesite`` ``secure`` ``version`` Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:07+0000
Last-Translator: Dai Xu <daixu61@hotmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **源代码:** :source:`Lib/http/cookies.py` :mod:`http.cookies` --- HTTP状态管理 :rfc:`2109` - HTTP状态管理机制 “:”字符可用于有效的 cookie 名称。 Cookie 对象 示例 Morsel 对象 :mod:`http.cookies` 模块定义的类将 cookie 的概念抽象了出来，这是一种 HTTP 状态的管理机制。它既支持简单的纯字符串形式的 cookie，也为任何可序列化数据类型的 cookie 提供抽象。 字符集 :data:`string.ascii_letters` 、 :data:`string.digits` 和 ``!#$%&'*+-.^_`|~:``  给出了本模块允许出现在 cookie 名称中的有效字符集（如 :attr:`~Morsel.key`）。 以前，该模块严格套用 :rfc:`2109` 和 :rfc:`2068` 规范中描述的解析规则。后来人们发现，MSIE 3.0 并不遵循这些规范中的字符规则，而且目前许多浏览器和服务器在处理 cookie 时也放宽了解析规则。 因此，这里用到的解析规则没有那么严格。 Cookie的值。 ``comment`` ``domain`` ``expires`` ``httponly`` ``max-age`` ``path`` ``samesite`` ``secure`` ``version`` 