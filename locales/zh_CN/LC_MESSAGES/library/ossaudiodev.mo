��                        �     �     �     �     �          
          6     K     `     u     �     �     �  =   �  3   �  %   3     Y     e  S   l     �  �   �  �   [  3   ?  Q   s  #   �     �  ,   �  �  '     �     �     �     �     �               1     F     [     p     �     �     �  6   �  ,   �  #    	     D	     K	  U   R	  	   �	  }   �	  �   0
  D   �
  N   /  %   ~     �     �   11025 22050 44100 8000 96000 :const:`AFMT_A_LAW` :const:`AFMT_IMA_ADPCM` :const:`AFMT_MU_LAW` :const:`AFMT_S16_BE` :const:`AFMT_S16_LE` :const:`AFMT_S8` :const:`AFMT_U16_BE` :const:`AFMT_U16_LE` :const:`AFMT_U8` :mod:`ossaudiodev` --- Access to OSS-compatible audio devices CD quality audio (at 16 bits/sample and 2 channels) DVD quality audio (at 24 bits/sample) Description Format Operations in this module now raise :exc:`OSError` where :exc:`IOError` was raised. Rate The module defines a large number of constants supplied by the OSS device driver; see ``<sys/soundcard.h>`` on either Linux or FreeBSD for a listing. This module allows you to access the OSS (Open Sound System) audio interface. OSS is available for a wide range of open-source and commercial Unices, and is the standard audio interface for Linux and recent versions of FreeBSD. Writable :term:`bytes-like object` is now accepted. `Open Sound System Programmer's Guide <http://www.opensound.com/pguide/oss.pdf>`_ default rate for :file:`/dev/audio` speech recording the official documentation for the OSS C API Project-Id-Version: Python 3.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-29 12:56+0000
PO-Revision-Date: 2021-06-28 01:10+0000
Last-Translator: jing li <tes286.lijing@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 11025 22050 44100 8000 96000 :const:`AFMT_A_LAW` :const:`AFMT_IMA_ADPCM` :const:`AFMT_MU_LAW` :const:`AFMT_S16_BE` :const:`AFMT_S16_LE` :const:`AFMT_S8` :const:`AFMT_U16_BE` :const:`AFMT_U16_LE` :const:`AFMT_U8` :mod:`ossaudiodev`  --- 访问兼容OSS的音频设备 CD品质的音频（16位采样和2通道） DVD品质的音频（24位采样） 描述 格式 此模块中过去会引发 :exc:`IOError` 的操作现在将引发 :exc:`OSError`。 采样率 该模块定义了大量由OSS设备驱动提供的常量； 请参阅``<sys/soundcard.h>`` Linux 或 FreeBSD 上的列表。 该模块允许您访问 OSS（开放式音响系统）音频接口。 OSS 可用于广泛的开源和商业 Unices，并且是 Linux 和最新版本的 FreeBSD 的标准音频接口。 现在接受可写的 :term:`字节类对象 <bytes-like object>`。 `开放之声系统程序员手册
<http://www.opensound.com/pguide/oss.pdf>`_ :file:`/dev/audio` 的默认采样率 语音录音 OSS C API 的官方文档 