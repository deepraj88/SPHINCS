# ==============================================================
# File generated on Fri Nov 15 11:25:15 EST 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../newtest_sign.c -cflags { -Wno-unknown-pragmas}
add_files wots.c
add_files utils.c
add_files thash_haraka_simple.c
add_files sign.c
add_files rng.c
add_files hash_haraka.c
add_files haraka.c
add_files fors.c
add_files aes.c
add_files address.c
set_part xc7a200tfbg676-2
create_clock -name default -period 10
config_interface -clock_enable=0
config_interface -expose_global=1
