set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "23", "44"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "13", "15", "17", "19", "21"],
		"CDFG" : "haraka512_perm_151",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14145", "EstimateLatencyMax" : "14145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "23", "Child" : ["26", "27", "28", "29"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13430", "EstimateLatencyMax" : "13430",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "25", "Child" : ["30", "31", "32", "34", "36", "38", "40", "42"],
		"CDFG" : "haraka512_perm_151",
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
					{"ID" : "32", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "29", "Child" : ["33"],
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
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "29", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "29", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "29", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "29", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "29", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["45", "46"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14145", "EstimateLatencyMax" : "14145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "44", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13430", "EstimateLatencyMax" : "13430",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "46", "Child" : ["51", "52", "53", "55", "57", "59", "61", "63"],
		"CDFG" : "haraka512_perm_151",
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
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "50", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "50", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "50", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "50", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "50", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "50", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "63"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka512_perm_151 {
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
	thash_1_1 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka512_perm_151 {
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 7 FirstWrite -1}}
	haraka512_perm_151 {
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "41", "80"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_193_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_281_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_193_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "2", "SubInstance" : "grp_thash_193_fu_316", "Port" : "addr"},
					{"ID" : "80", "SubInstance" : "grp_thash_281_fu_340", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "2", "SubInstance" : "grp_thash_193_fu_316", "Port" : "sbox"},
					{"ID" : "80", "SubInstance" : "grp_thash_281_fu_340", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "2", "SubInstance" : "grp_thash_193_fu_316", "Port" : "rc"},
					{"ID" : "80", "SubInstance" : "grp_thash_281_fu_340", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_193",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "25"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_160_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "sbox"},
					{"ID" : "25", "SubInstance" : "grp_haraka512_perm_160_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_haraka_S_absorb_fu_178", "Port" : "rc"},
					{"ID" : "25", "SubInstance" : "grp_haraka512_perm_160_fu_190", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.h_assign_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178", "Parent" : "4", "Child" : ["8", "9"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_160_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "rc"}]}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.empty_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219", "Parent" : "7", "Child" : ["10", "11", "12", "15", "17", "19", "21", "23"],
		"CDFG" : "haraka512_perm_160",
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
					{"ID" : "12", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.s_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.tmp_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161", "Parent" : "9", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "9", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "9", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "9", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpackhi32_fu_208", "Parent" : "9", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpacklo32_fu_214", "Parent" : "9", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_fu_178.grp_haraka512_perm_160_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190", "Parent" : "4", "Child" : ["26", "27", "28", "31", "33", "35", "37", "39"],
		"CDFG" : "haraka512_perm_160",
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.s_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.tmp_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_aesenc_fu_161", "Parent" : "25", "Child" : ["29", "30"],
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
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_aesenc_fu_161.sbox_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_aesenc_fu_161.v_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpacklo32_2_fu_176", "Parent" : "25", "Child" : ["32"],
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
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpacklo32_1_fu_190", "Parent" : "25", "Child" : ["34"],
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
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpackhi32_1_fu_196", "Parent" : "25", "Child" : ["36"],
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
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpackhi32_fu_208", "Parent" : "25", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpackhi32_fu_208.tmp_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpacklo32_fu_214", "Parent" : "25", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_193_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_160_fu_190.grp_unpacklo32_fu_214.tmp_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["42", "43"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "41", "Child" : ["44", "45", "46", "64"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_160_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"},
					{"ID" : "64", "SubInstance" : "grp_haraka512_perm_160_fu_193", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"},
					{"ID" : "64", "SubInstance" : "grp_haraka512_perm_160_fu_193", "Port" : "rc"}]}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.h_assign_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180", "Parent" : "43", "Child" : ["47", "48"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_160_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219", "Parent" : "46", "Child" : ["49", "50", "51", "54", "56", "58", "60", "62"],
		"CDFG" : "haraka512_perm_160",
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
					{"ID" : "51", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.s_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.tmp_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161", "Parent" : "48", "Child" : ["52", "53"],
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
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "48", "Child" : ["55"],
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
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "48", "Child" : ["57"],
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
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "48", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpackhi32_fu_208", "Parent" : "48", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_fu_214", "Parent" : "48", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193", "Parent" : "43", "Child" : ["65", "66", "67", "70", "72", "74", "76", "78"],
		"CDFG" : "haraka512_perm_160",
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.s_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.tmp_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_aesenc_fu_161", "Parent" : "64", "Child" : ["68", "69"],
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
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "64", "Child" : ["71"],
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
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "64", "Child" : ["73"],
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
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "64", "Child" : ["75"],
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
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpackhi32_fu_208", "Parent" : "64", "Child" : ["77"],
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
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_fu_214", "Parent" : "64", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340", "Parent" : "0", "Child" : ["81", "82"],
		"CDFG" : "thash_281",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.buf_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180", "Parent" : "80", "Child" : ["83", "84", "85", "103"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_160_fu_193"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "sbox"},
					{"ID" : "103", "SubInstance" : "grp_haraka512_perm_160_fu_193", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_haraka_S_absorb_fu_180", "Port" : "rc"},
					{"ID" : "103", "SubInstance" : "grp_haraka512_perm_160_fu_193", "Port" : "rc"}]}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.h_assign_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180", "Parent" : "82", "Child" : ["86", "87"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_160_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_haraka512_perm_160_fu_219", "Port" : "rc"}]}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.empty_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219", "Parent" : "85", "Child" : ["88", "89", "90", "93", "95", "97", "99", "101"],
		"CDFG" : "haraka512_perm_160",
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
					{"ID" : "90", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.s_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.tmp_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161", "Parent" : "87", "Child" : ["91", "92"],
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
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "87", "Child" : ["94"],
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
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "87", "Child" : ["96"],
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
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "87", "Child" : ["98"],
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
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpackhi32_fu_208", "Parent" : "87", "Child" : ["100"],
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
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_fu_214", "Parent" : "87", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka_S_absorb_fu_180.grp_haraka512_perm_160_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193", "Parent" : "82", "Child" : ["104", "105", "106", "109", "111", "113", "115", "117"],
		"CDFG" : "haraka512_perm_160",
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
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.s_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.tmp_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_aesenc_fu_161", "Parent" : "103", "Child" : ["107", "108"],
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
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_aesenc_fu_161.sbox_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_aesenc_fu_161.v_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_2_fu_176", "Parent" : "103", "Child" : ["110"],
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
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_1_fu_190", "Parent" : "103", "Child" : ["112"],
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
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpackhi32_1_fu_196", "Parent" : "103", "Child" : ["114"],
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
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpackhi32_fu_208", "Parent" : "103", "Child" : ["116"],
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
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpackhi32_fu_208.tmp_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_fu_214", "Parent" : "103", "Child" : ["118"],
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
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_281_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_160_fu_193.grp_unpacklo32_fu_214.tmp_U", "Parent" : "117"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 5}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_193 {
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
	haraka512_perm_160 {
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
	haraka512_perm_160 {
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
	haraka512_perm_160 {
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
	haraka512_perm_160 {
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
	thash_281 {
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
	haraka512_perm_160 {
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
	haraka512_perm_160 {
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "24", "46"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "14", "16", "18", "20", "22"],
		"CDFG" : "haraka512_perm_151",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.v_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["25", "26"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22545", "EstimateLatencyMax" : "22545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "24", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21830", "EstimateLatencyMax" : "21830",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "26", "Child" : ["31", "32", "33", "36", "38", "40", "42", "44"],
		"CDFG" : "haraka512_perm_151",
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
					{"ID" : "33", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "30", "Child" : ["34", "35"],
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
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.v_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "30", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "30", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "30", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "30", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "30", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22545", "EstimateLatencyMax" : "22545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "46", "Child" : ["49", "50", "51", "52"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21830", "EstimateLatencyMax" : "21830",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "48", "Child" : ["53", "54", "55", "58", "60", "62", "64", "66"],
		"CDFG" : "haraka512_perm_151",
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
					{"ID" : "55", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "52", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.v_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "52", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "52", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "52", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "52", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "52", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "66"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_151 {
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_151 {
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_151 {
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "24", "46"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "14", "16", "18", "20", "22"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5864", "EstimateLatencyMax" : "5864",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12", "13"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.v_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["25", "26"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18705", "EstimateLatencyMax" : "18705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "24", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17990", "EstimateLatencyMax" : "17990",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "26", "Child" : ["31", "32", "33", "36", "38", "40", "42", "44"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5864", "EstimateLatencyMax" : "5864",
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
					{"ID" : "33", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "30", "Child" : ["34", "35"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
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
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.v_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "30", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "30", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "30", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "30", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "30", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18705", "EstimateLatencyMax" : "18705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "46", "Child" : ["49", "50", "51", "52"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17990", "EstimateLatencyMax" : "17990",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "48", "Child" : ["53", "54", "55", "58", "60", "62", "64", "66"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5864", "EstimateLatencyMax" : "5864",
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
					{"ID" : "55", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "52", "Child" : ["56", "57"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.v_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "52", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "52", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "52", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "52", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "52", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "66"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 2 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 4 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 2 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 4 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 4 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 2 FirstWrite 4}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 4 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "27", "52"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"},
					{"ID" : "27", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "52", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"},
					{"ID" : "27", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "52", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"},
					{"ID" : "27", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "52", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "17", "19", "21", "23", "25"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5504", "EstimateLatencyMax" : "5504",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12", "13", "14", "15", "16"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58", "EstimateLatencyMax" : "58",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.crypto_sign_open_bkb_U1", "Parent" : "11"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.crypto_sign_open_bkb_U2", "Parent" : "11"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.crypto_sign_open_bkb_U3", "Parent" : "11"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.crypto_sign_open_bkb_U4", "Parent" : "11"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17625", "EstimateLatencyMax" : "17625",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "27", "Child" : ["30", "31", "32", "33"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16910", "EstimateLatencyMax" : "16910",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "29", "Child" : ["34", "35", "36", "42", "44", "46", "48", "50"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5504", "EstimateLatencyMax" : "5504",
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
					{"ID" : "36", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "33", "Child" : ["37", "38", "39", "40", "41"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58", "EstimateLatencyMax" : "58",
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.crypto_sign_open_bkb_U1", "Parent" : "36"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.crypto_sign_open_bkb_U2", "Parent" : "36"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.crypto_sign_open_bkb_U3", "Parent" : "36"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.crypto_sign_open_bkb_U4", "Parent" : "36"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "33", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "33", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "33", "Child" : ["47"],
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
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "33", "Child" : ["49"],
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
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "33", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["53", "54"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17625", "EstimateLatencyMax" : "17625",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "52", "Child" : ["55", "56", "57", "58"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16910", "EstimateLatencyMax" : "16910",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "54", "Child" : ["59", "60", "61", "67", "69", "71", "73", "75"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5504", "EstimateLatencyMax" : "5504",
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
					{"ID" : "61", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "58", "Child" : ["62", "63", "64", "65", "66"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58", "EstimateLatencyMax" : "58",
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.crypto_sign_open_bkb_U1", "Parent" : "61"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.crypto_sign_open_bkb_U2", "Parent" : "61"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.crypto_sign_open_bkb_U3", "Parent" : "61"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.crypto_sign_open_bkb_U4", "Parent" : "61"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "58", "Child" : ["68"],
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
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "58", "Child" : ["70"],
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
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "58", "Child" : ["72"],
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
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "58", "Child" : ["74"],
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
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "58", "Child" : ["76"],
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
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "75"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 7 FirstWrite 3}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 5 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 7 FirstWrite 3}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 5 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 7 FirstWrite 3}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 5 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "23", "44"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "13", "15", "17", "19", "21"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4784", "EstimateLatencyMax" : "4784",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15465", "EstimateLatencyMax" : "15465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "23", "Child" : ["26", "27", "28", "29"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14750", "EstimateLatencyMax" : "14750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "25", "Child" : ["30", "31", "32", "34", "36", "38", "40", "42"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4784", "EstimateLatencyMax" : "4784",
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "29", "Child" : ["33"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
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
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "29", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "29", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "29", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "29", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "29", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["45", "46"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15465", "EstimateLatencyMax" : "15465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "44", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14750", "EstimateLatencyMax" : "14750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "46", "Child" : ["51", "52", "53", "55", "57", "59", "61", "63"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4784", "EstimateLatencyMax" : "4784",
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
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "50", "Child" : ["54"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "50", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "50", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "50", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "50", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "50", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "63"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 9 FirstWrite 3}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 6 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 9 FirstWrite 3}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 6 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 9 FirstWrite 3}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 6 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "23", "44"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "13", "15", "17", "19", "21"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12465", "EstimateLatencyMax" : "12465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "23", "Child" : ["26", "27", "28", "29"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11750", "EstimateLatencyMax" : "11750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "25", "Child" : ["30", "31", "32", "34", "36", "38", "40", "42"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "29", "Child" : ["33"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "29", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "29", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "29", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "29", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "29", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["45", "46"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12465", "EstimateLatencyMax" : "12465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "44", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11750", "EstimateLatencyMax" : "11750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "46", "Child" : ["51", "52", "53", "55", "57", "59", "61", "63"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "50", "Child" : ["54"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "50", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "50", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "50", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "50", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "50", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "63"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "23", "44"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "13", "15", "17", "19", "21"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12465", "EstimateLatencyMax" : "12465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "23", "Child" : ["26", "27", "28", "29"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11750", "EstimateLatencyMax" : "11750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "25", "Child" : ["30", "31", "32", "34", "36", "38", "40", "42"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "29", "Child" : ["33"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "29", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "29", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "29", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "29", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "29", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["45", "46"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12465", "EstimateLatencyMax" : "12465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "44", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11750", "EstimateLatencyMax" : "11750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "46", "Child" : ["51", "52", "53", "55", "57", "59", "61", "63"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "50", "Child" : ["54"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "50", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "50", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "50", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "50", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "50", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "63"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "23", "44"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"},
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "13", "15", "17", "19", "21"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12465", "EstimateLatencyMax" : "12465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "23", "Child" : ["26", "27", "28", "29"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11750", "EstimateLatencyMax" : "11750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "25", "Child" : ["30", "31", "32", "34", "36", "38", "40", "42"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "29", "Child" : ["33"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "29", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "29", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "29", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "29", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "29", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["45", "46"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12465", "EstimateLatencyMax" : "12465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "44", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11750", "EstimateLatencyMax" : "11750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "46", "Child" : ["51", "52", "53", "55", "57", "59", "61", "63"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "50", "Child" : ["54"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "50", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "50", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "50", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "50", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "50", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "63"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "23", "44"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"},
					{"ID" : "23", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "44", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "13", "15", "17", "19", "21"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12465", "EstimateLatencyMax" : "12465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "23", "Child" : ["26", "27", "28", "29"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11750", "EstimateLatencyMax" : "11750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "25", "Child" : ["30", "31", "32", "34", "36", "38", "40", "42"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "29", "Child" : ["33"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "29", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "29", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "29", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "29", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "29", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["45", "46"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12465", "EstimateLatencyMax" : "12465",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "44", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11750", "EstimateLatencyMax" : "11750",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "46", "Child" : ["51", "52", "53", "55", "57", "59", "61", "63"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3784", "EstimateLatencyMax" : "3784",
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
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "50", "Child" : ["54"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "50", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "50", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "50", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "50", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "50", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "63"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "24", "46"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "14", "16", "18", "20", "22"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5384", "EstimateLatencyMax" : "5384",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12", "13"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "55",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.v_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["25", "26"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17265", "EstimateLatencyMax" : "17265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "24", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16550", "EstimateLatencyMax" : "16550",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "26", "Child" : ["31", "32", "33", "36", "38", "40", "42", "44"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5384", "EstimateLatencyMax" : "5384",
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
					{"ID" : "33", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "30", "Child" : ["34", "35"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "55",
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
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.v_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "30", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "30", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "30", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "30", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "30", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17265", "EstimateLatencyMax" : "17265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "46", "Child" : ["49", "50", "51", "52"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16550", "EstimateLatencyMax" : "16550",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "48", "Child" : ["53", "54", "55", "58", "60", "62", "64", "66"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5384", "EstimateLatencyMax" : "5384",
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
					{"ID" : "55", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "52", "Child" : ["56", "57"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "55",
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.v_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "52", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "52", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "52", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "52", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "52", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "66"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 6}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 5 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 6}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 5 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 5 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 1 FirstWrite 6}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 5 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 } } }
}
set moduleName compute_root_1
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
set C_modelName {compute_root.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ root int 8 regular {array 16 { 0 3 } 0 1 }  }
	{ leaf int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ leaf_idx int 32 regular  }
	{ auth_path int 8 regular {array 20276 { 1 3 } 1 1 }  }
	{ auth_path_offset int 15 regular  }
	{ addr int 32 regular {array 8 { 2 0 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "root", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "leaf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "leaf_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "auth_path_offset", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_address0 sc_out sc_lv 4 signal 0 } 
	{ root_ce0 sc_out sc_logic 1 signal 0 } 
	{ root_we0 sc_out sc_logic 1 signal 0 } 
	{ root_d0 sc_out sc_lv 8 signal 0 } 
	{ leaf_address0 sc_out sc_lv 4 signal 1 } 
	{ leaf_ce0 sc_out sc_logic 1 signal 1 } 
	{ leaf_q0 sc_in sc_lv 8 signal 1 } 
	{ leaf_idx sc_in sc_lv 32 signal 2 } 
	{ auth_path_address0 sc_out sc_lv 15 signal 3 } 
	{ auth_path_ce0 sc_out sc_logic 1 signal 3 } 
	{ auth_path_q0 sc_in sc_lv 8 signal 3 } 
	{ auth_path_offset sc_in sc_lv 15 signal 4 } 
	{ addr_address0 sc_out sc_lv 3 signal 5 } 
	{ addr_ce0 sc_out sc_logic 1 signal 5 } 
	{ addr_we0 sc_out sc_logic 1 signal 5 } 
	{ addr_d0 sc_out sc_lv 32 signal 5 } 
	{ addr_q0 sc_in sc_lv 32 signal 5 } 
	{ addr_address1 sc_out sc_lv 3 signal 5 } 
	{ addr_ce1 sc_out sc_logic 1 signal 5 } 
	{ addr_we1 sc_out sc_logic 1 signal 5 } 
	{ addr_d1 sc_out sc_lv 32 signal 5 } 
	{ rc_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_q0 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "root", "role": "address0" }} , 
 	{ "name": "root_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "ce0" }} , 
 	{ "name": "root_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "root", "role": "we0" }} , 
 	{ "name": "root_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root", "role": "d0" }} , 
 	{ "name": "leaf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leaf", "role": "address0" }} , 
 	{ "name": "leaf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "leaf", "role": "ce0" }} , 
 	{ "name": "leaf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "leaf", "role": "q0" }} , 
 	{ "name": "leaf_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "leaf_idx", "role": "default" }} , 
 	{ "name": "auth_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path", "role": "address0" }} , 
 	{ "name": "auth_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "auth_path", "role": "ce0" }} , 
 	{ "name": "auth_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "auth_path", "role": "q0" }} , 
 	{ "name": "auth_path_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "auth_path_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we0" }} , 
 	{ "name": "addr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "addr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address1" }} , 
 	{ "name": "addr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce1" }} , 
 	{ "name": "addr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "we1" }} , 
 	{ "name": "addr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "d1" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "24", "46"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_316"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_1_fu_329"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_272_fu_340"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "out_r"}]},
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "auth_path_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "addr"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "addr"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "sbox"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "sbox"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_thash_180_fu_316", "Port" : "rc"},
					{"ID" : "24", "SubInstance" : "grp_thash_1_1_fu_329", "Port" : "rc"},
					{"ID" : "46", "SubInstance" : "grp_thash_272_fu_340", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "thash_180",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.buf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182", "Parent" : "2", "Child" : ["5", "6", "7", "8"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_haraka512_perm_151_fu_319", "Port" : "rc"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.empty_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.d_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319", "Parent" : "4", "Child" : ["9", "10", "11", "14", "16", "18", "20", "22"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5064", "EstimateLatencyMax" : "5064",
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
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.tmp_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161", "Parent" : "8", "Child" : ["12", "13"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_aesenc_fu_161.v_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "8", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "8", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "8", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208", "Parent" : "8", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214", "Parent" : "8", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_180_fu_316.grp_haraka_S_1_fu_182.grp_haraka512_perm_151_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329", "Parent" : "0", "Child" : ["25", "26"],
		"CDFG" : "thash_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16305", "EstimateLatencyMax" : "16305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.buf_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180", "Parent" : "24", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15590", "EstimateLatencyMax" : "15590",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.empty_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.s_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.d_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "26", "Child" : ["31", "32", "33", "36", "38", "40", "42", "44"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5064", "EstimateLatencyMax" : "5064",
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
					{"ID" : "33", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "30", "Child" : ["34", "35"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
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
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.v_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "30", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "30", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "30", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "30", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "30", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_1_1_fu_329.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "thash_272",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16305", "EstimateLatencyMax" : "16305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_180"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "out_r"}]},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_haraka_S_2_fu_180", "Port" : "rc"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.buf_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180", "Parent" : "46", "Child" : ["49", "50", "51", "52"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15590", "EstimateLatencyMax" : "15590",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_151_fu_296"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_haraka512_perm_151_fu_296", "Port" : "rc"}]}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.empty_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.s_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.d_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296", "Parent" : "48", "Child" : ["53", "54", "55", "58", "60", "62", "64", "66"],
		"CDFG" : "haraka512_perm_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5064", "EstimateLatencyMax" : "5064",
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
					{"ID" : "55", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.s_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.tmp_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161", "Parent" : "52", "Child" : ["56", "57"],
		"CDFG" : "aesenc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.sbox_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_aesenc_fu_161.v_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176", "Parent" : "52", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190", "Parent" : "52", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196", "Parent" : "52", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208", "Parent" : "52", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpackhi32_fu_208.tmp_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214", "Parent" : "52", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_thash_272_fu_340.grp_haraka_S_2_fu_180.grp_haraka512_perm_151_fu_296.grp_unpacklo32_fu_214.tmp_U", "Parent" : "66"}]}


set ArgLastReadFirstWriteLatency {
	compute_root_1 {
		root {Type O LastRead -1 FirstWrite 11}
		leaf {Type I LastRead 2 FirstWrite -1}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		auth_path {Type I LastRead 7 FirstWrite -1}
		auth_path_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type IO LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	thash_180 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 2 FirstWrite 6}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 6 FirstWrite -1}
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
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 2 FirstWrite 6}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 6 FirstWrite -1}
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
	thash_272 {
		in_r {Type IO LastRead 3 FirstWrite 9}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 9}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	haraka512_perm_151 {
		out_r {Type IO LastRead 1 FirstWrite 4}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 6 FirstWrite -1}}
	aesenc {
		s {Type IO LastRead 2 FirstWrite 6}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 6 FirstWrite -1}
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
	root { ap_memory {  { root_address0 mem_address 1 4 }  { root_ce0 mem_ce 1 1 }  { root_we0 mem_we 1 1 }  { root_d0 mem_din 1 8 } } }
	leaf { ap_memory {  { leaf_address0 mem_address 1 4 }  { leaf_ce0 mem_ce 1 1 }  { leaf_q0 mem_dout 0 8 } } }
	leaf_idx { ap_none {  { leaf_idx in_data 0 32 } } }
	auth_path { ap_memory {  { auth_path_address0 mem_address 1 15 }  { auth_path_ce0 mem_ce 1 1 }  { auth_path_q0 mem_dout 0 8 } } }
	auth_path_offset { ap_none {  { auth_path_offset in_data 0 15 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_we0 mem_we 1 1 }  { addr_d0 mem_din 1 32 }  { addr_q0 mem_dout 0 32 }  { addr_address1 mem_address 1 3 }  { addr_ce1 mem_ce 1 1 }  { addr_we1 mem_we 1 1 }  { addr_d1 mem_din 1 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 } } }
}
