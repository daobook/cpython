��    (      \              �  -   �  K   �  /        G     K  1   _     �     �  ,   �  	   �     �  	   �     �       "     	   9  V   C     �     �  "   �     �     �  *        <  	   E      O  0   p     �  	   �  (   �     �     �     	          &     2     ;     T  	   ]  �  g  -   "  I   P  )   �     �     �  )   �     �     	  $   	     @	     I	  	   P	     Z	  	   w	  $   �	     �	  G   �	     �	     
     %
     E
     N
  $   c
     �
     �
     �
  $   �
     �
     �
  #   �
                %     2     B  	   N     X     k     t   **Source code:** :source:`Lib/tracemalloc.py` :func:`Snapshot.statistics` returns a list of :class:`Statistic` instances. :mod:`tracemalloc` --- Trace memory allocations API Compute differences Display the 10 files allocating the most memory:: Display the top 10 DomainFilter Example of output of the Python test suite:: Example:: Examples Examples: Filename (``str``). Filter Filter on traces of memory blocks. Functions Get statistics as a sorted list of :class:`Statistic` instances grouped by *key_type*: Line number (``int``). Load a snapshot from a file. Number of memory blocks (``int``). Output:: See also :meth:`dump`. See also the :class:`StatisticDiff` class. Snapshot Statistic Statistic on memory allocations. Take two snapshots and display the differences:: Trace Traceback Use :meth:`load` to reload the snapshot. Write the snapshot into a file. ``'filename'`` ``'lineno'`` ``'traceback'`` description filename filename and line number key_type traceback Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-08 15:17+0800
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: ppcfish <ppcfish@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **源代码：** :source:`Lib/tracemalloc.py` :func:`Snapshot.statistics` 返回 :class:`Statistic` 实例的列表。. :mod:`tracemalloc` --- 跟踪内存分配 API 计算差异 显示内存分配最多的10个文件： 显示前10项 域过滤器 Python测试套件的输出示例： 示例:: 例子 示例： 文件名（``字符串``） 过滤器 对内存块的跟踪进行筛选。 函数 获取 :class:`Statistic` 信息列表，按 *key_type* 分组排序： 行号（``整形``） 从文件载入快照。 内存块数（``整形``）。 输出:: 另见 :meth:`dump`. 参见 :class:`StatisticDiff` 类。 快照 统计 统计内存分配 获取两个快照并显示差异： 跟踪 回溯 使用 :meth:`load` 重载快照。 将快照写入文件 ``'filename'`` ``'lineno'`` ``'traceback'`` description 文件名 文件名和行号 key_type 回溯 