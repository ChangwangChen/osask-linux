#!/bin/bash
nasm helloos.nas -o helloos.img
qemu-system-x86_64 -fda helloos.img