set moduleName treehash_wots
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
set C_modelName {treehash_wots}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 96 { 0 3 } 0 1 }  }
	{ auth_path int 8 regular {array 72 { 0 3 } 0 1 }  }
	{ tree_addr int 32 regular {array 8 { 2 1 } 1 1 }  }
	{ rc_sseed int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tree_addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc_sseed", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc_sseed","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 7 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ auth_path_address0 sc_out sc_lv 7 signal 1 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 1 } 
	{ auth_path_we0 sc_out sc_logic 1 signal 1 } 
	{ auth_path_d0 sc_out sc_lv 8 signal 1 } 
	{ tree_addr_address0 sc_out sc_lv 3 signal 2 } 
	{ tree_addr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tree_addr_we0 sc_out sc_logic 1 signal 2 } 
	{ tree_addr_d0 sc_out sc_lv 32 signal 2 } 
	{ tree_addr_q0 sc_in sc_lv 32 signal 2 } 
	{ tree_addr_address1 sc_out sc_lv 3 signal 2 } 
	{ tree_addr_ce1 sc_out sc_logic 1 signal 2 } 
	{ tree_addr_q1 sc_in sc_lv 32 signal 2 } 
	{ rc_sseed_address0 sc_out sc_lv 10 signal 3 } 
	{ rc_sseed_ce0 sc_out sc_logic 1 signal 3 } 
	{ rc_sseed_q0 sc_in sc_lv 8 signal 3 } 
	{ rc_sseed_address1 sc_out sc_lv 10 signal 3 } 
	{ rc_sseed_ce1 sc_out sc_logic 1 signal 3 } 
	{ rc_sseed_q1 sc_in sc_lv 8 signal 3 } 
	{ rc_address0 sc_out sc_lv 10 signal 4 } 
	{ rc_ce0 sc_out sc_logic 1 signal 4 } 
	{ rc_q0 sc_in sc_lv 8 signal 4 } 
	{ rc_address1 sc_out sc_lv 10 signal 4 } 
	{ rc_ce1 sc_out sc_logic 1 signal 4 } 
	{ rc_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "we0" }} , 
 	{ "name": "auth_path_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "d0" }} , 
 	{ "name": "tree_addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tree_addr", "role": "address0" }} , 
 	{ "name": "tree_addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tree_addr", "role": "ce0" }} , 
 	{ "name": "tree_addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tree_addr", "role": "we0" }} , 
 	{ "name": "tree_addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tree_addr", "role": "d0" }} , 
 	{ "name": "tree_addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tree_addr", "role": "q0" }} , 
 	{ "name": "tree_addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tree_addr", "role": "address1" }} , 
 	{ "name": "tree_addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tree_addr", "role": "ce1" }} , 
 	{ "name": "tree_addr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tree_addr", "role": "q1" }} , 
 	{ "name": "rc_sseed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc_sseed", "role": "address0" }} , 
 	{ "name": "rc_sseed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "ce0" }} , 
 	{ "name": "rc_sseed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "q0" }} , 
 	{ "name": "rc_sseed_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc_sseed", "role": "address1" }} , 
 	{ "name": "rc_sseed_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "ce1" }} , 
 	{ "name": "rc_sseed_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "q1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "58", "79", "80"],
		"CDFG" : "treehash_wots",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_gen_leaf_fu_228"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_160_fu_246"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "tree_addr"},
					{"ID" : "58", "SubInstance" : "grp_thash_160_fu_246", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "sbox"},
					{"ID" : "58", "SubInstance" : "grp_thash_160_fu_246", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "rc"},
					{"ID" : "58", "SubInstance" : "grp_thash_160_fu_246", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "outbuf"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stack_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228", "Parent" : "0", "Child" : ["3", "4", "5", "6", "27", "46"],
		"CDFG" : "wots_gen_leaf",
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
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_fu_382"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_fu_395"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_fu_408"}],
		"Port" : [
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_thash_1_fu_382", "Port" : "out_r"}]},
			{"Name" : "leaf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_thash_fu_395", "Port" : "sbox"},
					{"ID" : "46", "SubInstance" : "grp_prf_addr_fu_408", "Port" : "sbox"},
					{"ID" : "6", "SubInstance" : "grp_thash_1_fu_382", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_prf_addr_fu_408", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_thash_fu_395", "Port" : "rc"},
					{"ID" : "6", "SubInstance" : "grp_thash_1_fu_382", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_thash_fu_395", "Port" : "outbuf"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.pk_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.wots_addr_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.wots_pk_addr_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382", "Parent" : "2", "Child" : ["7", "8"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "out_r"}]},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "rc"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.buf_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190", "Parent" : "6", "Child" : ["9", "10", "11", "12"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_329"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_329"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_haraka512_perm_1_fu_329", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_haraka512_perm_1_fu_329", "Port" : "rc"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.empty_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.s_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.d_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329", "Parent" : "8", "Child" : ["13", "14", "15", "17", "19", "21", "23", "25"],
		"CDFG" : "haraka512_perm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4344", "EstimateLatencyMax" : "4344",
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
					{"ID" : "15", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.s_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.tmp_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_aesenc_fu_161", "Parent" : "12", "Child" : ["16"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
	{"ID" : "16", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_aesenc_fu_161.sbox_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_2_fu_176", "Parent" : "12", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_1_fu_190", "Parent" : "12", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_1_fu_196", "Parent" : "12", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_fu_208", "Parent" : "12", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_fu_208.tmp_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_fu_214", "Parent" : "12", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_fu_214.tmp_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395", "Parent" : "2", "Child" : ["28", "29", "30", "31"],
		"CDFG" : "thash",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4711", "EstimateLatencyMax" : "4711",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_fu_840"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_haraka512_perm_fu_840", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_haraka512_perm_fu_840", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.outbuf_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.buf_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.buf_tmp_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840", "Parent" : "27", "Child" : ["32", "33", "34", "36", "38", "40", "42", "44"],
		"CDFG" : "haraka512_perm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4344", "EstimateLatencyMax" : "4344",
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
					{"ID" : "34", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.s_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.tmp_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_aesenc_fu_168", "Parent" : "31", "Child" : ["35"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_aesenc_fu_168.sbox_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpacklo32_2_fu_183", "Parent" : "31", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpacklo32_1_fu_197", "Parent" : "31", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpackhi32_1_fu_203", "Parent" : "31", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpackhi32_fu_215", "Parent" : "31", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpackhi32_fu_215.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpacklo32_fu_221", "Parent" : "31", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_perm_fu_840.grp_unpacklo32_fu_221.tmp_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408", "Parent" : "2", "Child" : ["47", "48", "49"],
		"CDFG" : "prf_addr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1738", "EstimateLatencyMax" : "1738",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka256_sk_fu_163"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.buf_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.outbuf_1_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163", "Parent" : "46", "Child" : ["50", "51", "52", "54", "56"],
		"CDFG" : "haraka256_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1631", "EstimateLatencyMax" : "1631",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_1_fu_198"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_1_fu_198"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_279_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.s_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "49", "Child" : ["53"],
		"CDFG" : "aesenc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_unpacklo32_279_fu_211", "Parent" : "49", "Child" : ["55"],
		"CDFG" : "unpacklo32_279",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_unpacklo32_279_fu_211.tmp_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "49", "Child" : ["57"],
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246", "Parent" : "0", "Child" : ["59", "60"],
		"CDFG" : "thash_160",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_191"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_haraka_S_2_fu_191", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_haraka_S_2_fu_191", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_haraka_S_2_fu_191", "Port" : "rc"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.buf_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191", "Parent" : "58", "Child" : ["61", "62", "63", "64"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_329"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_329"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_haraka512_perm_1_fu_329", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_haraka512_perm_1_fu_329", "Port" : "rc"}]}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.empty_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.s_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.d_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329", "Parent" : "60", "Child" : ["65", "66", "67", "69", "71", "73", "75", "77"],
		"CDFG" : "haraka512_perm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4344", "EstimateLatencyMax" : "4344",
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.s_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.tmp_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_aesenc_fu_161", "Parent" : "64", "Child" : ["68"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_aesenc_fu_161.sbox_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpacklo32_2_fu_176", "Parent" : "64", "Child" : ["70"],
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
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpacklo32_1_fu_190", "Parent" : "64", "Child" : ["72"],
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
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpackhi32_1_fu_196", "Parent" : "64", "Child" : ["74"],
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
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpackhi32_fu_208", "Parent" : "64", "Child" : ["76"],
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
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpackhi32_fu_208.tmp_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpacklo32_fu_214", "Parent" : "64", "Child" : ["78"],
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
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_160_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_329.grp_unpacklo32_fu_214.tmp_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_keypaibs_U114", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_keypaibs_U115", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	treehash_wots {
		root {Type O LastRead -1 FirstWrite 3}
		auth_path {Type O LastRead -1 FirstWrite 4}
		tree_addr {Type IO LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 7 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
	wots_gen_leaf {
		leaf {Type O LastRead -1 FirstWrite 11}
		leaf_offset {Type I LastRead 0 FirstWrite -1}
		addr_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 7 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
	thash_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 11}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka512_perm_1 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 5 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 7 FirstWrite -1}
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
		out_r {Type IO LastRead 4 FirstWrite 25}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
	haraka512_perm {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 5 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 7 FirstWrite -1}
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
	prf_addr {
		out_r {Type O LastRead -1 FirstWrite 4}
		out_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 7 FirstWrite -1}}
	haraka256_sk {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 7 FirstWrite -1}}
	aesenc_1 {
		s {Type IO LastRead 5 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 7 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_279 {
		t {Type O LastRead -1 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	thash_160 {
		in_r {Type IO LastRead 3 FirstWrite 11}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 11}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka512_perm_1 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 5 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 7 FirstWrite -1}
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
		b {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	root { ap_memory {  { root_address0 mem_address 1 7 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 7 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_we0 mem_we 1 1 }  { auth_path_d0 mem_din 1 8 } } }
	tree_addr { ap_memory {  { tree_addr_address0 mem_address 1 3 }  { tree_addr_ce0 mem_ce 1 1 }  { tree_addr_we0 mem_we 1 1 }  { tree_addr_d0 mem_din 1 32 }  { tree_addr_q0 mem_dout 0 32 }  { tree_addr_address1 mem_address 1 3 }  { tree_addr_ce1 mem_ce 1 1 }  { tree_addr_q1 mem_dout 0 32 } } }
	rc_sseed { ap_memory {  { rc_sseed_address0 mem_address 1 10 }  { rc_sseed_ce0 mem_ce 1 1 }  { rc_sseed_q0 mem_dout 0 8 }  { rc_sseed_address1 mem_address 1 10 }  { rc_sseed_ce1 mem_ce 1 1 }  { rc_sseed_q1 mem_dout 0 8 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName treehash_wots
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
set C_modelName {treehash_wots}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 96 { 0 3 } 0 1 }  }
	{ auth_path int 8 regular {array 72 { 0 3 } 0 1 }  }
	{ tree_addr int 32 regular {array 8 { 2 1 } 1 1 }  }
	{ rc_sseed int 8 regular {array 640 { 1 3 } 1 1 } {global 0}  }
	{ rc int 8 regular {array 640 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tree_addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc_sseed", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc_sseed","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 7 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ auth_path_address0 sc_out sc_lv 7 signal 1 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 1 } 
	{ auth_path_we0 sc_out sc_logic 1 signal 1 } 
	{ auth_path_d0 sc_out sc_lv 8 signal 1 } 
	{ tree_addr_address0 sc_out sc_lv 3 signal 2 } 
	{ tree_addr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tree_addr_we0 sc_out sc_logic 1 signal 2 } 
	{ tree_addr_d0 sc_out sc_lv 32 signal 2 } 
	{ tree_addr_q0 sc_in sc_lv 32 signal 2 } 
	{ tree_addr_address1 sc_out sc_lv 3 signal 2 } 
	{ tree_addr_ce1 sc_out sc_logic 1 signal 2 } 
	{ tree_addr_q1 sc_in sc_lv 32 signal 2 } 
	{ rc_sseed_address0 sc_out sc_lv 10 signal 3 } 
	{ rc_sseed_ce0 sc_out sc_logic 1 signal 3 } 
	{ rc_sseed_q0 sc_in sc_lv 8 signal 3 } 
	{ rc_address0 sc_out sc_lv 10 signal 4 } 
	{ rc_ce0 sc_out sc_logic 1 signal 4 } 
	{ rc_q0 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "we0" }} , 
 	{ "name": "auth_path_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "d0" }} , 
 	{ "name": "tree_addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tree_addr", "role": "address0" }} , 
 	{ "name": "tree_addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tree_addr", "role": "ce0" }} , 
 	{ "name": "tree_addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tree_addr", "role": "we0" }} , 
 	{ "name": "tree_addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tree_addr", "role": "d0" }} , 
 	{ "name": "tree_addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tree_addr", "role": "q0" }} , 
 	{ "name": "tree_addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tree_addr", "role": "address1" }} , 
 	{ "name": "tree_addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tree_addr", "role": "ce1" }} , 
 	{ "name": "tree_addr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tree_addr", "role": "q1" }} , 
 	{ "name": "rc_sseed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc_sseed", "role": "address0" }} , 
 	{ "name": "rc_sseed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "ce0" }} , 
 	{ "name": "rc_sseed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "q0" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "79", "118", "119"],
		"CDFG" : "treehash_wots",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_gen_leaf_fu_228"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_168_fu_246"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_thash_168_fu_246", "Port" : "addr"},
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "tree_addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_thash_168_fu_246", "Port" : "sbox"},
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_thash_168_fu_246", "Port" : "rc"},
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wots_gen_leaf_fu_228", "Port" : "outbuf"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stack_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228", "Parent" : "0", "Child" : ["3", "4", "5", "6", "45", "66"],
		"CDFG" : "wots_gen_leaf",
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
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_fu_382"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_fu_395"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_fu_408"}],
		"Port" : [
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_thash_1_fu_382", "Port" : "out_r"}]},
			{"Name" : "leaf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_thash_1_fu_382", "Port" : "sbox"},
					{"ID" : "66", "SubInstance" : "grp_prf_addr_fu_408", "Port" : "sbox"},
					{"ID" : "45", "SubInstance" : "grp_thash_fu_395", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_prf_addr_fu_408", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_thash_1_fu_382", "Port" : "rc"},
					{"ID" : "45", "SubInstance" : "grp_thash_fu_395", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_thash_fu_395", "Port" : "outbuf"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.pk_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.wots_addr_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.wots_pk_addr_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382", "Parent" : "2", "Child" : ["7", "8"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "out_r"}]},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "rc"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.buf_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190", "Parent" : "6", "Child" : ["9", "10", "11", "29"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_188"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_200"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_haraka_S_absorb_fu_188", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_haraka_S_absorb_fu_188", "Port" : "sbox"},
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_1_fu_200", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_haraka_S_absorb_fu_188", "Port" : "rc"},
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_1_fu_200", "Port" : "rc"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.h_assign_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188", "Parent" : "8", "Child" : ["12", "13"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_haraka512_perm_1_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_haraka512_perm_1_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_haraka512_perm_1_fu_219", "Port" : "rc"}]}]},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.empty_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219", "Parent" : "11", "Child" : ["14", "15", "16", "19", "21", "23", "25", "27"],
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
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "14", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.s_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.tmp_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_aesenc_fu_161", "Parent" : "13", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "13", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "13", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "13", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpackhi32_fu_208", "Parent" : "13", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_fu_214", "Parent" : "13", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200", "Parent" : "8", "Child" : ["30", "31", "32", "35", "37", "39", "41", "43"],
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
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.s_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.tmp_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_aesenc_fu_161", "Parent" : "29", "Child" : ["33", "34"],
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
	{"ID" : "33", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_aesenc_fu_161.sbox_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_aesenc_fu_161.v_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpacklo32_2_fu_176", "Parent" : "29", "Child" : ["36"],
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
	{"ID" : "36", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpacklo32_1_fu_190", "Parent" : "29", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpackhi32_1_fu_196", "Parent" : "29", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpackhi32_fu_208", "Parent" : "29", "Child" : ["42"],
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
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpackhi32_fu_208.tmp_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpacklo32_fu_214", "Parent" : "29", "Child" : ["44"],
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
	{"ID" : "44", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_1_fu_382.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_200.grp_unpacklo32_fu_214.tmp_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395", "Parent" : "2", "Child" : ["46", "47", "48"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_251"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka512_fu_251", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka512_fu_251", "Port" : "rc"}]},
			{"Name" : "outbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka512_fu_251", "Port" : "out_r"}]}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.outbuf_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.buf_tmp_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251", "Parent" : "45", "Child" : ["49", "50"],
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
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.buf_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205", "Parent" : "48", "Child" : ["51", "52", "53", "56", "58", "60", "62", "64"],
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
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.s_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "50", "Child" : ["54", "55"],
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
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "50", "Child" : ["57"],
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
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "50", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "50", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "50", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "50", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_thash_fu_395.grp_haraka512_fu_251.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408", "Parent" : "2", "Child" : ["67", "68", "69"],
		"CDFG" : "prf_addr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3138", "EstimateLatencyMax" : "3138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka256_sk_fu_163"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.buf_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.outbuf_1_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163", "Parent" : "66", "Child" : ["70", "71", "72", "75", "77"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_1_fu_198"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aesenc_1_fu_198"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_290_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.s_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "69", "Child" : ["73", "74"],
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
			{"Name" : "rk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_unpacklo32_290_fu_211", "Parent" : "69", "Child" : ["76"],
		"CDFG" : "unpacklo32_290",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_unpacklo32_290_fu_211.tmp_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "69", "Child" : ["78"],
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_wots_gen_leaf_fu_228.grp_prf_addr_fu_408.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246", "Parent" : "0", "Child" : ["80", "81"],
		"CDFG" : "thash_168",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_191"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_haraka_S_2_fu_191", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_haraka_S_2_fu_191", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_haraka_S_2_fu_191", "Port" : "rc"}]}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.buf_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191", "Parent" : "79", "Child" : ["82", "83", "84", "102"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_188"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_200"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_haraka_S_absorb_fu_188", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_haraka_S_absorb_fu_188", "Port" : "sbox"},
					{"ID" : "102", "SubInstance" : "grp_haraka512_perm_1_fu_200", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_haraka_S_absorb_fu_188", "Port" : "rc"},
					{"ID" : "102", "SubInstance" : "grp_haraka512_perm_1_fu_200", "Port" : "rc"}]}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.s_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.h_assign_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188", "Parent" : "81", "Child" : ["85", "86"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_haraka512_perm_1_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_haraka512_perm_1_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_haraka512_perm_1_fu_219", "Port" : "rc"}]}]},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.empty_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219", "Parent" : "84", "Child" : ["87", "88", "89", "92", "94", "96", "98", "100"],
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
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.s_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.tmp_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_aesenc_fu_161", "Parent" : "86", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "86", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "86", "Child" : ["95"],
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
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "86", "Child" : ["97"],
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
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpackhi32_fu_208", "Parent" : "86", "Child" : ["99"],
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
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_fu_214", "Parent" : "86", "Child" : ["101"],
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
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka_S_absorb_fu_188.grp_haraka512_perm_1_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200", "Parent" : "81", "Child" : ["103", "104", "105", "108", "110", "112", "114", "116"],
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
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.s_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.tmp_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_aesenc_fu_161", "Parent" : "102", "Child" : ["106", "107"],
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
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_aesenc_fu_161.sbox_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_aesenc_fu_161.v_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpacklo32_2_fu_176", "Parent" : "102", "Child" : ["109"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpacklo32_1_fu_190", "Parent" : "102", "Child" : ["111"],
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
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpackhi32_1_fu_196", "Parent" : "102", "Child" : ["113"],
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
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpackhi32_fu_208", "Parent" : "102", "Child" : ["115"],
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
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpackhi32_fu_208.tmp_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpacklo32_fu_214", "Parent" : "102", "Child" : ["117"],
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
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_168_fu_246.grp_haraka_S_2_fu_191.grp_haraka512_perm_1_fu_200.grp_unpacklo32_fu_214.tmp_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_keypalbW_U122", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_keypalbW_U123", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	treehash_wots {
		root {Type O LastRead -1 FirstWrite 3}
		auth_path {Type O LastRead -1 FirstWrite 4}
		tree_addr {Type IO LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
	wots_gen_leaf {
		leaf {Type O LastRead -1 FirstWrite 5}
		leaf_offset {Type I LastRead 0 FirstWrite -1}
		addr_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
	thash_1 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
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
	haraka512_perm_1 {
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
	haraka512_perm_1 {
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
		out_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}
		outbuf {Type IO LastRead -1 FirstWrite -1}}
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
	prf_addr {
		out_r {Type O LastRead -1 FirstWrite 4}
		out_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}}
	haraka256_sk {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}}
	aesenc_1 {
		s {Type IO LastRead 1 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 3 FirstWrite -1}
		rk_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	unpacklo32_290 {
		t {Type O LastRead -1 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	thash_168 {
		in_r {Type IO LastRead 3 FirstWrite 5}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 5}
		out_offset {Type I LastRead 0 FirstWrite -1}
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
	haraka512_perm_1 {
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
	haraka512_perm_1 {
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
		b {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	root { ap_memory {  { root_address0 mem_address 1 7 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 7 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_we0 mem_we 1 1 }  { auth_path_d0 mem_din 1 8 } } }
	tree_addr { ap_memory {  { tree_addr_address0 mem_address 1 3 }  { tree_addr_ce0 mem_ce 1 1 }  { tree_addr_we0 mem_we 1 1 }  { tree_addr_d0 mem_din 1 32 }  { tree_addr_q0 mem_dout 0 32 }  { tree_addr_address1 mem_address 1 3 }  { tree_addr_ce1 mem_ce 1 1 }  { tree_addr_q1 mem_dout 0 32 } } }
	rc_sseed { ap_memory {  { rc_sseed_address0 mem_address 1 10 }  { rc_sseed_ce0 mem_ce 1 1 }  { rc_sseed_q0 mem_dout 0 8 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 } } }
}
