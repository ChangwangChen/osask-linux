img : helloos.nas 
	nasm helloos.nas -o helloos.img

run : helloos.img
	qemu-system-x86_64 -fda helloos.img
clean : 
	rm helloos.img
