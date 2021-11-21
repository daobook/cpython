��          <               \      ]   6  x   �   �  �  �     G    ]  �   v   Full Grammar specification The notation is a mixture of `EBNF <https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form>`_ and `PEG <https://en.wikipedia.org/wiki/Parsing_expression_grammar>`_. In particular, ``&`` followed by a symbol, token or parenthesized group indicates a positive lookahead (i.e., is required to match but not consumed), while ``!`` indicates a negative lookahead (i.e., is required _not_ to match).  We use the ``|`` separator to mean PEG's "ordered choice" (written as ``/`` in traditional PEG grammars). See :pep:`617` for more details on the grammar's syntax. This is the full Python grammar, derived directly from the grammar used to generate the CPython parser (see :source:`Grammar/python.gram`). The version here omits details related to code generation and error recovery. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 完整的语法规范 该标记法是 `EBNF <https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form>`_ 和 `PEG <https://en.wikipedia.org/wiki/Parsing_expression_grammar>`_ 的混合体。 特别地，``&`` 后跟一个符号、形符或带括号的分组来表示正向前视（即要求匹配但不会消耗掉），而 ``!`` 表示负向前视（即 _不要求_ 匹配）。 我们使用 ``|`` 分隔符来表示 PEG 的“有序选择” (在传统 PEG 语法中写作 ``/``)。 请参阅 :pep:`617` 了解有关该语法规则的更多细节。 这是完整的 Python 语法规范，直接提取自用于生成 CPython 解析器的语法 (参见 :source:`Grammar/python.gram`)。 这里显示的版本省略了有关代码生成和错误恢复的细节。 