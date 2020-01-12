############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sphincs2.prj
set_top crypto_sign_open
add_files address.c
add_files aes.c
add_files fors.c
add_files haraka.c
add_files hash_haraka.c
add_files rng.c
add_files sign.c
add_files thash_haraka_simple.c
add_files utils.c
add_files wots.c
add_files -tb newtest_sign.c
open_solution "sign_open"
set_part {xc7a200tfbg676-2} -tool vivado
create_clock -period 10 -name default
config_interface  -expose_global  -m_axi_offset off -register_io off 
#source "./sphincs2.prj/sign_open/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
