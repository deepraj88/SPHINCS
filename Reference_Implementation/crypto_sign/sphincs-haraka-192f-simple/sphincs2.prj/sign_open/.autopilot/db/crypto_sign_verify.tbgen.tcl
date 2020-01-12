set moduleName crypto_sign_verify
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {crypto_sign_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ sig int 8 regular {array 38964 { 1 3 } 1 1 }  }
	{ mlen int 64 regular  }
	{ pk int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ rc int 8 regular {array 640 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sig", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sig_address0 sc_out sc_lv 16 signal 0 } 
	{ sig_ce0 sc_out sc_logic 1 signal 0 } 
	{ sig_q0 sc_in sc_lv 8 signal 0 } 
	{ mlen sc_in sc_lv 64 signal 1 } 
	{ pk_address0 sc_out sc_lv 6 signal 2 } 
	{ pk_ce0 sc_out sc_logic 1 signal 2 } 
	{ pk_q0 sc_in sc_lv 8 signal 2 } 
	{ rc_address0 sc_out sc_lv 10 signal 3 } 
	{ rc_ce0 sc_out sc_logic 1 signal 3 } 
	{ rc_we0 sc_out sc_logic 1 signal 3 } 
	{ rc_d0 sc_out sc_lv 8 signal 3 } 
	{ rc_q0 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sig_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sig", "role": "address0" }} , 
 	{ "name": "sig_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig", "role": "ce0" }} , 
 	{ "name": "sig_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig", "role": "q0" }} , 
 	{ "name": "mlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "we0" }} , 
 	{ "name": "rc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "d0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "193", "312", "366", "405", "428"],
		"CDFG" : "crypto_sign_verify",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fors_pk_from_sig_fu_444"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_root_1_fu_459"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hash_message_fu_475"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_3_fu_489"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_pk_from_sig_fu_500"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_tweak_constants_fu_516"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "auth_path"},
					{"ID" : "9", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "sig"},
					{"ID" : "312", "SubInstance" : "grp_hash_message_fu_475", "Port" : "R"},
					{"ID" : "405", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "sig"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_hash_message_fu_475", "Port" : "pk"},
					{"ID" : "428", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "pk_seed"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "366", "SubInstance" : "grp_thash_3_fu_489", "Port" : "rc"},
					{"ID" : "193", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "rc"},
					{"ID" : "9", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "rc"},
					{"ID" : "312", "SubInstance" : "grp_hash_message_fu_475", "Port" : "rc"},
					{"ID" : "428", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "rc"},
					{"ID" : "405", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "366", "SubInstance" : "grp_thash_3_fu_489", "Port" : "sbox"},
					{"ID" : "193", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "sbox"},
					{"ID" : "9", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "sbox"},
					{"ID" : "312", "SubInstance" : "grp_hash_message_fu_475", "Port" : "sbox"},
					{"ID" : "428", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "sbox"},
					{"ID" : "405", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "sbox"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "outbuf"},
					{"ID" : "405", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "outbuf"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outbuf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mhash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wots_pk_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.root_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.leaf_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wots_addr_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tree_addr_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wots_pk_addr_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "134", "173"],
		"CDFG" : "fors_pk_from_sig",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_root_fu_453"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_2_fu_470"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_fu_482"}],
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_thash_2_fu_470", "Port" : "out_r"}]},
			{"Name" : "sig", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "grp_thash_fu_482", "Port" : "in_r"},
					{"ID" : "15", "SubInstance" : "grp_compute_root_fu_453", "Port" : "auth_path"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fors_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_thash_2_fu_470", "Port" : "sbox"},
					{"ID" : "173", "SubInstance" : "grp_thash_fu_482", "Port" : "sbox"},
					{"ID" : "15", "SubInstance" : "grp_compute_root_fu_453", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_thash_2_fu_470", "Port" : "rc"},
					{"ID" : "173", "SubInstance" : "grp_thash_fu_482", "Port" : "rc"},
					{"ID" : "15", "SubInstance" : "grp_compute_root_fu_453", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "grp_thash_fu_482", "Port" : "outbuf"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.indices_assign_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.roots_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.leaf_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.fors_tree_addr_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.fors_pk_addr_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453", "Parent" : "9", "Child" : ["16", "17", "56", "95"],
		"CDFG" : "compute_root",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_fu_346"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_360"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_280_fu_371"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_thash_1_fu_346", "Port" : "out_r"}]},
			{"Name" : "root_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "addr"},
					{"ID" : "17", "SubInstance" : "grp_thash_1_fu_346", "Port" : "addr"},
					{"ID" : "95", "SubInstance" : "grp_thash_280_fu_371", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "sbox"},
					{"ID" : "17", "SubInstance" : "grp_thash_1_fu_346", "Port" : "sbox"},
					{"ID" : "95", "SubInstance" : "grp_thash_280_fu_371", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "rc"},
					{"ID" : "17", "SubInstance" : "grp_thash_1_fu_346", "Port" : "rc"},
					{"ID" : "95", "SubInstance" : "grp_thash_280_fu_371", "Port" : "rc"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.buffer_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346", "Parent" : "15", "Child" : ["18", "19"],
		"CDFG" : "thash_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_3_fu_191"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "out_r"}]},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "rc"}]}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.buf_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191", "Parent" : "17", "Child" : ["20", "21", "22", "40"],
		"CDFG" : "haraka_S_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "22", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "22", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.s_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.h_assign_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180", "Parent" : "19", "Child" : ["23", "24"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "23", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "22", "Child" : ["25", "26", "27", "30", "32", "34", "36", "38"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "25", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "24", "Child" : ["28", "29"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "24", "Child" : ["31"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "24", "Child" : ["33"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "24", "Child" : ["35"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "24", "Child" : ["37"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "24", "Child" : ["39"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193", "Parent" : "19", "Child" : ["41", "42", "43", "46", "48", "50", "52", "54"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "40", "Child" : ["44", "45"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "40", "Child" : ["47"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "40", "Child" : ["49"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "40", "Child" : ["51"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "40", "Child" : ["53"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "40", "Child" : ["55"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360", "Parent" : "15", "Child" : ["57", "58"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.buf_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181", "Parent" : "56", "Child" : ["59", "60", "61", "79"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "61", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "61", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.s_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "58", "Child" : ["62", "63"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "61", "Child" : ["64", "65", "66", "69", "71", "73", "75", "77"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "63", "Child" : ["67", "68"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "63", "Child" : ["70"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "63", "Child" : ["72"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "63", "Child" : ["74"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "63", "Child" : ["76"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "63", "Child" : ["78"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "58", "Child" : ["80", "81", "82", "85", "87", "89", "91", "93"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "79", "Child" : ["83", "84"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "79", "Child" : ["86"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "79", "Child" : ["88"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "79", "Child" : ["90"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "79", "Child" : ["92"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "79", "Child" : ["94"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371", "Parent" : "15", "Child" : ["96", "97"],
		"CDFG" : "thash_280",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.buf_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181", "Parent" : "95", "Child" : ["98", "99", "100", "118"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "100", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "100", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.s_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "97", "Child" : ["101", "102"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "100", "Child" : ["103", "104", "105", "108", "110", "112", "114", "116"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "102", "Child" : ["106", "107"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "102", "Child" : ["109"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "102", "Child" : ["111"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "102", "Child" : ["113"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "102", "Child" : ["115"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "102", "Child" : ["117"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "117", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "97", "Child" : ["119", "120", "121", "124", "126", "128", "130", "132"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "118", "Child" : ["122", "123"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "118", "Child" : ["125"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "118", "Child" : ["127"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "118", "Child" : ["129"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "118", "Child" : ["131"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "118", "Child" : ["133"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470", "Parent" : "9", "Child" : ["135", "136"],
		"CDFG" : "thash_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_184"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "rc"}]}]},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.buf_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184", "Parent" : "134", "Child" : ["137", "138", "139", "157"],
		"CDFG" : "haraka_S_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_178"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"},
					{"ID" : "157", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"},
					{"ID" : "157", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"}]}]},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.s_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.h_assign_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178", "Parent" : "136", "Child" : ["140", "141"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "139", "Child" : ["142", "143", "144", "147", "149", "151", "153", "155"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "141", "Child" : ["145", "146"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "145", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "141", "Child" : ["148"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "148", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "141", "Child" : ["150"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "150", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "141", "Child" : ["152"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "141", "Child" : ["154"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "154", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "141", "Child" : ["156"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190", "Parent" : "136", "Child" : ["158", "159", "160", "163", "165", "167", "169", "171"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "157", "Child" : ["161", "162"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "157", "Child" : ["164"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "157", "Child" : ["166"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "166", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "157", "Child" : ["168"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "157", "Child" : ["170"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "170", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "157", "Child" : ["172"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482", "Parent" : "9", "Child" : ["174", "175"],
		"CDFG" : "thash",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7627", "EstimateLatencyMax" : "7627",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_258"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_haraka512_fu_258", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_haraka512_fu_258", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_haraka512_fu_258", "Port" : "out_r"}]}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.buf_tmp_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258", "Parent" : "173", "Child" : ["176", "177"],
		"CDFG" : "haraka512",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7342", "EstimateLatencyMax" : "7342",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_fu_205"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.buf_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205", "Parent" : "175", "Child" : ["178", "179", "180", "183", "185", "187", "189", "191"],
		"CDFG" : "haraka512_perm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_183"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_183"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_197"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_215"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_221"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.s_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "177", "Child" : ["181", "182"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "181", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "177", "Child" : ["184"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "184", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "177", "Child" : ["186"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "186", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "177", "Child" : ["188"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "177", "Child" : ["190"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "189"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "177", "Child" : ["192"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459", "Parent" : "0", "Child" : ["194", "195", "234", "273"],
		"CDFG" : "compute_root_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_192_fu_315"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_328"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_280_fu_339"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_thash_192_fu_315", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "addr"},
					{"ID" : "273", "SubInstance" : "grp_thash_280_fu_339", "Port" : "addr"},
					{"ID" : "195", "SubInstance" : "grp_thash_192_fu_315", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "sbox"},
					{"ID" : "273", "SubInstance" : "grp_thash_280_fu_339", "Port" : "sbox"},
					{"ID" : "195", "SubInstance" : "grp_thash_192_fu_315", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "rc"},
					{"ID" : "273", "SubInstance" : "grp_thash_280_fu_339", "Port" : "rc"},
					{"ID" : "195", "SubInstance" : "grp_thash_192_fu_315", "Port" : "rc"}]}]},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.buffer_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315", "Parent" : "193", "Child" : ["196", "197"],
		"CDFG" : "thash_192",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_183"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "rc"}]}]},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.buf_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183", "Parent" : "195", "Child" : ["198", "199", "200", "218"],
		"CDFG" : "haraka_S_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_178"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"},
					{"ID" : "218", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"},
					{"ID" : "218", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"}]}]},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.s_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.h_assign_U", "Parent" : "197"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178", "Parent" : "197", "Child" : ["201", "202"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "200", "Child" : ["203", "204", "205", "208", "210", "212", "214", "216"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "203", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "202"},
	{"ID" : "205", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "202", "Child" : ["206", "207"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "206", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "205"},
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "202", "Child" : ["209"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "209", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "202", "Child" : ["211"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "211", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "202", "Child" : ["213"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "202", "Child" : ["215"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "215", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "202", "Child" : ["217"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "217", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190", "Parent" : "197", "Child" : ["219", "220", "221", "224", "226", "228", "230", "232"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "218", "Child" : ["222", "223"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "222", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "218", "Child" : ["225"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "218", "Child" : ["227"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "218", "Child" : ["229"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "229", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "218", "Child" : ["231"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "231", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "218", "Child" : ["233"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "233", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328", "Parent" : "193", "Child" : ["235", "236"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.buf_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181", "Parent" : "234", "Child" : ["237", "238", "239", "257"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "239", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "239", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.s_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "236", "Child" : ["240", "241"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "239", "Child" : ["242", "243", "244", "247", "249", "251", "253", "255"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "241", "Child" : ["245", "246"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "245", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "241", "Child" : ["248"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "248", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "241", "Child" : ["250"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "241", "Child" : ["252"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "252", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "241", "Child" : ["254"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "254", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "241", "Child" : ["256"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "256", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "236", "Child" : ["258", "259", "260", "263", "265", "267", "269", "271"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "257", "Child" : ["261", "262"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "257", "Child" : ["264"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "264", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "257", "Child" : ["266"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "257", "Child" : ["268"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "257", "Child" : ["270"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "257", "Child" : ["272"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339", "Parent" : "193", "Child" : ["274", "275"],
		"CDFG" : "thash_280",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.buf_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181", "Parent" : "273", "Child" : ["276", "277", "278", "296"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "278", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "278", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.s_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "275", "Child" : ["279", "280"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "278", "Child" : ["281", "282", "283", "286", "288", "290", "292", "294"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "283", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "283", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "281", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "280", "Child" : ["284", "285"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "284", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "283"},
	{"ID" : "286", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "280", "Child" : ["287"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "287", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "280", "Child" : ["289"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "289", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "280", "Child" : ["291"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "291", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "280", "Child" : ["293"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "293", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "280", "Child" : ["295"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "295", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "275", "Child" : ["297", "298", "299", "302", "304", "306", "308", "310"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "296"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "296", "Child" : ["300", "301"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "300", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "299"},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "296", "Child" : ["303"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "303", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "296", "Child" : ["305"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "305", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "296", "Child" : ["307"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "307", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "296", "Child" : ["309"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "309", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "296", "Child" : ["311"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "311", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475", "Parent" : "0", "Child" : ["313", "314", "315", "332", "349"],
		"CDFG" : "hash_message",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_278"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "m"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "sbox"},
					{"ID" : "349", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_278", "Port" : "sbox"},
					{"ID" : "315", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "rc"},
					{"ID" : "349", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_278", "Port" : "rc"},
					{"ID" : "315", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "rc"}]}]},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.buf_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.s_inc_U", "Parent" : "312"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251", "Parent" : "312", "Child" : ["316"],
		"CDFG" : "haraka_S_inc_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_143"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "rc"}]}]},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143", "Parent" : "315", "Child" : ["317", "318", "319", "322", "324", "326", "328", "330"],
		"CDFG" : "haraka512_perm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.s_U", "Parent" : "316"},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.tmp_U", "Parent" : "316"},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161", "Parent" : "316", "Child" : ["320", "321"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161.sbox_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161.v_U", "Parent" : "319"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_2_fu_176", "Parent" : "316", "Child" : ["323"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_1_fu_190", "Parent" : "316", "Child" : ["325"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "325", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_1_fu_196", "Parent" : "316", "Child" : ["327"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "327", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_fu_208", "Parent" : "316", "Child" : ["329"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_fu_208.tmp_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_fu_214", "Parent" : "316", "Child" : ["331"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "331", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_fu_214.tmp_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267", "Parent" : "312", "Child" : ["333"],
		"CDFG" : "haraka_S_inc_absorb_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_127"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "rc"}]}]},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127", "Parent" : "332", "Child" : ["334", "335", "336", "339", "341", "343", "345", "347"],
		"CDFG" : "haraka512_perm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.s_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.tmp_U", "Parent" : "333"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161", "Parent" : "333", "Child" : ["337", "338"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.sbox_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.v_U", "Parent" : "336"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176", "Parent" : "333", "Child" : ["340"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190", "Parent" : "333", "Child" : ["342"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196", "Parent" : "333", "Child" : ["344"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208", "Parent" : "333", "Child" : ["346"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208.tmp_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214", "Parent" : "333", "Child" : ["348"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214.tmp_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278", "Parent" : "312", "Child" : ["350"],
		"CDFG" : "haraka_S_inc_squeeze",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_146"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "rc"}]}]},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146", "Parent" : "349", "Child" : ["351", "352", "353", "356", "358", "360", "362", "364"],
		"CDFG" : "haraka512_perm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.s_U", "Parent" : "350"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.tmp_U", "Parent" : "350"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161", "Parent" : "350", "Child" : ["354", "355"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.sbox_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.v_U", "Parent" : "353"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176", "Parent" : "350", "Child" : ["357"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190", "Parent" : "350", "Child" : ["359"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "358"},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196", "Parent" : "350", "Child" : ["361"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208", "Parent" : "350", "Child" : ["363"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208.tmp_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214", "Parent" : "350", "Child" : ["365"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214.tmp_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489", "Parent" : "0", "Child" : ["367", "368"],
		"CDFG" : "thash_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_180"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "rc"}]}]},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.buf_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180", "Parent" : "366", "Child" : ["369", "370", "371", "389"],
		"CDFG" : "haraka_S_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_178"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"},
					{"ID" : "389", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"},
					{"ID" : "389", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"}]}]},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.s_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.h_assign_U", "Parent" : "368"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178", "Parent" : "368", "Child" : ["372", "373"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "371"},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "371", "Child" : ["374", "375", "376", "379", "381", "383", "385", "387"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "376", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "376", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "373"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "373", "Child" : ["377", "378"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "377", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "376"},
	{"ID" : "378", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "376"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "373", "Child" : ["380"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "373", "Child" : ["382"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "373", "Child" : ["384"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "373", "Child" : ["386"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "386", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "373", "Child" : ["388"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "388", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190", "Parent" : "368", "Child" : ["390", "391", "392", "395", "397", "399", "401", "403"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "389"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "389", "Child" : ["393", "394"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "392"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "389", "Child" : ["396"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "389", "Child" : ["398"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "389", "Child" : ["400"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "389", "Child" : ["402"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "389", "Child" : ["404"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500", "Parent" : "0", "Child" : ["406", "407", "427"],
		"CDFG" : "wots_pk_from_sig",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_2_fu_240"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_checksum_fu_255"}],
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "in_r"}]},
			{"Name" : "sig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "msg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "outbuf"}]}]},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.lengths_assign_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240", "Parent" : "405", "Child" : ["408", "409"],
		"CDFG" : "thash_1_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7627", "EstimateLatencyMax" : "7627",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_251"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_haraka512_fu_251", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_haraka512_fu_251", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_haraka512_fu_251", "Port" : "out_r"}]}]},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.buf_tmp_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251", "Parent" : "407", "Child" : ["410", "411"],
		"CDFG" : "haraka512",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7342", "EstimateLatencyMax" : "7342",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_fu_205"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.buf_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205", "Parent" : "409", "Child" : ["412", "413", "414", "417", "419", "421", "423", "425"],
		"CDFG" : "haraka512_perm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_183"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_183"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_197"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_215"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_221"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.s_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "411", "Child" : ["415", "416"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "415", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "411", "Child" : ["418"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "418", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "411", "Child" : ["420"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "420", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "411", "Child" : ["422"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "422", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "411", "Child" : ["424"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "424", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "411", "Child" : ["426"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "426", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "425"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_wots_checksum_fu_255", "Parent" : "405",
		"CDFG" : "wots_checksum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "csum_base_w", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "428", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516", "Parent" : "0", "Child" : ["429", "430", "431"],
		"CDFG" : "tweak_constants",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "147158", "EstimateLatencyMax" : "147158",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_fu_132"}],
		"Port" : [
			{"Name" : "pk_seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "in_r"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "sbox"}]}]},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.haraka_rc_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.buf_U", "Parent" : "428"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132", "Parent" : "428", "Child" : ["432", "433", "449"],
		"CDFG" : "haraka_S",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "144435", "EstimateLatencyMax" : "144435",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_132"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_141"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_haraka_S_absorb_1_fu_141", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "grp_haraka512_perm_159_fu_132", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "grp_haraka512_perm_159_fu_132", "Port" : "rc"}]}]},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.s_U", "Parent" : "431"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132", "Parent" : "431", "Child" : ["434", "435", "436", "439", "441", "443", "445", "447"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.s_U", "Parent" : "433"},
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.tmp_U", "Parent" : "433"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161", "Parent" : "433", "Child" : ["437", "438"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161.sbox_U", "Parent" : "436"},
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161.v_U", "Parent" : "436"},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_2_fu_176", "Parent" : "433", "Child" : ["440"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "439"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_1_fu_190", "Parent" : "433", "Child" : ["442"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "441"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_1_fu_196", "Parent" : "433", "Child" : ["444"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_fu_208", "Parent" : "433", "Child" : ["446"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_fu_208.tmp_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_fu_214", "Parent" : "433", "Child" : ["448"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_fu_214.tmp_U", "Parent" : "447"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka_S_absorb_1_fu_141", "Parent" : "431", "Child" : ["450"],
		"CDFG" : "haraka_S_absorb_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka_S_absorb_1_fu_141.empty_U", "Parent" : "449"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_verify {
		sig {Type I LastRead 7 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 11 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
	fors_pk_from_sig {
		pk {Type O LastRead -1 FirstWrite 5}
		sig {Type I LastRead 7 FirstWrite -1}
		m {Type I LastRead 7 FirstWrite -1}
		fors_addr {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead 6 FirstWrite 4}}
	compute_root {
		root {Type O LastRead -1 FirstWrite 5}
		root_offset {Type I LastRead 0 FirstWrite -1}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		idx_offset {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_3 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_1_1 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_280 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash {
		out_r {Type O LastRead -1 FirstWrite 7}
		in_r {Type I LastRead 4 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead 6 FirstWrite 4}}
	haraka512 {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 5}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_192 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_1_1 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_280 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	hash_message {
		digest {Type O LastRead -1 FirstWrite 16}
		R {Type I LastRead 4 FirstWrite -1}
		pk {Type I LastRead 5 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_inc_absorb {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
		m_offset {Type I LastRead 0 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_1 {
		in_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka_S_inc_absorb_1 {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_1 {
		in_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka_S_inc_squeeze {
		out_r {Type O LastRead -1 FirstWrite 3}
		s_inc {Type IO LastRead 7 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_1 {
		in_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_3 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	wots_pk_from_sig {
		pk {Type IO LastRead 4 FirstWrite 6}
		sig {Type I LastRead 5 FirstWrite -1}
		sig_offset {Type I LastRead 0 FirstWrite -1}
		msg {Type I LastRead 1 FirstWrite -1}
		addr {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead 6 FirstWrite 4}}
	thash_1_2 {
		in_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead 6 FirstWrite 4}}
	haraka512 {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	wots_checksum {
		csum_base_w {Type IO LastRead 1 FirstWrite 4}}
	tweak_constants {
		pk_seed {Type I LastRead 2 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka_S {
		out_r {Type O LastRead -1 FirstWrite 6}
		in_r {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 4 FirstWrite 5}
		m {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sig { ap_memory {  { sig_address0 mem_address 1 16 }  { sig_ce0 mem_ce 1 1 }  { sig_q0 mem_dout 0 8 } } }
	mlen { ap_none {  { mlen in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 6 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_we0 mem_we 1 1 }  { rc_d0 mem_din 1 8 }  { rc_q0 mem_dout 0 8 } } }
}
set moduleName crypto_sign_verify
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {crypto_sign_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ sig int 8 regular {array 38964 { 1 3 } 1 1 }  }
	{ mlen int 64 regular  }
	{ pk int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ rc int 8 regular {array 640 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sig", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sig_address0 sc_out sc_lv 16 signal 0 } 
	{ sig_ce0 sc_out sc_logic 1 signal 0 } 
	{ sig_q0 sc_in sc_lv 8 signal 0 } 
	{ mlen sc_in sc_lv 64 signal 1 } 
	{ pk_address0 sc_out sc_lv 6 signal 2 } 
	{ pk_ce0 sc_out sc_logic 1 signal 2 } 
	{ pk_q0 sc_in sc_lv 8 signal 2 } 
	{ rc_address0 sc_out sc_lv 10 signal 3 } 
	{ rc_ce0 sc_out sc_logic 1 signal 3 } 
	{ rc_we0 sc_out sc_logic 1 signal 3 } 
	{ rc_d0 sc_out sc_lv 8 signal 3 } 
	{ rc_q0 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sig_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sig", "role": "address0" }} , 
 	{ "name": "sig_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig", "role": "ce0" }} , 
 	{ "name": "sig_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig", "role": "q0" }} , 
 	{ "name": "mlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "we0" }} , 
 	{ "name": "rc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "d0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "193", "312", "366", "405", "428"],
		"CDFG" : "crypto_sign_verify",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fors_pk_from_sig_fu_444"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_root_1_fu_459"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hash_message_fu_475"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_3_fu_489"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_pk_from_sig_fu_500"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_tweak_constants_fu_516"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_hash_message_fu_475", "Port" : "R"},
					{"ID" : "405", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "sig"},
					{"ID" : "193", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "auth_path"},
					{"ID" : "9", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "sig"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_hash_message_fu_475", "Port" : "pk"},
					{"ID" : "428", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "pk_seed"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_hash_message_fu_475", "Port" : "rc"},
					{"ID" : "366", "SubInstance" : "grp_thash_3_fu_489", "Port" : "rc"},
					{"ID" : "428", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "rc"},
					{"ID" : "405", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "rc"},
					{"ID" : "193", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "rc"},
					{"ID" : "9", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_hash_message_fu_475", "Port" : "sbox"},
					{"ID" : "366", "SubInstance" : "grp_thash_3_fu_489", "Port" : "sbox"},
					{"ID" : "428", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "sbox"},
					{"ID" : "405", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "sbox"},
					{"ID" : "193", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "sbox"},
					{"ID" : "9", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "sbox"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "405", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "outbuf"},
					{"ID" : "9", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "outbuf"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outbuf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mhash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wots_pk_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.root_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.leaf_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wots_addr_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tree_addr_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wots_pk_addr_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "134", "173"],
		"CDFG" : "fors_pk_from_sig",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_root_fu_453"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_2_fu_470"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_fu_482"}],
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_thash_2_fu_470", "Port" : "out_r"}]},
			{"Name" : "sig", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_compute_root_fu_453", "Port" : "auth_path"},
					{"ID" : "173", "SubInstance" : "grp_thash_fu_482", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fors_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_compute_root_fu_453", "Port" : "sbox"},
					{"ID" : "134", "SubInstance" : "grp_thash_2_fu_470", "Port" : "sbox"},
					{"ID" : "173", "SubInstance" : "grp_thash_fu_482", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_compute_root_fu_453", "Port" : "rc"},
					{"ID" : "134", "SubInstance" : "grp_thash_2_fu_470", "Port" : "rc"},
					{"ID" : "173", "SubInstance" : "grp_thash_fu_482", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "grp_thash_fu_482", "Port" : "outbuf"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.indices_assign_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.roots_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.leaf_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.fors_tree_addr_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.fors_pk_addr_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453", "Parent" : "9", "Child" : ["16", "17", "56", "95"],
		"CDFG" : "compute_root",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_fu_346"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_360"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_280_fu_371"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_thash_1_fu_346", "Port" : "out_r"}]},
			{"Name" : "root_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "addr"},
					{"ID" : "17", "SubInstance" : "grp_thash_1_fu_346", "Port" : "addr"},
					{"ID" : "95", "SubInstance" : "grp_thash_280_fu_371", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "sbox"},
					{"ID" : "17", "SubInstance" : "grp_thash_1_fu_346", "Port" : "sbox"},
					{"ID" : "95", "SubInstance" : "grp_thash_280_fu_371", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "rc"},
					{"ID" : "17", "SubInstance" : "grp_thash_1_fu_346", "Port" : "rc"},
					{"ID" : "95", "SubInstance" : "grp_thash_280_fu_371", "Port" : "rc"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.buffer_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346", "Parent" : "15", "Child" : ["18", "19"],
		"CDFG" : "thash_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_3_fu_191"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "out_r"}]},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "rc"}]}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.buf_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191", "Parent" : "17", "Child" : ["20", "21", "22", "40"],
		"CDFG" : "haraka_S_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "22", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "22", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.s_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.h_assign_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180", "Parent" : "19", "Child" : ["23", "24"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "23", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "22", "Child" : ["25", "26", "27", "30", "32", "34", "36", "38"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "25", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "24", "Child" : ["28", "29"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "24", "Child" : ["31"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "24", "Child" : ["33"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "24", "Child" : ["35"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "24", "Child" : ["37"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "24", "Child" : ["39"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193", "Parent" : "19", "Child" : ["41", "42", "43", "46", "48", "50", "52", "54"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "40", "Child" : ["44", "45"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "40", "Child" : ["47"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "40", "Child" : ["49"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "40", "Child" : ["51"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "40", "Child" : ["53"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "40", "Child" : ["55"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360", "Parent" : "15", "Child" : ["57", "58"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.buf_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181", "Parent" : "56", "Child" : ["59", "60", "61", "79"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "61", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "61", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.s_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "58", "Child" : ["62", "63"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "61", "Child" : ["64", "65", "66", "69", "71", "73", "75", "77"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "63", "Child" : ["67", "68"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "63", "Child" : ["70"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "63", "Child" : ["72"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "63", "Child" : ["74"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "63", "Child" : ["76"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "63", "Child" : ["78"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "58", "Child" : ["80", "81", "82", "85", "87", "89", "91", "93"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "79", "Child" : ["83", "84"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "79", "Child" : ["86"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "79", "Child" : ["88"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "79", "Child" : ["90"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "79", "Child" : ["92"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "79", "Child" : ["94"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371", "Parent" : "15", "Child" : ["96", "97"],
		"CDFG" : "thash_280",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.buf_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181", "Parent" : "95", "Child" : ["98", "99", "100", "118"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "100", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "100", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.s_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "97", "Child" : ["101", "102"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "100", "Child" : ["103", "104", "105", "108", "110", "112", "114", "116"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "102", "Child" : ["106", "107"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "102", "Child" : ["109"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "102", "Child" : ["111"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "102", "Child" : ["113"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "102", "Child" : ["115"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "102", "Child" : ["117"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "117", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "97", "Child" : ["119", "120", "121", "124", "126", "128", "130", "132"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "118", "Child" : ["122", "123"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "118", "Child" : ["125"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "118", "Child" : ["127"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "118", "Child" : ["129"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "118", "Child" : ["131"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "118", "Child" : ["133"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470", "Parent" : "9", "Child" : ["135", "136"],
		"CDFG" : "thash_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_184"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "rc"}]}]},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.buf_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184", "Parent" : "134", "Child" : ["137", "138", "139", "157"],
		"CDFG" : "haraka_S_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_178"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"},
					{"ID" : "139", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"},
					{"ID" : "139", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"}]}]},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.s_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.h_assign_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178", "Parent" : "136", "Child" : ["140", "141"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "139", "Child" : ["142", "143", "144", "147", "149", "151", "153", "155"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "141", "Child" : ["145", "146"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "145", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "141", "Child" : ["148"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "148", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "141", "Child" : ["150"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "150", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "141", "Child" : ["152"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "141", "Child" : ["154"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "154", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "141", "Child" : ["156"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190", "Parent" : "136", "Child" : ["158", "159", "160", "163", "165", "167", "169", "171"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "157", "Child" : ["161", "162"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "157", "Child" : ["164"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "157", "Child" : ["166"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "166", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "157", "Child" : ["168"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "157", "Child" : ["170"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "170", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "157", "Child" : ["172"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482", "Parent" : "9", "Child" : ["174", "175"],
		"CDFG" : "thash",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7627", "EstimateLatencyMax" : "7627",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_258"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_haraka512_fu_258", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_haraka512_fu_258", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_haraka512_fu_258", "Port" : "out_r"}]}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.buf_tmp_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258", "Parent" : "173", "Child" : ["176", "177"],
		"CDFG" : "haraka512",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7342", "EstimateLatencyMax" : "7342",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_fu_205"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.buf_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205", "Parent" : "175", "Child" : ["178", "179", "180", "183", "185", "187", "189", "191"],
		"CDFG" : "haraka512_perm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_183"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_183"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_197"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_215"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_221"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.s_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "177", "Child" : ["181", "182"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "181", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "177", "Child" : ["184"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "184", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "177", "Child" : ["186"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "186", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "177", "Child" : ["188"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "177", "Child" : ["190"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "189"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "177", "Child" : ["192"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459", "Parent" : "0", "Child" : ["194", "195", "234", "273"],
		"CDFG" : "compute_root_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_192_fu_315"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_328"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_280_fu_339"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_thash_192_fu_315", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_thash_192_fu_315", "Port" : "addr"},
					{"ID" : "273", "SubInstance" : "grp_thash_280_fu_339", "Port" : "addr"},
					{"ID" : "234", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_thash_192_fu_315", "Port" : "sbox"},
					{"ID" : "273", "SubInstance" : "grp_thash_280_fu_339", "Port" : "sbox"},
					{"ID" : "234", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_thash_192_fu_315", "Port" : "rc"},
					{"ID" : "273", "SubInstance" : "grp_thash_280_fu_339", "Port" : "rc"},
					{"ID" : "234", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "rc"}]}]},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.buffer_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315", "Parent" : "193", "Child" : ["196", "197"],
		"CDFG" : "thash_192",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_183"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "rc"}]}]},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.buf_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183", "Parent" : "195", "Child" : ["198", "199", "200", "218"],
		"CDFG" : "haraka_S_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_178"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"},
					{"ID" : "200", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"},
					{"ID" : "200", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"}]}]},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.s_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.h_assign_U", "Parent" : "197"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178", "Parent" : "197", "Child" : ["201", "202"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "200", "Child" : ["203", "204", "205", "208", "210", "212", "214", "216"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "203", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "202"},
	{"ID" : "205", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "202", "Child" : ["206", "207"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "206", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "205"},
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "202", "Child" : ["209"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "209", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "202", "Child" : ["211"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "211", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "202", "Child" : ["213"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "202", "Child" : ["215"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "215", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "202", "Child" : ["217"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "217", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190", "Parent" : "197", "Child" : ["219", "220", "221", "224", "226", "228", "230", "232"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "218", "Child" : ["222", "223"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "222", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "218", "Child" : ["225"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "218", "Child" : ["227"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "218", "Child" : ["229"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "229", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "218", "Child" : ["231"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "231", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "218", "Child" : ["233"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "233", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328", "Parent" : "193", "Child" : ["235", "236"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.buf_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181", "Parent" : "234", "Child" : ["237", "238", "239", "257"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "239", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "239", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.s_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "236", "Child" : ["240", "241"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "239", "Child" : ["242", "243", "244", "247", "249", "251", "253", "255"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "241", "Child" : ["245", "246"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "245", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "241", "Child" : ["248"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "248", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "241", "Child" : ["250"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "241", "Child" : ["252"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "252", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "241", "Child" : ["254"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "254", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "241", "Child" : ["256"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "256", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "236", "Child" : ["258", "259", "260", "263", "265", "267", "269", "271"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "257", "Child" : ["261", "262"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "257", "Child" : ["264"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "264", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "257", "Child" : ["266"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "257", "Child" : ["268"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "257", "Child" : ["270"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "257", "Child" : ["272"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339", "Parent" : "193", "Child" : ["274", "275"],
		"CDFG" : "thash_280",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.buf_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181", "Parent" : "273", "Child" : ["276", "277", "278", "296"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_180"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "278", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "278", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.s_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "275", "Child" : ["279", "280"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "278", "Child" : ["281", "282", "283", "286", "288", "290", "292", "294"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "283", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "283", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "281", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "280", "Child" : ["284", "285"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "284", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "283"},
	{"ID" : "286", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "280", "Child" : ["287"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "287", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "280", "Child" : ["289"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "289", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "280", "Child" : ["291"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "291", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "280", "Child" : ["293"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "293", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "280", "Child" : ["295"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "295", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "275", "Child" : ["297", "298", "299", "302", "304", "306", "308", "310"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "296"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "296", "Child" : ["300", "301"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "300", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "299"},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "296", "Child" : ["303"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "303", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "296", "Child" : ["305"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "305", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "296", "Child" : ["307"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "307", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "296", "Child" : ["309"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "309", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "296", "Child" : ["311"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "311", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475", "Parent" : "0", "Child" : ["313", "314", "315", "332", "349"],
		"CDFG" : "hash_message",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_278"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "m"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "sbox"},
					{"ID" : "315", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "sbox"},
					{"ID" : "349", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_278", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "rc"},
					{"ID" : "315", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "rc"},
					{"ID" : "349", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_278", "Port" : "rc"}]}]},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.buf_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.s_inc_U", "Parent" : "312"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251", "Parent" : "312", "Child" : ["316"],
		"CDFG" : "haraka_S_inc_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_143"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "rc"}]}]},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143", "Parent" : "315", "Child" : ["317", "318", "319", "322", "324", "326", "328", "330"],
		"CDFG" : "haraka512_perm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.s_U", "Parent" : "316"},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.tmp_U", "Parent" : "316"},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161", "Parent" : "316", "Child" : ["320", "321"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161.sbox_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161.v_U", "Parent" : "319"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_2_fu_176", "Parent" : "316", "Child" : ["323"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_1_fu_190", "Parent" : "316", "Child" : ["325"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "325", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_1_fu_196", "Parent" : "316", "Child" : ["327"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "327", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_fu_208", "Parent" : "316", "Child" : ["329"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_fu_208.tmp_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_fu_214", "Parent" : "316", "Child" : ["331"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "331", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_fu_214.tmp_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267", "Parent" : "312", "Child" : ["333"],
		"CDFG" : "haraka_S_inc_absorb_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_127"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "rc"}]}]},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127", "Parent" : "332", "Child" : ["334", "335", "336", "339", "341", "343", "345", "347"],
		"CDFG" : "haraka512_perm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.s_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.tmp_U", "Parent" : "333"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161", "Parent" : "333", "Child" : ["337", "338"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.sbox_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.v_U", "Parent" : "336"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176", "Parent" : "333", "Child" : ["340"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190", "Parent" : "333", "Child" : ["342"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196", "Parent" : "333", "Child" : ["344"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208", "Parent" : "333", "Child" : ["346"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208.tmp_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214", "Parent" : "333", "Child" : ["348"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214.tmp_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278", "Parent" : "312", "Child" : ["350"],
		"CDFG" : "haraka_S_inc_squeeze",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_146"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "rc"}]}]},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146", "Parent" : "349", "Child" : ["351", "352", "353", "356", "358", "360", "362", "364"],
		"CDFG" : "haraka512_perm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.s_U", "Parent" : "350"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.tmp_U", "Parent" : "350"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161", "Parent" : "350", "Child" : ["354", "355"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.sbox_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.v_U", "Parent" : "353"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176", "Parent" : "350", "Child" : ["357"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190", "Parent" : "350", "Child" : ["359"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "358"},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196", "Parent" : "350", "Child" : ["361"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208", "Parent" : "350", "Child" : ["363"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208.tmp_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214", "Parent" : "350", "Child" : ["365"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214.tmp_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489", "Parent" : "0", "Child" : ["367", "368"],
		"CDFG" : "thash_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_180"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "rc"}]}]},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.buf_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180", "Parent" : "366", "Child" : ["369", "370", "371", "389"],
		"CDFG" : "haraka_S_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_178"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "389", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"},
					{"ID" : "371", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "389", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"},
					{"ID" : "371", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"}]}]},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.s_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.h_assign_U", "Parent" : "368"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178", "Parent" : "368", "Child" : ["372", "373"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "371"},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "371", "Child" : ["374", "375", "376", "379", "381", "383", "385", "387"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "376", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "376", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "373"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "373", "Child" : ["377", "378"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "377", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "376"},
	{"ID" : "378", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "376"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "373", "Child" : ["380"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "373", "Child" : ["382"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "373", "Child" : ["384"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "373", "Child" : ["386"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "386", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "373", "Child" : ["388"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "388", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190", "Parent" : "368", "Child" : ["390", "391", "392", "395", "397", "399", "401", "403"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "389"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "389", "Child" : ["393", "394"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "392"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "389", "Child" : ["396"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "389", "Child" : ["398"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "389", "Child" : ["400"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "389", "Child" : ["402"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "389", "Child" : ["404"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500", "Parent" : "0", "Child" : ["406", "407", "427"],
		"CDFG" : "wots_pk_from_sig",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_2_fu_240"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_checksum_fu_255"}],
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "in_r"}]},
			{"Name" : "sig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "msg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "outbuf"}]}]},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.lengths_assign_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240", "Parent" : "405", "Child" : ["408", "409"],
		"CDFG" : "thash_1_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7627", "EstimateLatencyMax" : "7627",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_251"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_haraka512_fu_251", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_haraka512_fu_251", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_haraka512_fu_251", "Port" : "out_r"}]}]},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.buf_tmp_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251", "Parent" : "407", "Child" : ["410", "411"],
		"CDFG" : "haraka512",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7342", "EstimateLatencyMax" : "7342",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_fu_205"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.buf_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205", "Parent" : "409", "Child" : ["412", "413", "414", "417", "419", "421", "423", "425"],
		"CDFG" : "haraka512_perm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_168"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_183"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_183"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_197"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_203"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_215"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_221"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.s_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "411", "Child" : ["415", "416"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "415", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "411", "Child" : ["418"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "418", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "411", "Child" : ["420"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "420", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "411", "Child" : ["422"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "422", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "411", "Child" : ["424"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "424", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "411", "Child" : ["426"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "426", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "425"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_pk_from_sig_fu_500.grp_wots_checksum_fu_255", "Parent" : "405",
		"CDFG" : "wots_checksum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "csum_base_w", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "428", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516", "Parent" : "0", "Child" : ["429", "430", "431"],
		"CDFG" : "tweak_constants",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "147158", "EstimateLatencyMax" : "147158",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_fu_132"}],
		"Port" : [
			{"Name" : "pk_seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "in_r"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "sbox"}]}]},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.haraka_rc_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.buf_U", "Parent" : "428"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132", "Parent" : "428", "Child" : ["432", "433", "449"],
		"CDFG" : "haraka_S",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "144435", "EstimateLatencyMax" : "144435",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_159_fu_132"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_141"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_haraka_S_absorb_1_fu_141", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "grp_haraka512_perm_159_fu_132", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "grp_haraka512_perm_159_fu_132", "Port" : "rc"}]}]},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.s_U", "Parent" : "431"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132", "Parent" : "431", "Child" : ["434", "435", "436", "439", "441", "443", "445", "447"],
		"CDFG" : "haraka512_perm_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7144", "EstimateLatencyMax" : "7144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_161"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_176"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_190"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_196"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_208"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_214"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.s_U", "Parent" : "433"},
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.tmp_U", "Parent" : "433"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161", "Parent" : "433", "Child" : ["437", "438"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "99", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161.sbox_U", "Parent" : "436"},
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161.v_U", "Parent" : "436"},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_2_fu_176", "Parent" : "433", "Child" : ["440"],
		"CDFG" : "unpacklo32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "439"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_1_fu_190", "Parent" : "433", "Child" : ["442"],
		"CDFG" : "unpacklo32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "441"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_1_fu_196", "Parent" : "433", "Child" : ["444"],
		"CDFG" : "unpackhi32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_fu_208", "Parent" : "433", "Child" : ["446"],
		"CDFG" : "unpackhi32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_fu_208.tmp_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_fu_214", "Parent" : "433", "Child" : ["448"],
		"CDFG" : "unpacklo32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_fu_214.tmp_U", "Parent" : "447"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka_S_absorb_1_fu_141", "Parent" : "431", "Child" : ["450"],
		"CDFG" : "haraka_S_absorb_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka_S_absorb_1_fu_141.empty_U", "Parent" : "449"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_verify {
		sig {Type I LastRead 7 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 11 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
	fors_pk_from_sig {
		pk {Type O LastRead -1 FirstWrite 5}
		sig {Type I LastRead 7 FirstWrite -1}
		m {Type I LastRead 7 FirstWrite -1}
		fors_addr {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead 6 FirstWrite 4}}
	compute_root {
		root {Type O LastRead -1 FirstWrite 5}
		root_offset {Type I LastRead 0 FirstWrite -1}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		idx_offset {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_3 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_1_1 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_280 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash {
		out_r {Type O LastRead -1 FirstWrite 7}
		in_r {Type I LastRead 4 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead 6 FirstWrite 4}}
	haraka512 {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 5}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_192 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_1_1 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_280 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	hash_message {
		digest {Type O LastRead -1 FirstWrite 16}
		R {Type I LastRead 4 FirstWrite -1}
		pk {Type I LastRead 5 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_inc_absorb {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
		m_offset {Type I LastRead 0 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_1 {
		in_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka_S_inc_absorb_1 {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_1 {
		in_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka_S_inc_squeeze {
		out_r {Type O LastRead -1 FirstWrite 3}
		s_inc {Type IO LastRead 7 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_1 {
		in_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_3 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	wots_pk_from_sig {
		pk {Type IO LastRead 4 FirstWrite 6}
		sig {Type I LastRead 5 FirstWrite -1}
		sig_offset {Type I LastRead 0 FirstWrite -1}
		msg {Type I LastRead 1 FirstWrite -1}
		addr {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead 6 FirstWrite 4}}
	thash_1_2 {
		in_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead 6 FirstWrite 4}}
	haraka512 {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	wots_checksum {
		csum_base_w {Type IO LastRead 1 FirstWrite 4}}
	tweak_constants {
		pk_seed {Type I LastRead 2 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka_S {
		out_r {Type O LastRead -1 FirstWrite 6}
		in_r {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_159 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		a {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32_1 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 4 FirstWrite 5}
		m {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sig { ap_memory {  { sig_address0 mem_address 1 16 }  { sig_ce0 mem_ce 1 1 }  { sig_q0 mem_dout 0 8 } } }
	mlen { ap_none {  { mlen in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 6 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_we0 mem_we 1 1 }  { rc_d0 mem_din 1 8 }  { rc_q0 mem_dout 0 8 } } }
}
