��          �                      I   ;     �  !   �  
   �  M   �  "     
  9  �   D  {   �  z   O  ^   �  ;   )  h   e  *   �  �  �      �  N   �     '  '   C     k  h   r  (   �  �   	  x   �	  c   V
  c   �
  T     -   s  p   �  0      *frame* must not be ``NULL``. *frame* must not be ``NULL``. The result (frame code) cannot be ``NULL``. Get the *frame* code. Get the *frame* next outer frame. Reflection Return a :term:`strong reference`, or ``NULL`` if *frame* has no outer frame. Return a :term:`strong reference`. Return a description string, depending on the type of *func*. Return values include "()" for functions and methods, " constructor", " instance", and " object".  Concatenated with the result of :c:func:`PyEval_GetFuncName`, the result will be a description of *func*. Return a dictionary of the builtins in the current execution frame, or the interpreter of the thread state if no frame is currently executing. Return a dictionary of the global variables in the current execution frame, or ``NULL`` if no frame is currently executing. Return a dictionary of the local variables in the current execution frame, or ``NULL`` if no frame is currently executing. Return the current thread state's frame, which is ``NULL`` if no frame is currently executing. Return the line number that *frame* is currently executing. Return the name of *func* if it is a function, class or instance object, else the name of *func*\s type. See also :c:func:`PyThreadState_GetFrame`. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 *frame* 必须不为 ``NULL``。 *frame* 必须不为 ``NULL``。 结果（帧的代码）不能为 ``NULL``。 获取 *frame* 的代码。 获取 *frame* 为下一个外部帧。 反射 参考返回一个 :term:`strong reference`，或者如果  *frame* 没有外部帧则返回 ``NULL``。 返回一个 :term:`strong reference`。 根据 *func* 的类型返回描述字符串。 返回值包括函数和方法的 "()", " constructor", " instance" 和 " object"。 与 :c:func:`PyEval_GetFuncName` 的结果连接，结果将是 *func* 的描述。 返回当前执行帧中内置函数的字典，如果当前没有帧正在执行，则返回线程状态的解释器。 返回当前执行帧中全局变量的字典，如果没有当前执行的帧则返回 ``NULL``。 返回当前执行帧中局部变量的字典，如果没有当前执行的帧则返回 ``NULL``。 返回当前线程状态的帧，如果没有当前执行的帧则返回 ``NULL``。 返回 *frame* 当前正在执行的行号。 如果 *func* 是函数、类或实例对象，则返回它的名称，否则返回 *func* 的类型的名称。 另请参阅 :c:func:`PyThreadState_GetFrame`。 