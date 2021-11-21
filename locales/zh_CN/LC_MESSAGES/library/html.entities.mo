��    	      d               �   /   �   =   �   [     D   w    �  @   <  	   }  }   �  �    ,   �  3   �  N   #  <   r  W  �  <        D  �   K   **Source code:** :source:`Lib/html/entities.py` :mod:`html.entities` --- Definitions of HTML general entities A dictionary mapping XHTML 1.0 entity definitions to their replacement text in ISO Latin-1. A dictionary that maps HTML entity names to the Unicode code points. A dictionary that maps HTML5 named character references [#]_ to the equivalent Unicode character(s), e.g. ``html5['gt;'] == '>'``. Note that the trailing semicolon is included in the name (e.g. ``'gt;'``), however some of the names are accepted by the standard even without the semicolon: in this case the name is present with and without the ``';'``. See also :func:`html.unescape`. A dictionary that maps Unicode code points to HTML entity names. Footnotes This module defines four dictionaries, :data:`html5`, :data:`name2codepoint`, :data:`codepoint2name`, and :data:`entitydefs`. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-08 15:17+0800
PO-Revision-Date: 2021-06-28 01:07+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **源码：** :source:`Lib/html/entities.py` :mod:`html.entities` --- HTML 一般实体的定义 将 XHTML 1.0 实体定义映射到 ISO Latin-1 中的替换文本的字典。 将 HTML 实体名称映射到 Unicode 代码点的字典。 将 HTML5 命名字符引用 [#]_ 映射到等效的 Unicode 字符的字典，例如 ``html5['gt;'] == '>'``。 请注意，尾随的分号包含在名称中（例如 ``'gt;'`` ），但是即使没有分号，一些名称也会被标准接受，在这种情况下，名称出现时带有和不带有 ``';'``。另见 :func:`html.unescape`。 将 Unicode 代码点映射到 HTML 实体名称的字典。 备注 该模块定义了四个词典， :data:`html5`、 :data:`name2codepoint`、 :data:`codepoint2name`、以及 :data:`entitydefs`。 