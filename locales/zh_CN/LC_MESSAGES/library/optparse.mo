��    F      L              |     }     �     �  *   �     �          "     8  &   M  3   t  �  �  
   r     }     �     �     �     �  	   �     �  ?   �     !     3     I     Y  �   e     �  "   �     	     %	     8	     G	     S	  
   i	     t	     �	     �	     �	     �	     �	  '   �	     �	  +   
  #   .
     R
  
   q
     |
  +   �
  !   �
  
   �
     �
     �
     �
       
   !     ,  *   5  	   `  
   j     u  !   �     �     �     �     �     �  J        P  &   `     �  �  �     a     m     �  *   �     �     �            %   .  /   T  �  �               "     2  	   B     L     Y  	   b  C   l     �     �     �     �  o   �     Q     X     e     r     �     �     �  
   �     �     �     �     �     �       &        D  *   M  "   x     �  
   �     �  *   �      �  
        '     3     D     U  
   g     r  )   {  	   �  
   �     �     �     �               "  #   0  0   T     �  $   �     �   (default: 1) (default: ``"store"``) (default: ``"string"``) **Source code:** :source:`Lib/optparse.py` :attr:`~Option.callback_args` :attr:`~Option.callback_kwargs` :attr:`~Option.nargs` :attr:`~Option.type` :meth:`parse_args` returns two values: :mod:`optparse` --- Parser for command line options :mod:`optparse` is a more convenient, flexible, and powerful library for parsing command-line options than the old :mod:`getopt` module.  :mod:`optparse` uses a more declarative style of command-line parsing: you create an instance of :class:`OptionParser`, populate it with options, and parse the command line. :mod:`optparse` allows users to specify options in the conventional GNU/POSIX syntax, and additionally generates usage and help messages for you. Background Cleanup Consider this:: Creating the parser Default values Defining options Example:: For example:: Here's an example of using :mod:`optparse` in a simple script:: Parsing arguments Populating the parser Reference Guide Terminology The :mod:`optparse` module is deprecated and will not be developed further; development will continue with the :mod:`argparse` module. Tutorial What are positional arguments for? ``"append"`` ``"append_const"`` ``"callback"`` ``"count"`` ``"error"`` (default) ``"help"`` ``"resolve"`` ``"store"`` ``"store_const"`` ``"store_false"`` ``"store_true"`` ``"version"`` ``add_help_option`` (default: ``True``) ``args`` ``conflict_handler`` (default: ``"error"``) ``description`` (default: ``None``) ``epilog`` (default: ``None``) ``kwargs`` ``opt_str`` ``option_class`` (default: optparse.Option) ``option_list`` (default: ``[]``) ``option`` ``options`` ``parser.largs`` ``parser.rargs`` ``parser.values`` ``parser`` ``prog`` ``usage`` (default: ``"%prog [options]"``) ``value`` ``values`` ``version`` (default: ``None``) append a constant value to a list argument call a specified function option option argument positional argument print a usage message including all options and the documentation for them required option store this option's argument (default) where the input parameters are Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:10+0000
Last-Translator: ppcfish <ppcfish@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 (默认: 1) (默认: ``"store"``) (默认: ``"string"``) **源代码：** :source:`Lib/optparse.py` :attr:`~Option.callback_args` :attr:`~Option.callback_kwargs` :attr:`~Option.nargs` :attr:`~Option.type` :meth:`parse_args` 返回两个值： :mod:`optparse` --- 解析器的命令行选项 :mod:`optparse` 是一个相比原有 :mod:`getopt` 模块更为方便、灵活和强大的命令行选项解析库。 :mod:`optparse` 使用更为显明的命令行解析风格：创建一个 :class:`OptionParser` 的实例，向其中填充选项，然后解析命令行。 :mod:`optparse` 允许用户以传统的 GNU/POSIX 语法来指定选项，并为你生成额外的用法和帮助消息。 背景 清理 考虑一下： 创建解析器 默认值 定义选项 示例:: 例如： 下面是在一个简单脚本中使用 :mod:`optparse` 的示例:: 解析参数 填充解析器 参考指南 术语 :mod:`optparse` 模块已被弃用并且将不再继续开发；开发将转至 :mod:`argparse` 模块进行。 教程 位置位置 ``"append"`` ``"append_const"`` ``"callback"`` ``"count"`` ``"error"`` (默认) ``"help"`` ``"resolve"`` ``"store"`` ``"store_const"`` ``"store_false"`` ``"store_true"`` ``"version"`` ``add_help_option`` (默认: ``True``) ``args`` ``conflict_handler`` (默认: ``"error"``) ``description`` (默认: ``None``) ``epilog`` (默认: ``None``) ``kwargs`` ``opt_str`` ``option_class`` (默认: optparse.Option) ``option_list`` (默认: ``[]``) ``option`` ``options`` ``parser.largs`` ``parser.rargs`` ``parser.values`` ``parser`` ``prog`` ``usage`` (默认: ``"%prog [options]"``) ``value`` ``values`` ``version`` (默认: ``None``) 将常量值附加到列表 argument -- 参数 调用指定函数 选项 可选参数: positional argument -- 位置参数 打印用法消息，包括所有选项和文档 必选选项 存储此选项的参数（默认） 输入参数的位置 