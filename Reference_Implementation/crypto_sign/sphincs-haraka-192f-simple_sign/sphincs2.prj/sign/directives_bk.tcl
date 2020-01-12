############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "haraka_S_absorb" haraka_S_absorb
set_directive_inline "haraka_S_absorb"
set_directive_allocation -limit 1 -type function "haraka_S_squeezeblocks" haraka_S_squeezeblocks
set_directive_inline "haraka_S_squeezeblocks"
set_directive_allocation -limit 1 -type function "haraka512" haraka512
set_directive_inline "haraka512"
set_directive_unroll -factor 1 "aesenc/aesenc_label0"
set_directive_unroll -factor 1 "aesenc/aesenc_label1"
set_directive_unroll -factor 1 "aesenc/aesenc_label2"
set_directive_unroll -factor 1 "haraka512/haraka512_label3"
set_directive_unroll -factor 1 "haraka512/haraka512_label4"
set_directive_unroll -factor 1 "haraka512/haraka512_label5"
set_directive_unroll -factor 1 "haraka512/haraka512_label6"
set_directive_unroll -factor 1 "haraka512/haraka512_label7"
