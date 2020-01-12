set moduleName fors_sign
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
set C_modelName {fors_sign}
set C_modelType { void 0 }
set C_modelArgList {
	{ sig int 8 regular {array 4800 { 0 3 } 0 1 }  }
	{ pk int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ m int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ sk_seed int 8 unused {array 64 { } 0 1 }  }
	{ pub_seed int 8 unused {array 32 { } 0 1 }  }
	{ fors_addr int 32 regular {array 8 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sig", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sig","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 4799,"step" : 1}]}]}]} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "m", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "m","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 33,"step" : 1}]}]}]} , 
 	{ "Name" : "sk_seed", "interface" : "memory", "bitwidth" : 8, "direction" : "NONE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk_seed","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "pub_seed", "interface" : "memory", "bitwidth" : 8, "direction" : "NONE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pub_seed","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "fors_addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fors_addr","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sig_address0 sc_out sc_lv 13 signal 0 } 
	{ sig_ce0 sc_out sc_logic 1 signal 0 } 
	{ sig_we0 sc_out sc_logic 1 signal 0 } 
	{ sig_d0 sc_out sc_lv 8 signal 0 } 
	{ pk_address0 sc_out sc_lv 4 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_we0 sc_out sc_logic 1 signal 1 } 
	{ pk_d0 sc_out sc_lv 8 signal 1 } 
	{ m_address0 sc_out sc_lv 6 signal 2 } 
	{ m_ce0 sc_out sc_logic 1 signal 2 } 
	{ m_q0 sc_in sc_lv 8 signal 2 } 
	{ sk_seed_address0 sc_out sc_lv 6 signal 3 } 
	{ sk_seed_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_seed_we0 sc_out sc_logic 1 signal 3 } 
	{ sk_seed_d0 sc_out sc_lv 8 signal 3 } 
	{ sk_seed_q0 sc_in sc_lv 8 signal 3 } 
	{ sk_seed_address1 sc_out sc_lv 6 signal 3 } 
	{ sk_seed_ce1 sc_out sc_logic 1 signal 3 } 
	{ sk_seed_we1 sc_out sc_logic 1 signal 3 } 
	{ sk_seed_d1 sc_out sc_lv 8 signal 3 } 
	{ sk_seed_q1 sc_in sc_lv 8 signal 3 } 
	{ pub_seed_address0 sc_out sc_lv 5 signal 4 } 
	{ pub_seed_ce0 sc_out sc_logic 1 signal 4 } 
	{ pub_seed_we0 sc_out sc_logic 1 signal 4 } 
	{ pub_seed_d0 sc_out sc_lv 8 signal 4 } 
	{ pub_seed_q0 sc_in sc_lv 8 signal 4 } 
	{ pub_seed_address1 sc_out sc_lv 5 signal 4 } 
	{ pub_seed_ce1 sc_out sc_logic 1 signal 4 } 
	{ pub_seed_we1 sc_out sc_logic 1 signal 4 } 
	{ pub_seed_d1 sc_out sc_lv 8 signal 4 } 
	{ pub_seed_q1 sc_in sc_lv 8 signal 4 } 
	{ fors_addr_address0 sc_out sc_lv 3 signal 5 } 
	{ fors_addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ fors_addr_q0 sc_in sc_lv 32 signal 5 } 
	{ fors_addr_address1 sc_out sc_lv 3 signal 5 } 
	{ fors_addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ fors_addr_q1 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sig_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sig", "role": "address0" }} , 
 	{ "name": "sig_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig", "role": "ce0" }} , 
 	{ "name": "sig_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig", "role": "we0" }} , 
 	{ "name": "sig_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig", "role": "d0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "we0" }} , 
 	{ "name": "pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "d0" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m", "role": "q0" }} , 
 	{ "name": "sk_seed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk_seed", "role": "address0" }} , 
 	{ "name": "sk_seed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_seed", "role": "ce0" }} , 
 	{ "name": "sk_seed_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_seed", "role": "we0" }} , 
 	{ "name": "sk_seed_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_seed", "role": "d0" }} , 
 	{ "name": "sk_seed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_seed", "role": "q0" }} , 
 	{ "name": "sk_seed_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk_seed", "role": "address1" }} , 
 	{ "name": "sk_seed_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_seed", "role": "ce1" }} , 
 	{ "name": "sk_seed_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_seed", "role": "we1" }} , 
 	{ "name": "sk_seed_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_seed", "role": "d1" }} , 
 	{ "name": "sk_seed_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_seed", "role": "q1" }} , 
 	{ "name": "pub_seed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pub_seed", "role": "address0" }} , 
 	{ "name": "pub_seed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pub_seed", "role": "ce0" }} , 
 	{ "name": "pub_seed_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pub_seed", "role": "we0" }} , 
 	{ "name": "pub_seed_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pub_seed", "role": "d0" }} , 
 	{ "name": "pub_seed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pub_seed", "role": "q0" }} , 
 	{ "name": "pub_seed_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pub_seed", "role": "address1" }} , 
 	{ "name": "pub_seed_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pub_seed", "role": "ce1" }} , 
 	{ "name": "pub_seed_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pub_seed", "role": "we1" }} , 
 	{ "name": "pub_seed_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pub_seed", "role": "d1" }} , 
 	{ "name": "pub_seed_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pub_seed", "role": "q1" }} , 
 	{ "name": "fors_addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fors_addr", "role": "address0" }} , 
 	{ "name": "fors_addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fors_addr", "role": "ce0" }} , 
 	{ "name": "fors_addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fors_addr", "role": "q0" }} , 
 	{ "name": "fors_addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fors_addr", "role": "address1" }} , 
 	{ "name": "fors_addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fors_addr", "role": "ce1" }} , 
 	{ "name": "fors_addr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fors_addr", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "82", "121"],
		"CDFG" : "fors_sign",
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
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_treehash_fors_fu_449"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_fu_463"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_fu_473"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_treehash_fors_fu_449", "Port" : "auth_path"},
					{"ID" : "121", "SubInstance" : "grp_prf_addr_fu_473", "Port" : "out_r"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_thash_1_fu_463", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk_seed", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "pub_seed", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "fors_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_treehash_fors_fu_449", "Port" : "sbox"},
					{"ID" : "82", "SubInstance" : "grp_thash_1_fu_463", "Port" : "sbox"},
					{"ID" : "121", "SubInstance" : "grp_prf_addr_fu_473", "Port" : "sbox"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.indices_assign_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.roots_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fors_tree_addr_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fors_pk_addr_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449", "Parent" : "0", "Child" : ["6", "7", "8", "9", "48", "69"],
		"CDFG" : "treehash_fors",
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_138_fu_432"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_2_fu_442"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_1_fu_451"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "root_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_thash_138_fu_432", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_thash_2_fu_442", "Port" : "sbox"},
					{"ID" : "9", "SubInstance" : "grp_thash_138_fu_432", "Port" : "sbox"},
					{"ID" : "69", "SubInstance" : "grp_prf_addr_1_fu_451", "Port" : "sbox"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.fors_leaf_addr_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.stack_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.heights_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432", "Parent" : "5", "Child" : ["10", "11"],
		"CDFG" : "thash_138",
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
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_153"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_haraka_S_1_fu_153", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_haraka_S_1_fu_153", "Port" : "sbox"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.buf_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153", "Parent" : "9", "Child" : ["12", "13", "14", "32"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_189"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"},
					{"ID" : "32", "SubInstance" : "grp_haraka512_perm_1_fu_189", "Port" : "sbox"}]}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.s_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.h_assign_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178", "Parent" : "11", "Child" : ["15", "16"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_217"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_haraka512_perm_1_fu_217", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_haraka512_perm_1_fu_217", "Port" : "sbox"}]}]},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217", "Parent" : "14", "Child" : ["17", "18", "19", "22", "24", "26", "28", "30"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_162"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_162"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_176"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_194"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_200"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_aesenc_fu_150", "Port" : "sbox"}]}]},
	{"ID" : "17", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.s_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.tmp_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_aesenc_fu_150", "Parent" : "16", "Child" : ["20", "21"],
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
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_aesenc_fu_150.sbox_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_aesenc_fu_150.v_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpacklo32_2_fu_162", "Parent" : "16", "Child" : ["23"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpacklo32_2_fu_162.tmp_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpacklo32_fu_176", "Parent" : "16", "Child" : ["25"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpacklo32_fu_176.tmp_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpackhi32_1_1_fu_182", "Parent" : "16", "Child" : ["27"],
		"CDFG" : "unpackhi32_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpackhi32_1_1_fu_182.tmp_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpackhi32_fu_194", "Parent" : "16", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpackhi32_fu_194.tmp_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpacklo32_1_fu_200", "Parent" : "16", "Child" : ["31"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_1_fu_217.grp_unpacklo32_1_fu_200.tmp_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189", "Parent" : "11", "Child" : ["33", "34", "35", "38", "40", "42", "44", "46"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_162"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_162"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_176"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_194"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_200"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_aesenc_fu_150", "Port" : "sbox"}]}]},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.s_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.tmp_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_aesenc_fu_150", "Parent" : "32", "Child" : ["36", "37"],
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
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_aesenc_fu_150.sbox_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_aesenc_fu_150.v_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpacklo32_2_fu_162", "Parent" : "32", "Child" : ["39"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpacklo32_2_fu_162.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpacklo32_fu_176", "Parent" : "32", "Child" : ["41"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpacklo32_fu_176.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpackhi32_1_1_fu_182", "Parent" : "32", "Child" : ["43"],
		"CDFG" : "unpackhi32_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpackhi32_1_1_fu_182.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpackhi32_fu_194", "Parent" : "32", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpackhi32_fu_194.tmp_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpacklo32_1_fu_200", "Parent" : "32", "Child" : ["47"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_138_fu_432.grp_haraka_S_1_fu_153.grp_haraka512_perm_1_fu_189.grp_unpacklo32_1_fu_200.tmp_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442", "Parent" : "5", "Child" : ["49", "50", "51"],
		"CDFG" : "thash_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7531", "EstimateLatencyMax" : "7531",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_222"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_haraka512_fu_222", "Port" : "sbox"}]}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.outbuf_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.buf_tmp_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222", "Parent" : "48", "Child" : ["52", "53"],
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_fu_191"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_haraka512_perm_fu_191", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_haraka512_perm_fu_191", "Port" : "sbox"}]}]},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.buf_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191", "Parent" : "51", "Child" : ["54", "55", "56", "59", "61", "63", "65", "67"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_157"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_157"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_157"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_157"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_169"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_169"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_183"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_189"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_189"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_189"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_201"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_207"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_aesenc_fu_157", "Port" : "sbox"}]}]},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.s_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.tmp_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_aesenc_fu_157", "Parent" : "53", "Child" : ["57", "58"],
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
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_aesenc_fu_157.sbox_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_aesenc_fu_157.v_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpacklo32_2_fu_169", "Parent" : "53", "Child" : ["60"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpacklo32_2_fu_169.tmp_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpacklo32_fu_183", "Parent" : "53", "Child" : ["62"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpacklo32_fu_183.tmp_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpackhi32_1_1_fu_189", "Parent" : "53", "Child" : ["64"],
		"CDFG" : "unpackhi32_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpackhi32_1_1_fu_189.tmp_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpackhi32_fu_201", "Parent" : "53", "Child" : ["66"],
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
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpackhi32_fu_201.tmp_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpacklo32_1_fu_207", "Parent" : "53", "Child" : ["68"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_thash_2_fu_442.grp_haraka512_fu_222.grp_haraka512_perm_fu_191.grp_unpacklo32_1_fu_207.tmp_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451", "Parent" : "5", "Child" : ["70", "71", "72"],
		"CDFG" : "prf_addr_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3122", "EstimateLatencyMax" : "3122",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka256_sk_fu_161"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_haraka256_sk_fu_161", "Port" : "sbox"}]}]},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.buf_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.outbuf_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161", "Parent" : "69", "Child" : ["73", "74", "75", "78", "80"],
		"CDFG" : "haraka256_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3031", "EstimateLatencyMax" : "3031",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_1_fu_191"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_1_fu_191"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_162_fu_201"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_207"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_aesenc_1_fu_191", "Port" : "sbox"}]}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.s_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.tmp_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.grp_aesenc_1_fu_191", "Parent" : "72", "Child" : ["76", "77"],
		"CDFG" : "aesenc_1",
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
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.grp_aesenc_1_fu_191.sbox_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.grp_aesenc_1_fu_191.v_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.grp_unpacklo32_162_fu_201", "Parent" : "72", "Child" : ["79"],
		"CDFG" : "unpacklo32_162",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.grp_unpacklo32_162_fu_201.tmp_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.grp_unpackhi32_1_fu_207", "Parent" : "72", "Child" : ["81"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_treehash_fors_fu_449.grp_prf_addr_1_fu_451.grp_haraka256_sk_fu_161.grp_unpackhi32_1_fu_207.tmp_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463", "Parent" : "0", "Child" : ["83", "84"],
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
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_fu_147"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_haraka_S_fu_147", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_haraka_S_fu_147", "Port" : "sbox"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.buf_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147", "Parent" : "82", "Child" : ["85", "86", "87", "105"],
		"CDFG" : "haraka_S",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_168"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_179"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_haraka_S_absorb_fu_168", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_haraka_S_absorb_fu_168", "Port" : "sbox"},
					{"ID" : "105", "SubInstance" : "grp_haraka512_perm_1_fu_179", "Port" : "sbox"}]}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.s_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.h_assign_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168", "Parent" : "84", "Child" : ["88", "89"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_217"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_haraka512_perm_1_fu_217", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_haraka512_perm_1_fu_217", "Port" : "sbox"}]}]},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.empty_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217", "Parent" : "87", "Child" : ["90", "91", "92", "95", "97", "99", "101", "103"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_162"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_162"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_176"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_194"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_200"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_aesenc_fu_150", "Port" : "sbox"}]}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.s_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.tmp_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_aesenc_fu_150", "Parent" : "89", "Child" : ["93", "94"],
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
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_aesenc_fu_150.sbox_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_aesenc_fu_150.v_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpacklo32_2_fu_162", "Parent" : "89", "Child" : ["96"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpacklo32_2_fu_162.tmp_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpacklo32_fu_176", "Parent" : "89", "Child" : ["98"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpacklo32_fu_176.tmp_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpackhi32_1_1_fu_182", "Parent" : "89", "Child" : ["100"],
		"CDFG" : "unpackhi32_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpackhi32_1_1_fu_182.tmp_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpackhi32_fu_194", "Parent" : "89", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpackhi32_fu_194.tmp_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpacklo32_1_fu_200", "Parent" : "89", "Child" : ["104"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka_S_absorb_fu_168.grp_haraka512_perm_1_fu_217.grp_unpacklo32_1_fu_200.tmp_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179", "Parent" : "84", "Child" : ["106", "107", "108", "111", "113", "115", "117", "119"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_fu_150"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_162"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2_fu_162"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_fu_176"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_182"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_fu_194"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_1_fu_200"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_aesenc_fu_150", "Port" : "sbox"}]}]},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.s_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.tmp_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_aesenc_fu_150", "Parent" : "105", "Child" : ["109", "110"],
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
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_aesenc_fu_150.sbox_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_aesenc_fu_150.v_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpacklo32_2_fu_162", "Parent" : "105", "Child" : ["112"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpacklo32_2_fu_162.tmp_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpacklo32_fu_176", "Parent" : "105", "Child" : ["114"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpacklo32_fu_176.tmp_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpackhi32_1_1_fu_182", "Parent" : "105", "Child" : ["116"],
		"CDFG" : "unpackhi32_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpackhi32_1_1_fu_182.tmp_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpackhi32_fu_194", "Parent" : "105", "Child" : ["118"],
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
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpackhi32_fu_194.tmp_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpacklo32_1_fu_200", "Parent" : "105", "Child" : ["120"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_fu_463.grp_haraka_S_fu_147.grp_haraka512_perm_1_fu_179.grp_unpacklo32_1_fu_200.tmp_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473", "Parent" : "0", "Child" : ["122", "123", "124"],
		"CDFG" : "prf_addr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3122", "EstimateLatencyMax" : "3122",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka256_sk_fu_161"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_haraka256_sk_fu_161", "Port" : "sbox"}]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.buf_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.outbuf_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161", "Parent" : "121", "Child" : ["125", "126", "127", "130", "132"],
		"CDFG" : "haraka256_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3031", "EstimateLatencyMax" : "3031",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_1_fu_191"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_1_fu_191"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_162_fu_201"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_fu_207"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_aesenc_1_fu_191", "Port" : "sbox"}]}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.s_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.tmp_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.grp_aesenc_1_fu_191", "Parent" : "124", "Child" : ["128", "129"],
		"CDFG" : "aesenc_1",
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
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.grp_aesenc_1_fu_191.sbox_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.grp_aesenc_1_fu_191.v_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.grp_unpacklo32_162_fu_201", "Parent" : "124", "Child" : ["131"],
		"CDFG" : "unpacklo32_162",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.grp_unpacklo32_162_fu_201.tmp_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.grp_unpackhi32_1_fu_207", "Parent" : "124", "Child" : ["133"],
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_prf_addr_fu_473.grp_haraka256_sk_fu_161.grp_unpackhi32_1_fu_207.tmp_U", "Parent" : "132"}]}


