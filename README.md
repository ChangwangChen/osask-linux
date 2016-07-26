# osask-linux
《30天自制操作系统》linux版本代码

因为该书的所有代码运行环境都是针对 windows 操作系统的，所有就有了这个代码库。开始的思路借鉴来自这代码库 [@alviezhang](https://github.com/alviezhang/osask-linux)，
不过他的代码没有全部完成，我会把30天的代码全部完成下去。

# 程序的运行环境
 我自己的开发和运行环境是 ：
  * 操作系统：Opensuse 42.1
  * 模拟运行环境：Qemu
 
# 需要的软件
  * Qemu
    模拟运行环境
  * nasm
    汇编器
    以上软件均使用 `zypper` 安装即可
  * z_tools工具集
    `z_tools`文件夹下面的工具集。由于该书作者给出的所有工具集都是 windows 环境中的，所有在 Linux 系统中需要重新生成。幸好有人已经做了，点击链接 [z_tools](http://hrb.osask.jp/z_tools.tar.bz2) 即可下载。参考文章来自 [图灵社区](http://www.ituring.com.cn/article/30667)

# 运行代码

  进如代码文件夹，直接运行 `run.sh` 文件即可
