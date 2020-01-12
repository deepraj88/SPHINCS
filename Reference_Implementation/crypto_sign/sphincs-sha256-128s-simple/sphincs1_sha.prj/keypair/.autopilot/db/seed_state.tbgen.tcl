set moduleName seed_state
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
set C_modelName {seed_state}
set C_modelType { void 0 }
set C_modelArgList {
	{ pub_seed int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ state_seeded int 8 regular {array 40 { 2 2 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pub_seed", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_seeded", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "state_seeded","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pub_seed_address0 sc_out sc_lv 5 signal 0 } 
	{ pub_seed_ce0 sc_out sc_logic 1 signal 0 } 
	{ pub_seed_q0 sc_in sc_lv 8 signal 0 } 
	{ state_seeded_address0 sc_out sc_lv 6 signal 1 } 
	{ state_seeded_ce0 sc_out sc_logic 1 signal 1 } 
	{ state_seeded_we0 sc_out sc_logic 1 signal 1 } 
	{ state_seeded_d0 sc_out sc_lv 8 signal 1 } 
	{ state_seeded_q0 sc_in sc_lv 8 signal 1 } 
	{ state_seeded_address1 sc_out sc_lv 6 signal 1 } 
	{ state_seeded_ce1 sc_out sc_logic 1 signal 1 } 
	{ state_seeded_we1 sc_out sc_logic 1 signal 1 } 
	{ state_seeded_d1 sc_out sc_lv 8 signal 1 } 
	{ state_seeded_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pub_seed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pub_seed", "role": "address0" }} , 
 	{ "name": "pub_seed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pub_seed", "role": "ce0" }} , 
 	{ "name": "pub_seed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pub_seed", "role": "q0" }} , 
 	{ "name": "state_seeded_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "state_seeded", "role": "address0" }} , 
 	{ "name": "state_seeded_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_seeded", "role": "ce0" }} , 
 	{ "name": "state_seeded_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_seeded", "role": "we0" }} , 
 	{ "name": "state_seeded_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_seeded", "role": "d0" }} , 
 	{ "name": "state_seeded_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_seeded", "role": "q0" }} , 
 	{ "name": "state_seeded_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "state_seeded", "role": "address1" }} , 
 	{ "name": "state_seeded_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_seeded", "role": "ce1" }} , 
 	{ "name": "state_seeded_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_seeded", "role": "we1" }} , 
 	{ "name": "state_seeded_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_seeded", "role": "d1" }} , 
 	{ "name": "state_seeded_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_seeded", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "seed_state",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "359", "EstimateLatencyMax" : "359",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_hashblocks_sh_2_fu_264"}],
		"Port" : [
			{"Name" : "pub_seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iv_256", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_seeded", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_crypto_hashblocks_sh_2_fu_264", "Port" : "statebytes"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv_256_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_hashblocks_sh_2_fu_264", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "crypto_hashblocks_sh_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "193", "EstimateLatencyMax" : "193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_1_fu_373"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_1_fu_373"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_1_fu_373"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_1_fu_373"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_1_fu_373"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_1_fu_373"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_1_fu_373"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_1_fu_373"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bigendian_32_4_fu_388"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bigendian_32_fu_411"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bigendian_32_fu_411"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bigendian_32_fu_411"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bigendian_32_fu_411"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bigendian_32_fu_411"},
			{"State" : "ap_ST_fsm_state133", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bigendian_32_fu_411"},
			{"State" : "ap_ST_fsm_state135", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bigendian_32_fu_411"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_store_bigendian_32_fu_411"}],
		"Port" : [
			{"Name" : "statebytes", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_store_bigendian_32_fu_411", "Port" : "x"},
					{"ID" : "4", "SubInstance" : "grp_load_bigendian_32_1_fu_373", "Port" : "x"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_load_bigendian_32_4_fu_388", "Port" : "x"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_hashblocks_sh_2_fu_264.grp_load_bigendian_32_1_fu_373", "Parent" : "3",
		"CDFG" : "load_bigendian_32_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_hashblocks_sh_2_fu_264.grp_load_bigendian_32_4_fu_388", "Parent" : "3",
		"CDFG" : "load_bigendian_32_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_hashblocks_sh_2_fu_264.grp_store_bigendian_32_fu_411", "Parent" : "3",
		"CDFG" : "store_bigendian_32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	seed_state {
		pub_seed {Type I LastRead 1 FirstWrite -1}
		iv_256 {Type I LastRead -1 FirstWrite -1}
		state_seeded {Type IO LastRead 8 FirstWrite -1}}
	crypto_hashblocks_sh_2 {
		statebytes {Type IO LastRead 2 FirstWrite -1}
		in_r {Type I LastRead 2 FirstWrite -1}}
	load_bigendian_32_1 {
		x {Type I LastRead 2 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	load_bigendian_32_4 {
		x {Type I LastRead 2 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	store_bigendian_32 {
		x {Type O LastRead -1 FirstWrite 0}
		x_offset {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "359", "Max" : "359"}
	, {"Name" : "Interval", "Min" : "359", "Max" : "359"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pub_seed { ap_memory {  { pub_seed_address0 mem_address 1 5 }  { pub_seed_ce0 mem_ce 1 1 }  { pub_seed_q0 mem_dout 0 8 } } }
	state_seeded { ap_memory {  { state_seeded_address0 mem_address 1 6 }  { state_seeded_ce0 mem_ce 1 1 }  { state_seeded_we0 mem_we 1 1 }  { state_seeded_d0 mem_din 1 8 }  { state_seeded_q0 mem_dout 0 8 }  { state_seeded_address1 MemPortADDR2 1 6 }  { state_seeded_ce1 MemPortCE2 1 1 }  { state_seeded_we1 MemPortWE2 1 1 }  { state_seeded_d1 MemPortDIN2 1 8 }  { state_seeded_q1 MemPortDOUT2 0 8 } } }
}
