# ==============================================================
# File generated on Tue Jan 14 17:50:32 EST 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../newtest_sign.c -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas}
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
config_interface -m_axi_addr64=0
config_interface -m_axi_offset=off
config_interface -register_io=off
config_interface -trim_dangling_port=0
set_directive_allocation haraka_S_absorb haraka_S_absorb -limit 1 -type function
set_directive_inline haraka_S_absorb 
set_directive_allocation haraka_S_squeezeblocks haraka_S_squeezeblocks -limit 1 -type function
set_directive_inline haraka_S_squeezeblocks 
set_directive_allocation haraka512 haraka512 -limit 1 -type function
set_directive_inline haraka512 
set_directive_unroll aesenc/aesenc_label0 -factor 128
set_directive_pipeline aesenc/aesenc_label0 
set_directive_unroll aesenc/aesenc_label1 -factor 128
set_directive_pipeline aesenc/aesenc_label1 
set_directive_unroll aesenc/aesenc_label2 -factor 128
set_directive_pipeline aesenc/aesenc_label2 
set_directive_unroll haraka512/haraka512_label3 -factor 128
set_directive_pipeline haraka512/haraka512_label3 
set_directive_unroll haraka512/haraka512_label4 -factor 128
set_directive_pipeline haraka512/haraka512_label4 
set_directive_unroll haraka512/haraka512_label5 -factor 128
set_directive_pipeline haraka512/haraka512_label5 
set_directive_unroll haraka512/haraka512_label6 -factor 128
set_directive_pipeline haraka512/haraka512_label6 
set_directive_unroll haraka512/haraka512_label7 -factor 128
set_directive_pipeline haraka512/haraka512_label7 
