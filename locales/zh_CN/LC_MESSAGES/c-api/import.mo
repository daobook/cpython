��          T               �      �   $   �   8   �   +   �   G   )  =  q  �  �     i     v  8   �  *   �  K   �  �   C   Importing Modules Return value of ``-1`` upon failure. See also :c:func:`PyImport_ExecCodeModuleWithPathnames`. This function always uses absolute imports. This function is a deprecated alias of :c:func:`PyImport_ImportModule`. This pointer is initialized to point to an array of :c:type:`struct _frozen` records, terminated by one whose members are all ``NULL`` or zero.  When a frozen module is imported, it is searched in this table.  Third-party code could play tricks with this to provide a dynamically created collection of frozen modules. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: zeroswan <weditor@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 导入模块 失败时返回值 ``-1``。 参见 :c:func:`PyImport_ExecCodeModuleWithPathnames`。 该函数总是使用绝对路径导入。 该函数是 :c:func:`PyImport_ImportModule` 的一个被遗弃的别名。 该指针被初始化为指向 :c:type:`struct _frozen` 数组，以 ``NULL`` 或者 0 作为结束标记。当一个冻结模块被导入，首先要在这个表中搜索。第三方库可以以此来提供动态创建的冻结模块集合。 