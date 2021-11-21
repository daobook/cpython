��    
      l               �   %   �   )   �   I     �   W  �   �  %   �     �  V   �  6   +  �  b  %     !   E  I   g  �   �  �   V     �       J   *  )   u   **Source code:** :source:`Lib/tty.py` :mod:`tty` --- Terminal control functions Because it requires the :mod:`termios` module, it will work only on Unix. Change the mode of file descriptor *fd* to cbreak. If *when* is omitted, it defaults to :const:`termios.TCSAFLUSH`, and is passed to :func:`termios.tcsetattr`. Change the mode of the file descriptor *fd* to raw. If *when* is omitted, it defaults to :const:`termios.TCSAFLUSH`, and is passed to :func:`termios.tcsetattr`. Low-level terminal control interface. Module :mod:`termios` The :mod:`tty` module defines functions for putting the tty into cbreak and raw modes. The :mod:`tty` module defines the following functions: Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **Source code:** :source:`Lib/tty.py` :mod:`tty` --- 终端控制功能 因为它需要 :mod:`termios` 模块，所以只能在 Unix 上运行。 将文件描述符 *fd* 的模式更改为 cbreak 。如果 *when* 被省略，则默认为 :const:`termios.TCSAFLUSH` ，并传递给 :func:`termios.tcsetattr` 。 将文件描述符 *fd* 的模式更改为 raw 。如果 *when* 被省略，则默认为 :const:`termios.TCSAFLUSH` ，并传递给 :func:`termios.tcsetattr` 。 低级终端控制接口。 模块 :mod:`termios` :mod:`tty` 模块定义了将 tty 放入 cbreak 和 raw 模式的函数。 :mod:`tty` 模块定义了以下函数： 