set moduleName thash_160
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
set C_modelName {thash.160}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_r int 8 regular {array 160 { 2 3 } 1 1 }  }
	{ in_offset int 32 regular  }
	{ addr int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ rc int 8 regular {array 640 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "in_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_r_address0 sc_out sc_lv 8 signal 0 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_r_we0 sc_out sc_logic 1 signal 0 } 
	{ in_r_d0 sc_out sc_lv 8 signal 0 } 
	{ in_r_q0 sc_in sc_lv 8 signal 0 } 
	{ in_offset sc_in sc_lv 32 signal 1 } 
	{ addr_address0 sc_out sc_lv 3 signal 2 } 
	{ addr_ce0 sc_out sc_logic 1 signal 2 } 
	{ addr_q0 sc_in sc_lv 32 signal 2 } 
	{ rc_address0 sc_out sc_lv 10 signal 3 } 
	{ rc_ce0 sc_out sc_logic 1 signal 3 } 
	{ rc_q0 sc_in sc_lv 8 signal 3 } 
	{ rc_address1 sc_out sc_lv 10 signal 3 } 
	{ rc_ce1 sc_out sc_logic 1 signal 3 } 
	{ rc_q1 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "we0" }} , 
 	{ "name": "in_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "d0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "in_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_offset", "role": "default" }} , 
 	{ "name": "addr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "addr", "role": "address0" }} , 
 	{ "name": "addr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "ce0" }} , 
 	{ "name": "addr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "q0" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_192"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_haraka_S_2_fu_192", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_haraka_S_2_fu_192", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_haraka_S_2_fu_192", "Port" : "rc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192", "Parent" : "0", "Child" : ["3", "4", "5"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_319"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_319"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_haraka512_perm_1_fu_319", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_haraka512_perm_1_fu_319", "Port" : "rc"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.empty_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.s_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319", "Parent" : "2", "Child" : ["6", "7", "8", "10", "12", "14", "16", "18"],
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
					{"ID" : "8", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.s_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.tmp_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_aesenc_fu_161", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_aesenc_fu_161.sbox_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpacklo32_2_fu_176", "Parent" : "5", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpacklo32_1_fu_190", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpackhi32_1_fu_196", "Parent" : "5", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpackhi32_fu_208", "Parent" : "5", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpackhi32_fu_208.tmp_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpacklo32_fu_214", "Parent" : "5", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_haraka_S_2_fu_192.grp_haraka512_perm_1_fu_319.grp_unpacklo32_fu_214.tmp_U", "Parent" : "18"}]}


set ArgLastReadFirstWriteLatency {
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
	in_r { ap_memory {  { in_r_address0 mem_address 1 8 }  { in_r_ce0 mem_ce 1 1 }  { in_r_we0 mem_we 1 1 }  { in_r_d0 mem_din 1 8 }  { in_r_q0 mem_dout 0 8 } } }
	in_offset { ap_none {  { in_offset in_data 0 32 } } }
	addr { ap_memory {  { addr_address0 mem_address 1 3 }  { addr_ce0 mem_ce 1 1 }  { addr_q0 mem_dout 0 32 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
}
