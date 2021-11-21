��          �               �   4   �   :   "  P   ]  G   �  �   �      �  �   �  %   �  �   �  6   J  6   �  v   �  �  /  *   �  8     G   Q  J   �  �   �  $   �  �   �      �	  n   �	  )   +
  )   U
  a   
   :mod:`nis` --- Interface to Sun's NIS (Yellow Pages) An error raised when a NIS function returns an error code. Because NIS exists only on Unix systems, this module is only available for Unix. Note that *mapname* is first checked if it is an alias to another name. Return a dictionary mapping *key* to *value* such that ``match(key, mapname)==value``. Note that both keys and values of the dictionary are arbitrary arrays of bytes. Return a list of all valid maps. Return the match for *key* in map *mapname*, or raise an error (:exc:`nis.error`) if there is none. Both should be strings, *key* is 8-bit clean. Return value is an arbitrary array of bytes (may contain ``NULL`` and other joys). Return the system default NIS domain. The *domain* argument allows overriding the NIS domain used for the lookup. If unspecified, lookup is in the default NIS domain. The :mod:`nis` module defines the following exception: The :mod:`nis` module defines the following functions: The :mod:`nis` module gives a thin wrapper around the NIS library, useful for central administration of several hosts. Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:10+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :mod:`nis` --- Sun 的 NIS (黄页) 接口 当 NIS 函数返回一个错误码时引发的异常。 因为 NIS 仅存在于 Unix 系统，此模块仅在 Unix 上可用。 请注意如果 *mapname* 是另一名称的别名则会先检查别名。 返回一个字典，其元素为 *key* 到 *value* 的映射使得 ``match(key, mapname)==value``。 请注意字典的键和值均为任意字节数组。 返回全部可用映射的列表。 返回 *key* 在映射 *mapname* 中的匹配结果，如无结果则会引发错误 (:exc:`nis.error`)。 两个参数都应为字符串，*key* 定长 8 个比特。 返回值为任意字节数组（可包含 ``NULL`` 和其他特殊值）。 返回系统默认的 NIS 域。 *domain* 参数可允许重载用于查找的 NIS 域。 如果未指定，则会在默认 NIS 域中查找。 :mod:`nis` 模块定义了以下异常： :mod:`nis` 模块定义了以下函数： :mod:`nis` 模块提供了对 NIS 库的轻量级包装，适用于多个主机的集中管理。 