set ArgLastReadFirstWriteLatency {
	fors_sign {
		sig {Type O LastRead -1 FirstWrite 4}
		pk {Type O LastRead -1 FirstWrite 5}
		m {Type I LastRead 7 FirstWrite -1}
		sk_seed {Type X LastRead -1 FirstWrite -1}
		pub_seed {Type X LastRead -1 FirstWrite -1}
		fors_addr {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	treehash_fors {
		root {Type O LastRead -1 FirstWrite 3}
		root_offset {Type I LastRead 0 FirstWrite -1}
		auth_path {Type O LastRead -1 FirstWrite 12}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		idx_offset {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type IO LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	thash_138 {
		out_r {Type IO LastRead 2 FirstWrite 5}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka512_perm_1 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		t {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		b {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32_1 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_1 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		t {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		b {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32_1 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	thash_2 {
		out_r {Type IO LastRead 3 FirstWrite 6}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka512 {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka512_perm {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		t {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		b {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32_1 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	prf_addr_1 {
		out_r {Type O LastRead -1 FirstWrite 4}
		out_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka256_sk {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aesenc_1 {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_162 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}}
	thash_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 2 FirstWrite -1}
		addr {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka_S {
		out_r {Type O LastRead -1 FirstWrite 5}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka512_perm_1 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		t {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		b {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32_1 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_1 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_2 {
		t {Type IO LastRead 4 FirstWrite 6}
		t_offset {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpacklo32 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		b {Type IO LastRead 4 FirstWrite 6}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	unpackhi32 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpacklo32_1 {
		t {Type IO LastRead 3 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	prf_addr {
		out_r {Type O LastRead -1 FirstWrite 4}
		out_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	haraka256_sk {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aesenc_1 {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_162 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1 {
		t {Type IO LastRead 4 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sig { ap_memory {  { sig_address0 mem_address 1 13 }  { sig_ce0 mem_ce 1 1 }  { sig_we0 mem_we 1 1 }  { sig_d0 mem_din 1 8 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 4 }  { pk_ce0 mem_ce 1 1 }  { pk_we0 mem_we 1 1 }  { pk_d0 mem_din 1 8 } } }
	m { ap_memory {  { m_address0 mem_address 1 6 }  { m_ce0 mem_ce 1 1 }  { m_q0 mem_dout 0 8 } } }
	sk_seed { ap_memory {  { sk_seed_address0 mem_address 1 6 }  { sk_seed_ce0 mem_ce 1 1 }  { sk_seed_we0 mem_we 1 1 }  { sk_seed_d0 mem_din 1 8 }  { sk_seed_q0 mem_dout 0 8 }  { sk_seed_address1 MemPortADDR2 1 6 }  { sk_seed_ce1 MemPortCE2 1 1 }  { sk_seed_we1 MemPortWE2 1 1 }  { sk_seed_d1 MemPortDIN2 1 8 }  { sk_seed_q1 MemPortDOUT2 0 8 } } }
	pub_seed { ap_memory {  { pub_seed_address0 mem_address 1 5 }  { pub_seed_ce0 mem_ce 1 1 }  { pub_seed_we0 mem_we 1 1 }  { pub_seed_d0 mem_din 1 8 }  { pub_seed_q0 mem_dout 0 8 }  { pub_seed_address1 MemPortADDR2 1 5 }  { pub_seed_ce1 MemPortCE2 1 1 }  { pub_seed_we1 MemPortWE2 1 1 }  { pub_seed_d1 MemPortDIN2 1 8 }  { pub_seed_q1 MemPortDOUT2 0 8 } } }
	fors_addr { ap_memory {  { fors_addr_address0 mem_address 1 3 }  { fors_addr_ce0 mem_ce 1 1 }  { fors_addr_q0 mem_dout 0 32 }  { fors_addr_address1 MemPortADDR2 1 3 }  { fors_addr_ce1 MemPortCE2 1 1 }  { fors_addr_q1 MemPortDOUT2 0 32 } } }
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
