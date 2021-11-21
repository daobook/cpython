��    
      l               �      �      �       �        �   $     �  1   �  O   �  �   M  �  ?     �           +     L     c     �  8   �  N   0  �      :exc:`DeprecationWarning` :exc:`ImportWarning` :exc:`PendingDeprecationWarning` :exc:`ResourceWarning` It can be enabled using the :option:`-X dev <-X>` command line option or by setting the :envvar:`PYTHONDEVMODE` environment variable to ``1``. Python Development Mode See also :ref:`Python debug build <debug-build>`. Set the :attr:`~sys.flags.dev_mode` attribute of :attr:`sys.flags` to ``True``. The Python Development Mode introduces additional runtime checks that are too expensive to be enabled by default. It should not be more verbose than the default if the code is correct; new warnings are only emitted when an issue is detected. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:04+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :exc:`DeprecationWarning` :exc:`ImportWarning` :exc:`PendingDeprecationWarning` :exc:`ResourceWarning` 它可以通过 :option:`-X dev <-X>` 命令行选项或通过设置 :envvar:`PYTHONDEVMODE` 环境变量为 ``1`` 来启用。 Python 开发模式 另请参考 :ref:`Python debug build <debug-build>` 。 将 :attr:`sys.flags` 的 :attr:`~sys.flags.dev_mode` 属性设为 ``True``。 Python 开发模式引入了额外的运行时检查，由于成本太高，所以默认情况下是不启用的。如果代码是正确的，它不应该比默认情况的更加详细；只有在检测到问题的时候才会发出新的警告。 