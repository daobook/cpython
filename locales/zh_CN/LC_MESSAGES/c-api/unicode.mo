��    >                    �     �  
     
     
     
   $  
   /  
   :  
   E  
   P  
   [     f     r     ~     �     �     �  
   �  
   �  
   �  
   �     �     �     �  $     +   &  #   R     v  $   ~  $   �  %   �  %   �  &     &   ;  &   b  %   �  $   �  $   �  %   �  %     %   E     k  
   }  
   �    �  �   	     �	  $   �	     
     
     3
     C
     ^
     k
     x
     �
     �
  	   �
     �
     �
     �
     �
  �  �
     �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �  
   �     �                    )     6  
   B  
   M  
   X  
   c     n     z     �  *   �  ,   �  (   �                 ;  !   \  !   ~  "   �  "   �  "   �  !   	      +      L  !   m  !   �  !   �     �  
   �  
   �  J  �  �   A     �           %     ,     @     N     n     |     �     �  	   �  	   �     �     �     �     �   *n/a* :attr:`%%` :attr:`%A` :attr:`%R` :attr:`%S` :attr:`%U` :attr:`%V` :attr:`%c` :attr:`%d` :attr:`%i` :attr:`%ld` :attr:`%li` :attr:`%lld` :attr:`%lli` :attr:`%llu` :attr:`%lu` :attr:`%p` :attr:`%s` :attr:`%u` :attr:`%x` :attr:`%zd` :attr:`%zi` :attr:`%zu` A null-terminated C character array. A single character, represented as a C int. Accepts a :term:`path-like object`. Comment Equivalent to ``printf("%d")``. [1]_ Equivalent to ``printf("%i")``. [1]_ Equivalent to ``printf("%ld")``. [1]_ Equivalent to ``printf("%li")``. [1]_ Equivalent to ``printf("%lld")``. [1]_ Equivalent to ``printf("%lli")``. [1]_ Equivalent to ``printf("%llu")``. [1]_ Equivalent to ``printf("%lu")``. [1]_ Equivalent to ``printf("%u")``. [1]_ Equivalent to ``printf("%x")``. [1]_ Equivalent to ``printf("%zd")``. [1]_ Equivalent to ``printf("%zi")``. [1]_ Equivalent to ``printf("%zu")``. [1]_ Format Characters PyObject\* Py_ssize_t Since the implementation of :pep:`393` in Python 3.3, Unicode objects internally use a variety of representations, in order to allow handling the complete range of Unicode characters while staying memory efficient.  There are special cases for strings where all code points are below 128, 256, or 65536; otherwise, code points must be below 1114112 (which is the full Unicode range). The hex representation of a C pointer. Mostly equivalent to ``printf("%p")`` except that it is guaranteed to start with the literal ``0x`` regardless of what the platform's ``printf`` yields. The literal % character. The result of calling :func:`ascii`. Type Unicode Character Properties Unicode Objects Unicode Objects and Codecs Unicode Type const char\* const void\* int long long long size_t unsigned int unsigned long unsigned long long Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: ppcfish <ppcfish@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 *不适用* :attr:`%%` :attr:`%A` :attr:`%R` :attr:`%S` :attr:`%U` :attr:`%V` :attr:`%c` :attr:`%d` :attr:`%i` :attr:`%ld` :attr:`%li` :attr:`%lld` :attr:`%lli` :attr:`%llu` :attr:`%lu` :attr:`%p` :attr:`%s` :attr:`%u` :attr:`%x` :attr:`%zd` :attr:`%zi` :attr:`%zu` 以 null 为终止符的 C 字符数组。 单个字符，表示为C 语言的整型。 接受一个 :term:`path-like object`。 注释 相当于 ``printf("%d")``. [1]_ 相当于 ``printf("%i")``. [1]_ 相当于 ``printf("%ld")``. [1]_ 相当于 ``printf("%li")``. [1]_ 相当于 ``printf("%lld")``. [1]_ 相当于 ``printf("%lli")``. [1]_ 相当于 ``printf("%llu")``. [1]_ 相当于 ``printf("%lu")``. [1]_ 相当于 ``printf("%u")``. [1]_ 相当于 ``printf("%x")``. [1]_ 相当于 ``printf("%zd")``. [1]_ 相当于 ``printf("%zi")``. [1]_ 相当于 ``printf("%zu")``. [1]_ 格式字符 PyObject\* Py_ssize_t 自从python3.3中实现了 :pep:`393` 以来，Unicode对象在内部使用各种表示形式，以便在保持内存效率的同时处理完整范围的Unicode字符。对于所有代码点都低于128、256或65536的字符串，有一些特殊情况；否则，代码点必须低于1114112（这是完整的Unicode范围）。 一个 C 指针的十六进制表示形式。 基本等价于 ``printf("%p")`` 但它会确保以字面值 ``0x`` 开头，不论系统平台上 ``printf`` 的输出是什么。 文字%字符。 :func:`ascii` 调用的结果。 类型 Unicode字符属性 Unicode对象 Unicode对象和编码解码器 Unicode类型 const char\* const void\* int 长整型 long long size_t unsigned int unsigned long unsigned long long 