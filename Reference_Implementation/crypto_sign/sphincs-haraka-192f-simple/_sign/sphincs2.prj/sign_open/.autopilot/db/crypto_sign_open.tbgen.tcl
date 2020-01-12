set C_TypeInfoList {{ 
"crypto_sign_open" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"m": [[], {"array": [ {"scalar": "unsigned char"}, [38964]]}] }, {"mlen": [[], {"array": [ {"scalar": "long long unsigned int"}, [1]]}] }, {"sm": [[], {"array": [ {"scalar": "unsigned char"}, [38964]]}] }, {"smlen": [[], {"scalar": "long long unsigned int"}] }, {"pk": [[], {"array": [ {"scalar": "unsigned char"}, [48]]}] }],["0"],""],
 "0": [ "rc", [[], {"array": [ {"scalar": "unsigned char"}, [40,16]]}],""]
}}
set moduleName crypto_sign_open
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
set C_modelName {crypto_sign_open}
set C_modelType { int 32 }
set C_modelArgList {
	{ m int 8 regular {array 38964 { 0 3 } 0 1 }  }
	{ mlen int 64 regular {array 1 { 2 3 } 1 1 }  }
	{ sm int 8 regular {array 38964 { 1 3 } 1 1 }  }
	{ smlen int 64 regular  }
	{ pk int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ rc int 8 regular {array 640 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "m","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 38963,"step" : 1}]}]}]} , 
 	{ "Name" : "mlen", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "mlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sm", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sm","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 38963,"step" : 1}]}]}]} , 
 	{ "Name" : "smlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "smlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 47,"step" : 1}]}]}]} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_address0 sc_out sc_lv 16 signal 0 } 
	{ m_ce0 sc_out sc_logic 1 signal 0 } 
	{ m_we0 sc_out sc_logic 1 signal 0 } 
	{ m_d0 sc_out sc_lv 8 signal 0 } 
	{ mlen_address0 sc_out sc_lv 1 signal 1 } 
	{ mlen_ce0 sc_out sc_logic 1 signal 1 } 
	{ mlen_we0 sc_out sc_logic 1 signal 1 } 
	{ mlen_d0 sc_out sc_lv 64 signal 1 } 
	{ mlen_q0 sc_in sc_lv 64 signal 1 } 
	{ sm_address0 sc_out sc_lv 16 signal 2 } 
	{ sm_ce0 sc_out sc_logic 1 signal 2 } 
	{ sm_q0 sc_in sc_lv 8 signal 2 } 
	{ smlen sc_in sc_lv 64 signal 3 } 
	{ pk_address0 sc_out sc_lv 6 signal 4 } 
	{ pk_ce0 sc_out sc_logic 1 signal 4 } 
	{ pk_q0 sc_in sc_lv 8 signal 4 } 
	{ rc_address0 sc_out sc_lv 10 signal 5 } 
	{ rc_ce0 sc_out sc_logic 1 signal 5 } 
	{ rc_we0 sc_out sc_logic 1 signal 5 } 
	{ rc_d0 sc_out sc_lv 8 signal 5 } 
	{ rc_q0 sc_in sc_lv 8 signal 5 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "we0" }} , 
 	{ "name": "m_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m", "role": "d0" }} , 
 	{ "name": "mlen_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mlen", "role": "address0" }} , 
 	{ "name": "mlen_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlen", "role": "ce0" }} , 
 	{ "name": "mlen_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlen", "role": "we0" }} , 
 	{ "name": "mlen_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "d0" }} , 
 	{ "name": "mlen_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "q0" }} , 
 	{ "name": "sm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sm", "role": "address0" }} , 
 	{ "name": "sm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce0" }} , 
 	{ "name": "sm_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "q0" }} , 
 	{ "name": "smlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "smlen", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "we0" }} , 
 	{ "name": "rc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "d0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "crypto_sign_open",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_verify_fu_174"}],
		"Port" : [
			{"Name" : "m", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlen", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sm", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_verify_fu_174", "Port" : "sig"}]},
			{"Name" : "smlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_verify_fu_174", "Port" : "pk"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_verify_fu_174", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_verify_fu_174", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_verify_fu_174", "Port" : "sbox"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_verify_fu_174", "Port" : "outbuf"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "194", "313", "367", "406", "429"],
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
					{"ID" : "194", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "auth_path"},
					{"ID" : "10", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "sig"},
					{"ID" : "313", "SubInstance" : "grp_hash_message_fu_475", "Port" : "R"},
					{"ID" : "406", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "sig"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_hash_message_fu_475", "Port" : "pk"},
					{"ID" : "429", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "pk_seed"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_thash_3_fu_489", "Port" : "rc"},
					{"ID" : "194", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "rc"},
					{"ID" : "10", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "rc"},
					{"ID" : "313", "SubInstance" : "grp_hash_message_fu_475", "Port" : "rc"},
					{"ID" : "429", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "rc"},
					{"ID" : "406", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_thash_3_fu_489", "Port" : "sbox"},
					{"ID" : "194", "SubInstance" : "grp_compute_root_1_fu_459", "Port" : "sbox"},
					{"ID" : "10", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "sbox"},
					{"ID" : "313", "SubInstance" : "grp_hash_message_fu_475", "Port" : "sbox"},
					{"ID" : "429", "SubInstance" : "grp_tweak_constants_fu_516", "Port" : "sbox"},
					{"ID" : "406", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "sbox"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_fors_pk_from_sig_fu_444", "Port" : "outbuf"},
					{"ID" : "406", "SubInstance" : "grp_wots_pk_from_sig_fu_500", "Port" : "outbuf"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.outbuf_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.mhash_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.wots_pk_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.root_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.leaf_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.wots_addr_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.tree_addr_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.wots_pk_addr_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444", "Parent" : "1", "Child" : ["11", "12", "13", "14", "15", "16", "135", "174"],
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
					{"ID" : "135", "SubInstance" : "grp_thash_2_fu_470", "Port" : "out_r"}]},
			{"Name" : "sig", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_thash_fu_482", "Port" : "in_r"},
					{"ID" : "16", "SubInstance" : "grp_compute_root_fu_453", "Port" : "auth_path"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fors_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_thash_2_fu_470", "Port" : "sbox"},
					{"ID" : "174", "SubInstance" : "grp_thash_fu_482", "Port" : "sbox"},
					{"ID" : "16", "SubInstance" : "grp_compute_root_fu_453", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_thash_2_fu_470", "Port" : "rc"},
					{"ID" : "174", "SubInstance" : "grp_thash_fu_482", "Port" : "rc"},
					{"ID" : "16", "SubInstance" : "grp_compute_root_fu_453", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_thash_fu_482", "Port" : "outbuf"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.indices_assign_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.roots_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.leaf_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.fors_tree_addr_U", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.fors_pk_addr_U", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453", "Parent" : "10", "Child" : ["17", "18", "57", "96"],
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
					{"ID" : "18", "SubInstance" : "grp_thash_1_fu_346", "Port" : "out_r"}]},
			{"Name" : "root_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "addr"},
					{"ID" : "18", "SubInstance" : "grp_thash_1_fu_346", "Port" : "addr"},
					{"ID" : "96", "SubInstance" : "grp_thash_280_fu_371", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "sbox"},
					{"ID" : "18", "SubInstance" : "grp_thash_1_fu_346", "Port" : "sbox"},
					{"ID" : "96", "SubInstance" : "grp_thash_280_fu_371", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_thash_1_1_fu_360", "Port" : "rc"},
					{"ID" : "18", "SubInstance" : "grp_thash_1_fu_346", "Port" : "rc"},
					{"ID" : "96", "SubInstance" : "grp_thash_280_fu_371", "Port" : "rc"}]}]},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.buffer_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346", "Parent" : "16", "Child" : ["19", "20"],
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
					{"ID" : "20", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "out_r"}]},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_haraka_S_3_fu_191", "Port" : "rc"}]}]},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.buf_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191", "Parent" : "18", "Child" : ["21", "22", "23", "41"],
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
					{"ID" : "23", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "23", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "23", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "21", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.s_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.h_assign_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180", "Parent" : "20", "Child" : ["24", "25"],
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
					{"ID" : "25", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "24", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "23", "Child" : ["26", "27", "28", "31", "33", "35", "37", "39"],
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
					{"ID" : "28", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "26", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "25", "Child" : ["29", "30"],
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
	{"ID" : "29", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "25", "Child" : ["32"],
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
	{"ID" : "32", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "25", "Child" : ["34"],
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
	{"ID" : "34", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "25", "Child" : ["36"],
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
	{"ID" : "36", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "25", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "25", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193", "Parent" : "20", "Child" : ["42", "43", "44", "47", "49", "51", "53", "55"],
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
					{"ID" : "44", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "42", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "41", "Child" : ["45", "46"],
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
	{"ID" : "45", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "41", "Child" : ["48"],
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
	{"ID" : "48", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "41", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "41", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "41", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "41", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_fu_346.grp_haraka_S_3_fu_191.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360", "Parent" : "16", "Child" : ["58", "59"],
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
					{"ID" : "59", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.buf_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181", "Parent" : "57", "Child" : ["60", "61", "62", "80"],
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
					{"ID" : "62", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "62", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "62", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.s_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "59", "Child" : ["63", "64"],
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
					{"ID" : "64", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "63", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "62", "Child" : ["65", "66", "67", "70", "72", "74", "76", "78"],
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
					{"ID" : "67", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "65", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "64", "Child" : ["68", "69"],
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
	{"ID" : "68", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "64", "Child" : ["71"],
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
	{"ID" : "71", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "64", "Child" : ["73"],
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
	{"ID" : "73", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "64", "Child" : ["75"],
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
	{"ID" : "75", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "64", "Child" : ["77"],
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
	{"ID" : "77", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "64", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "59", "Child" : ["81", "82", "83", "86", "88", "90", "92", "94"],
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
					{"ID" : "83", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "81", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "80", "Child" : ["84", "85"],
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
	{"ID" : "84", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "80", "Child" : ["87"],
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
	{"ID" : "87", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "80", "Child" : ["89"],
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
	{"ID" : "89", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "80", "Child" : ["91"],
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
	{"ID" : "91", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "80", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "80", "Child" : ["95"],
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
	{"ID" : "95", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_1_1_fu_360.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371", "Parent" : "16", "Child" : ["97", "98"],
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
					{"ID" : "98", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.buf_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181", "Parent" : "96", "Child" : ["99", "100", "101", "119"],
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
					{"ID" : "101", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "101", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "101", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.s_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "98", "Child" : ["102", "103"],
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
					{"ID" : "103", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "102", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "101", "Child" : ["104", "105", "106", "109", "111", "113", "115", "117"],
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
					{"ID" : "106", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "104", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "103", "Child" : ["107", "108"],
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
	{"ID" : "107", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "103", "Child" : ["110"],
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
	{"ID" : "110", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "103", "Child" : ["112"],
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
	{"ID" : "112", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "103", "Child" : ["114"],
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
	{"ID" : "114", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "103", "Child" : ["116"],
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
	{"ID" : "116", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "103", "Child" : ["118"],
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
	{"ID" : "118", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "98", "Child" : ["120", "121", "122", "125", "127", "129", "131", "133"],
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
					{"ID" : "122", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "120", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "119", "Child" : ["123", "124"],
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
	{"ID" : "123", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "119", "Child" : ["126"],
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
	{"ID" : "126", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "119", "Child" : ["128"],
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
	{"ID" : "128", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "119", "Child" : ["130"],
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
	{"ID" : "130", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "119", "Child" : ["132"],
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
	{"ID" : "132", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "119", "Child" : ["134"],
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
	{"ID" : "134", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_compute_root_fu_453.grp_thash_280_fu_371.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470", "Parent" : "10", "Child" : ["136", "137"],
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
					{"ID" : "137", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_haraka_S_1_fu_184", "Port" : "rc"}]}]},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.buf_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184", "Parent" : "135", "Child" : ["138", "139", "140", "158"],
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
					{"ID" : "140", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"},
					{"ID" : "158", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"},
					{"ID" : "158", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"}]}]},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.s_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.h_assign_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178", "Parent" : "137", "Child" : ["141", "142"],
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
					{"ID" : "142", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "141", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "140", "Child" : ["143", "144", "145", "148", "150", "152", "154", "156"],
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
					{"ID" : "145", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "143", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "142", "Child" : ["146", "147"],
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
	{"ID" : "146", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "142", "Child" : ["149"],
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
	{"ID" : "149", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "142", "Child" : ["151"],
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
	{"ID" : "151", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "142", "Child" : ["153"],
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
	{"ID" : "153", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "142", "Child" : ["155"],
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
	{"ID" : "155", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "142", "Child" : ["157"],
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
	{"ID" : "157", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190", "Parent" : "137", "Child" : ["159", "160", "161", "164", "166", "168", "170", "172"],
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
					{"ID" : "161", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "158", "Child" : ["162", "163"],
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
	{"ID" : "162", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "158", "Child" : ["165"],
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
	{"ID" : "165", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "158", "Child" : ["167"],
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
	{"ID" : "167", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "158", "Child" : ["169"],
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
	{"ID" : "169", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "158", "Child" : ["171"],
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
	{"ID" : "171", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "158", "Child" : ["173"],
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
	{"ID" : "173", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_2_fu_470.grp_haraka_S_1_fu_184.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482", "Parent" : "10", "Child" : ["175", "176"],
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
					{"ID" : "176", "SubInstance" : "grp_haraka512_fu_258", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_haraka512_fu_258", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_haraka512_fu_258", "Port" : "out_r"}]}]},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.buf_tmp_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258", "Parent" : "174", "Child" : ["177", "178"],
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
					{"ID" : "178", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.buf_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205", "Parent" : "176", "Child" : ["179", "180", "181", "184", "186", "188", "190", "192"],
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
					{"ID" : "181", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "179", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.s_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "178"},
	{"ID" : "181", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "178", "Child" : ["182", "183"],
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
	{"ID" : "182", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "178", "Child" : ["185"],
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
	{"ID" : "185", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "178", "Child" : ["187"],
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
	{"ID" : "187", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "178", "Child" : ["189"],
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
	{"ID" : "189", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "178", "Child" : ["191"],
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
	{"ID" : "191", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "178", "Child" : ["193"],
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
	{"ID" : "193", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_fors_pk_from_sig_fu_444.grp_thash_fu_482.grp_haraka512_fu_258.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459", "Parent" : "1", "Child" : ["195", "196", "235", "274"],
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
					{"ID" : "196", "SubInstance" : "grp_thash_192_fu_315", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "addr"},
					{"ID" : "274", "SubInstance" : "grp_thash_280_fu_339", "Port" : "addr"},
					{"ID" : "196", "SubInstance" : "grp_thash_192_fu_315", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "sbox"},
					{"ID" : "274", "SubInstance" : "grp_thash_280_fu_339", "Port" : "sbox"},
					{"ID" : "196", "SubInstance" : "grp_thash_192_fu_315", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_thash_1_1_fu_328", "Port" : "rc"},
					{"ID" : "274", "SubInstance" : "grp_thash_280_fu_339", "Port" : "rc"},
					{"ID" : "196", "SubInstance" : "grp_thash_192_fu_315", "Port" : "rc"}]}]},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.buffer_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315", "Parent" : "194", "Child" : ["197", "198"],
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
					{"ID" : "198", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_haraka_S_1_fu_183", "Port" : "rc"}]}]},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.buf_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183", "Parent" : "196", "Child" : ["199", "200", "201", "219"],
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
					{"ID" : "201", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"},
					{"ID" : "219", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"},
					{"ID" : "219", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"}]}]},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.s_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.h_assign_U", "Parent" : "198"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178", "Parent" : "198", "Child" : ["202", "203"],
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
					{"ID" : "203", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "202", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "201", "Child" : ["204", "205", "206", "209", "211", "213", "215", "217"],
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
					{"ID" : "206", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "204", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "203"},
	{"ID" : "206", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "203", "Child" : ["207", "208"],
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
	{"ID" : "207", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "203", "Child" : ["210"],
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
	{"ID" : "210", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "203", "Child" : ["212"],
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
	{"ID" : "212", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "203", "Child" : ["214"],
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
	{"ID" : "214", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "203", "Child" : ["216"],
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
	{"ID" : "216", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "203", "Child" : ["218"],
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
	{"ID" : "218", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190", "Parent" : "198", "Child" : ["220", "221", "222", "225", "227", "229", "231", "233"],
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
					{"ID" : "222", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "220", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "219"},
	{"ID" : "222", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "219", "Child" : ["223", "224"],
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
	{"ID" : "223", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "219", "Child" : ["226"],
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
	{"ID" : "226", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "219", "Child" : ["228"],
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
	{"ID" : "228", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "219", "Child" : ["230"],
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
	{"ID" : "230", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "219", "Child" : ["232"],
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
	{"ID" : "232", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "219", "Child" : ["234"],
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
	{"ID" : "234", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_192_fu_315.grp_haraka_S_1_fu_183.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328", "Parent" : "194", "Child" : ["236", "237"],
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
					{"ID" : "237", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.buf_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181", "Parent" : "235", "Child" : ["238", "239", "240", "258"],
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
					{"ID" : "240", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "240", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "240", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.s_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "237", "Child" : ["241", "242"],
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
					{"ID" : "242", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "241", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "240", "Child" : ["243", "244", "245", "248", "250", "252", "254", "256"],
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
					{"ID" : "245", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "243", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "242", "Child" : ["246", "247"],
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
	{"ID" : "246", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "242", "Child" : ["249"],
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
	{"ID" : "249", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "242", "Child" : ["251"],
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
	{"ID" : "251", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "242", "Child" : ["253"],
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
	{"ID" : "253", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "242", "Child" : ["255"],
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
	{"ID" : "255", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "242", "Child" : ["257"],
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
	{"ID" : "257", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "237", "Child" : ["259", "260", "261", "264", "266", "268", "270", "272"],
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
					{"ID" : "261", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "259", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "258"},
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "258", "Child" : ["262", "263"],
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
	{"ID" : "262", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "258", "Child" : ["265"],
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
	{"ID" : "265", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "258", "Child" : ["267"],
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
	{"ID" : "267", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "258", "Child" : ["269"],
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
	{"ID" : "269", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "258", "Child" : ["271"],
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
	{"ID" : "271", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "258", "Child" : ["273"],
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
	{"ID" : "273", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_1_1_fu_328.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339", "Parent" : "194", "Child" : ["275", "276"],
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
					{"ID" : "276", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]}]},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.buf_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181", "Parent" : "274", "Child" : ["277", "278", "279", "297"],
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
					{"ID" : "279", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "sbox"},
					{"ID" : "279", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_haraka512_perm_159_fu_193", "Port" : "rc"},
					{"ID" : "279", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"}]}]},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.s_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.h_assign_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180", "Parent" : "276", "Child" : ["280", "281"],
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
					{"ID" : "281", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "280", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219", "Parent" : "279", "Child" : ["282", "283", "284", "287", "289", "291", "293", "295"],
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
					{"ID" : "284", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "282", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "281", "Child" : ["285", "286"],
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
	{"ID" : "285", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "281", "Child" : ["288"],
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
	{"ID" : "288", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "281", "Child" : ["290"],
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
	{"ID" : "290", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "281", "Child" : ["292"],
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
	{"ID" : "292", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "281", "Child" : ["294"],
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
	{"ID" : "294", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "281", "Child" : ["296"],
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
	{"ID" : "296", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193", "Parent" : "276", "Child" : ["298", "299", "300", "303", "305", "307", "309", "311"],
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
					{"ID" : "300", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "298", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.s_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.tmp_U", "Parent" : "297"},
	{"ID" : "300", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161", "Parent" : "297", "Child" : ["301", "302"],
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
	{"ID" : "301", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "300"},
	{"ID" : "303", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "297", "Child" : ["304"],
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
	{"ID" : "304", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "297", "Child" : ["306"],
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
	{"ID" : "306", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "297", "Child" : ["308"],
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
	{"ID" : "308", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208", "Parent" : "297", "Child" : ["310"],
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
	{"ID" : "310", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214", "Parent" : "297", "Child" : ["312"],
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
	{"ID" : "312", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_compute_root_1_fu_459.grp_thash_280_fu_339.grp_haraka_S_2_fu_181.grp_haraka512_perm_159_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475", "Parent" : "1", "Child" : ["314", "315", "316", "333", "350"],
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
					{"ID" : "316", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "m"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "sbox"},
					{"ID" : "350", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_278", "Port" : "sbox"},
					{"ID" : "316", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_267", "Port" : "rc"},
					{"ID" : "350", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_278", "Port" : "rc"},
					{"ID" : "316", "SubInstance" : "grp_haraka_S_inc_absorb_fu_251", "Port" : "rc"}]}]},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.buf_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.s_inc_U", "Parent" : "313"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251", "Parent" : "313", "Child" : ["317"],
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
					{"ID" : "317", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_haraka512_perm_1_fu_143", "Port" : "rc"}]}]},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143", "Parent" : "316", "Child" : ["318", "319", "320", "323", "325", "327", "329", "331"],
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
					{"ID" : "320", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "320", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.s_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.tmp_U", "Parent" : "317"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161", "Parent" : "317", "Child" : ["321", "322"],
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
	{"ID" : "321", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161.sbox_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_aesenc_fu_161.v_U", "Parent" : "320"},
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_2_fu_176", "Parent" : "317", "Child" : ["324"],
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
	{"ID" : "324", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "323"},
	{"ID" : "325", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_1_fu_190", "Parent" : "317", "Child" : ["326"],
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
	{"ID" : "326", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_1_fu_196", "Parent" : "317", "Child" : ["328"],
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
	{"ID" : "328", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_fu_208", "Parent" : "317", "Child" : ["330"],
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
	{"ID" : "330", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpackhi32_fu_208.tmp_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_fu_214", "Parent" : "317", "Child" : ["332"],
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
	{"ID" : "332", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_fu_251.grp_haraka512_perm_1_fu_143.grp_unpacklo32_fu_214.tmp_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267", "Parent" : "313", "Child" : ["334"],
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
					{"ID" : "334", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "rc"}]}]},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127", "Parent" : "333", "Child" : ["335", "336", "337", "340", "342", "344", "346", "348"],
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
					{"ID" : "337", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "337", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.s_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.tmp_U", "Parent" : "334"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161", "Parent" : "334", "Child" : ["338", "339"],
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
	{"ID" : "338", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.sbox_U", "Parent" : "337"},
	{"ID" : "339", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.v_U", "Parent" : "337"},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176", "Parent" : "334", "Child" : ["341"],
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
	{"ID" : "341", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "340"},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190", "Parent" : "334", "Child" : ["343"],
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
	{"ID" : "343", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196", "Parent" : "334", "Child" : ["345"],
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
	{"ID" : "345", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "344"},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208", "Parent" : "334", "Child" : ["347"],
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
	{"ID" : "347", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208.tmp_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214", "Parent" : "334", "Child" : ["349"],
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
	{"ID" : "349", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_absorb_1_fu_267.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214.tmp_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278", "Parent" : "313", "Child" : ["351"],
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
					{"ID" : "351", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "rc"}]}]},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146", "Parent" : "350", "Child" : ["352", "353", "354", "357", "359", "361", "363", "365"],
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
					{"ID" : "354", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "354", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.s_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.tmp_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161", "Parent" : "351", "Child" : ["355", "356"],
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
	{"ID" : "355", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.sbox_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.v_U", "Parent" : "354"},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176", "Parent" : "351", "Child" : ["358"],
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
	{"ID" : "358", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190", "Parent" : "351", "Child" : ["360"],
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
	{"ID" : "360", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "359"},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196", "Parent" : "351", "Child" : ["362"],
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
	{"ID" : "362", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208", "Parent" : "351", "Child" : ["364"],
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
	{"ID" : "364", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208.tmp_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214", "Parent" : "351", "Child" : ["366"],
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
	{"ID" : "366", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_hash_message_fu_475.grp_haraka_S_inc_squeeze_fu_278.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214.tmp_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489", "Parent" : "1", "Child" : ["368", "369"],
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
					{"ID" : "369", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "369", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "369", "SubInstance" : "grp_haraka_S_1_fu_180", "Port" : "rc"}]}]},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.buf_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180", "Parent" : "367", "Child" : ["370", "371", "372", "390"],
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
					{"ID" : "372", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"},
					{"ID" : "390", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"},
					{"ID" : "390", "SubInstance" : "grp_haraka512_perm_159_fu_190", "Port" : "rc"}]}]},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.s_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.h_assign_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178", "Parent" : "369", "Child" : ["373", "374"],
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
					{"ID" : "374", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "374", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "374", "SubInstance" : "grp_haraka512_perm_159_fu_219", "Port" : "rc"}]}]},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219", "Parent" : "372", "Child" : ["375", "376", "377", "380", "382", "384", "386", "388"],
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
					{"ID" : "377", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "377", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "375", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.s_U", "Parent" : "374"},
	{"ID" : "376", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.tmp_U", "Parent" : "374"},
	{"ID" : "377", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161", "Parent" : "374", "Child" : ["378", "379"],
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
	{"ID" : "378", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "377"},
	{"ID" : "379", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "377"},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "374", "Child" : ["381"],
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
	{"ID" : "381", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "374", "Child" : ["383"],
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
	{"ID" : "383", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "374", "Child" : ["385"],
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
	{"ID" : "385", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208", "Parent" : "374", "Child" : ["387"],
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
	{"ID" : "387", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214", "Parent" : "374", "Child" : ["389"],
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
	{"ID" : "389", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_159_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190", "Parent" : "369", "Child" : ["391", "392", "393", "396", "398", "400", "402", "404"],
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
					{"ID" : "393", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.s_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.tmp_U", "Parent" : "390"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161", "Parent" : "390", "Child" : ["394", "395"],
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
	{"ID" : "394", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "393"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "390", "Child" : ["397"],
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
	{"ID" : "397", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "390", "Child" : ["399"],
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
	{"ID" : "399", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "390", "Child" : ["401"],
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
	{"ID" : "401", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208", "Parent" : "390", "Child" : ["403"],
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
	{"ID" : "403", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214", "Parent" : "390", "Child" : ["405"],
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
	{"ID" : "405", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_thash_3_fu_489.grp_haraka_S_1_fu_180.grp_haraka512_perm_159_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500", "Parent" : "1", "Child" : ["407", "408", "428"],
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
					{"ID" : "408", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "in_r"}]},
			{"Name" : "sig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "msg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_thash_1_2_fu_240", "Port" : "outbuf"}]}]},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.lengths_assign_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240", "Parent" : "406", "Child" : ["409", "410"],
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
					{"ID" : "410", "SubInstance" : "grp_haraka512_fu_251", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_haraka512_fu_251", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_haraka512_fu_251", "Port" : "out_r"}]}]},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.buf_tmp_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251", "Parent" : "408", "Child" : ["411", "412"],
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
					{"ID" : "412", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "412", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "412", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.buf_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205", "Parent" : "410", "Child" : ["413", "414", "415", "418", "420", "422", "424", "426"],
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
					{"ID" : "415", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "413", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.s_U", "Parent" : "412"},
	{"ID" : "414", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "412"},
	{"ID" : "415", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "412", "Child" : ["416", "417"],
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
	{"ID" : "416", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "415"},
	{"ID" : "417", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "415"},
	{"ID" : "418", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "412", "Child" : ["419"],
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
	{"ID" : "419", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "412", "Child" : ["421"],
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
	{"ID" : "421", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "412", "Child" : ["423"],
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
	{"ID" : "423", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "422"},
	{"ID" : "424", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "412", "Child" : ["425"],
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
	{"ID" : "425", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "424"},
	{"ID" : "426", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "412", "Child" : ["427"],
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
	{"ID" : "427", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_thash_1_2_fu_240.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_wots_pk_from_sig_fu_500.grp_wots_checksum_fu_255", "Parent" : "406",
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
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516", "Parent" : "1", "Child" : ["430", "431", "432"],
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
					{"ID" : "432", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "in_r"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_haraka_S_fu_132", "Port" : "sbox"}]}]},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.haraka_rc_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.buf_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132", "Parent" : "429", "Child" : ["433", "434", "450"],
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
					{"ID" : "450", "SubInstance" : "grp_haraka_S_absorb_1_fu_141", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "434", "SubInstance" : "grp_haraka512_perm_159_fu_132", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "434", "SubInstance" : "grp_haraka512_perm_159_fu_132", "Port" : "rc"}]}]},
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.s_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132", "Parent" : "432", "Child" : ["435", "436", "437", "440", "442", "444", "446", "448"],
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
					{"ID" : "437", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.s_U", "Parent" : "434"},
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.tmp_U", "Parent" : "434"},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161", "Parent" : "434", "Child" : ["438", "439"],
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
	{"ID" : "438", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161.sbox_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_aesenc_fu_161.v_U", "Parent" : "437"},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_2_fu_176", "Parent" : "434", "Child" : ["441"],
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
	{"ID" : "441", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_1_fu_190", "Parent" : "434", "Child" : ["443"],
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
	{"ID" : "443", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_1_fu_196", "Parent" : "434", "Child" : ["445"],
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
	{"ID" : "445", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "444"},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_fu_208", "Parent" : "434", "Child" : ["447"],
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
	{"ID" : "447", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpackhi32_fu_208.tmp_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_fu_214", "Parent" : "434", "Child" : ["449"],
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
	{"ID" : "449", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka512_perm_159_fu_132.grp_unpacklo32_fu_214.tmp_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka_S_absorb_1_fu_141", "Parent" : "432", "Child" : ["451"],
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
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_verify_fu_174.grp_tweak_constants_fu_516.grp_haraka_S_fu_132.grp_haraka_S_absorb_1_fu_141.empty_U", "Parent" : "450"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_open {
		m {Type O LastRead -1 FirstWrite 1}
		mlen {Type IO LastRead 2 FirstWrite 0}
		sm {Type I LastRead 7 FirstWrite -1}
		smlen {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 11 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m { ap_memory {  { m_address0 mem_address 1 16 }  { m_ce0 mem_ce 1 1 }  { m_we0 mem_we 1 1 }  { m_d0 mem_din 1 8 } } }
	mlen { ap_memory {  { mlen_address0 mem_address 1 1 }  { mlen_ce0 mem_ce 1 1 }  { mlen_we0 mem_we 1 1 }  { mlen_d0 mem_din 1 64 }  { mlen_q0 mem_dout 0 64 } } }
	sm { ap_memory {  { sm_address0 mem_address 1 16 }  { sm_ce0 mem_ce 1 1 }  { sm_q0 mem_dout 0 8 } } }
	smlen { ap_none {  { smlen in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 6 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_we0 mem_we 1 1 }  { rc_d0 mem_din 1 8 }  { rc_q0 mem_dout 0 8 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
