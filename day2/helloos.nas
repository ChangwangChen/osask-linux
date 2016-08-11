;hello-os
;tab = 4

org  0x7c00  ;指明程序的装载地址

;标准FAT32格式软盘专用代码  Standard FAT12 floppy code

jmp  entry
db   0xeb, 0x4e, 0x90
db   "HELLOIPL"             ;启动扇区名称（8字节）
dw   512                    ;每个扇区（sector）的大小（必须为512字节）
db   1                      ;簇（cluster）大小（必须为1个扇区）
dw   1                      ;FAT起始位置（一般为第一个扇区）
db   2                      ;FAT个数（必须为2）
dw   224                    ;根目录大小（一般为224项）
dw   2880                   ;该磁盘的大小（必须为2880扇区 1440*1024/512）
db   0xf0                   ;磁盘类型（必须为0xf0）
dw   9                      ;FAT长度（必须为9个扇区）
dw   18                     ;一个磁道（track）的扇区数（必须为18个）
dw   2                      ;磁头数（必须为2）
dd   0                      ;不使用分区（必须是0）
dd   2880                   ;重写一次磁盘大小
db   0,0,0x29               ;固定
dd   0xffffffff
db   "HELLO-OS   "
db   "FAT12   "
resb 18                     ;空出18个字节

;程序主体

entry:

	mov	ax,0        ;初始化寄存器
	mov	ss,ax
	mov	sp,0x7c00
	mov	ds,ax
	mov	es,ax

	mov	si,msg

loop:
	mov	al,[si]
	add	si,1        ;si寄存器加1
	cmp	al,0
	je	fin
	mov	ah,0x0e     ;显示一个文字
	mov	bx,15       ;指定字符颜色
	int	0x10        ;调用显卡BIOS
	jmp	loop

fin:
	hlt                 ;CPU停止，等待指令
	jmp	fin	    ;无限循环

msg:
	db	0x0a, 0x0a  ;换行两次
	db	"Hello, World!"
	db	0x0a
	db	0x0d
	db	"author: Changwang"
	db	0x0a
	db	0x0d
	
	resb	0x001fe-($-$$)     ;填写0x00直到地址0x001fe

	db	0x55, 0xaa
