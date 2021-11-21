��          �               l  #   m  Z   �  a   �  2   N  U   �     �     �     �     	  	     C   "  S   f  W   �  �     1   �  1     �   6  4   /  U   d  4   �  �  �     �  X   �  Z   #	  *   ~	  T   �	     �	     
     
     )
     7
  A   >
  R   �
  ]   �
  �   1  .   �  -   �  �   &  <     N   N  2   �   :mod:`asyncio` --- Asynchronous I/O :ref:`bridge <asyncio-futures>` callback-based libraries and code with async/await syntax. :ref:`run Python coroutines <coroutine>` concurrently and have full control over their execution; :ref:`synchronize <asyncio-sync>` concurrent code; Additionally, there are **low-level** APIs for *library and framework developers* to: Guides and Tutorials Hello World! High-level APIs Low-level APIs Reference The source code for asyncio can be found in :source:`Lib/asyncio/`. asyncio is a library to write **concurrent** code using the **async/await** syntax. asyncio is often a perfect fit for IO-bound and high-level **structured** network code. asyncio is used as a foundation for multiple Python asynchronous frameworks that provide high-performance network and web-servers, database connection libraries, distributed task queues, etc. asyncio provides a set of **high-level** APIs to: control :ref:`subprocesses <asyncio-subprocess>`; create and manage :ref:`event loops <asyncio-event-loop>`, which provide asynchronous APIs for :meth:`networking <loop.create_server>`, running :meth:`subprocesses <loop.subprocess_exec>`, handling :meth:`OS signals <loop.add_signal_handler>`, etc; distribute tasks via :ref:`queues <asyncio-queues>`; implement efficient protocols using :ref:`transports <asyncio-transports-protocols>`; perform :ref:`network IO and IPC <asyncio-streams>`; Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 00:55+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :mod:`asyncio` --- 异步 I/O 通过 async/await 语法 :ref:`桥接 <asyncio-futures>` 基于回调的库和代码。 并发地 :ref:`运行 Python 协程 <coroutine>` 并对其执行过程实现完全控制; :ref:`同步 <asyncio-sync>` 并发代码; 此外，还有一些 **低层级** API 以支持 *库和框架的开发者* 实现: 指南与教程 Hello World! 高层级 API 低层级 API 参考 asyncio 的源代码可以在 :source:`Lib/asyncio/` 中找到。 asyncio 是用来编写 **并发** 代码的库，使用 **async/await** 语法。 asyncio 往往是构建 IO 密集型和高层级 **结构化** 网络代码的最佳选择。 asyncio 被用作多个提供高性能 Python 异步框架的基础，包括网络和网站服务，数据库连接库，分布式任务队列等等。 asyncio 提供一组 **高层级** API 用于: 控制 :ref:`子进程 <asyncio-subprocess>`; 创建和管理 :ref:`事件循环 <asyncio-event-loop>`，以提供异步 API 用于 :meth:`网络化 <loop.create_server>`, 运行 :meth:`子进程 <loop.subprocess_exec>`，处理 :meth:`OS 信号 <loop.add_signal_handler>` 等等; 通过 :ref:`队列 <asyncio-queues>` 实现分布式任务; 使用 :ref:`transports <asyncio-transports-protocols>` 实现高效率协议; 执行 :ref:`网络 IO 和 IPC <asyncio-streams>`; 