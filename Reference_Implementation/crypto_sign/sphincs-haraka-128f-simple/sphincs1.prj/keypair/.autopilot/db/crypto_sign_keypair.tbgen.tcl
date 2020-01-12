set C_TypeInfoList {{ 
"crypto_sign_keypair" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"pk": [[], {"array": [ {"scalar": "unsigned char"}, [32]]}] }, {"sk": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }],["0","1","2"],""],
 "0": [ "rc_sseed", [[], {"array": [ {"scalar": "unsigned char"}, [40,16]]}],""],
 "1": [ "rc", [[], {"array": [ {"scalar": "unsigned char"}, [40,16]]}],""],
 "2": [ "DRBG_ctx", [[],"3"],""], 
"3": [ "AES256_CTR_DRBG_struct", {"typedef": [[[],"4"],""]}], 
"4": [ "", {"struct": [[],[],[{ "Key": [[],  {"array": [ {"scalar": "unsigned char"}, [32]]}]},{ "V": [[],  {"array": [ {"scalar": "unsigned char"}, [16]]}]},{ "reseed_counter": [[],  {"scalar": "int"}]}],""]}]
}}
set moduleName crypto_sign_keypair
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
set C_modelName {crypto_sign_keypair}
set C_modelType { int 32 }
set C_modelArgList {
	{ pk int 8 regular {array 32 { 2 3 } 1 1 }  }
	{ sk int 8 regular {array 64 { 2 3 } 1 1 }  }
	{ DRBG_ctx_V int 8 regular {array 16 { 2 1 } 1 1 } {global 2}  }
	{ DRBG_ctx_Key int 8 regular {array 32 { 2 1 } 1 1 } {global 2}  }
	{ DRBG_ctx_reseed_counter int 32 regular {pointer 2} {global 2}  }
	{ rc int 8 regular {array 640 { 2 1 } 1 1 } {global 2}  }
	{ rc_sseed int 8 regular {array 640 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "DRBG_ctx_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "DRBG_ctx.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "DRBG_ctx_Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "DRBG_ctx.Key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "DRBG_ctx_reseed_counter", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "DRBG_ctx.reseed_counter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "rc_sseed", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc_sseed","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 52
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_address0 sc_out sc_lv 5 signal 0 } 
	{ pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_d0 sc_out sc_lv 8 signal 0 } 
	{ pk_q0 sc_in sc_lv 8 signal 0 } 
	{ sk_address0 sc_out sc_lv 6 signal 1 } 
	{ sk_ce0 sc_out sc_logic 1 signal 1 } 
	{ sk_we0 sc_out sc_logic 1 signal 1 } 
	{ sk_d0 sc_out sc_lv 8 signal 1 } 
	{ sk_q0 sc_in sc_lv 8 signal 1 } 
	{ DRBG_ctx_V_address0 sc_out sc_lv 4 signal 2 } 
	{ DRBG_ctx_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ DRBG_ctx_V_we0 sc_out sc_logic 1 signal 2 } 
	{ DRBG_ctx_V_d0 sc_out sc_lv 8 signal 2 } 
	{ DRBG_ctx_V_q0 sc_in sc_lv 8 signal 2 } 
	{ DRBG_ctx_V_address1 sc_out sc_lv 4 signal 2 } 
	{ DRBG_ctx_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ DRBG_ctx_V_q1 sc_in sc_lv 8 signal 2 } 
	{ DRBG_ctx_Key_address0 sc_out sc_lv 5 signal 3 } 
	{ DRBG_ctx_Key_ce0 sc_out sc_logic 1 signal 3 } 
	{ DRBG_ctx_Key_we0 sc_out sc_logic 1 signal 3 } 
	{ DRBG_ctx_Key_d0 sc_out sc_lv 8 signal 3 } 
	{ DRBG_ctx_Key_q0 sc_in sc_lv 8 signal 3 } 
	{ DRBG_ctx_Key_address1 sc_out sc_lv 5 signal 3 } 
	{ DRBG_ctx_Key_ce1 sc_out sc_logic 1 signal 3 } 
	{ DRBG_ctx_Key_q1 sc_in sc_lv 8 signal 3 } 
	{ DRBG_ctx_reseed_counter_i sc_in sc_lv 32 signal 4 } 
	{ DRBG_ctx_reseed_counter_o sc_out sc_lv 32 signal 4 } 
	{ DRBG_ctx_reseed_counter_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ rc_address0 sc_out sc_lv 10 signal 5 } 
	{ rc_ce0 sc_out sc_logic 1 signal 5 } 
	{ rc_we0 sc_out sc_logic 1 signal 5 } 
	{ rc_d0 sc_out sc_lv 8 signal 5 } 
	{ rc_q0 sc_in sc_lv 8 signal 5 } 
	{ rc_address1 sc_out sc_lv 10 signal 5 } 
	{ rc_ce1 sc_out sc_logic 1 signal 5 } 
	{ rc_q1 sc_in sc_lv 8 signal 5 } 
	{ rc_sseed_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_sseed_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_sseed_we0 sc_out sc_logic 1 signal 6 } 
	{ rc_sseed_d0 sc_out sc_lv 8 signal 6 } 
	{ rc_sseed_q0 sc_in sc_lv 8 signal 6 } 
	{ rc_sseed_address1 sc_out sc_lv 10 signal 6 } 
	{ rc_sseed_ce1 sc_out sc_logic 1 signal 6 } 
	{ rc_sseed_q1 sc_in sc_lv 8 signal 6 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "we0" }} , 
 	{ "name": "pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "d0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "DRBG_ctx_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DRBG_ctx_V", "role": "address0" }} , 
 	{ "name": "DRBG_ctx_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DRBG_ctx_V", "role": "ce0" }} , 
 	{ "name": "DRBG_ctx_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DRBG_ctx_V", "role": "we0" }} , 
 	{ "name": "DRBG_ctx_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DRBG_ctx_V", "role": "d0" }} , 
 	{ "name": "DRBG_ctx_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DRBG_ctx_V", "role": "q0" }} , 
 	{ "name": "DRBG_ctx_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DRBG_ctx_V", "role": "address1" }} , 
 	{ "name": "DRBG_ctx_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DRBG_ctx_V", "role": "ce1" }} , 
 	{ "name": "DRBG_ctx_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DRBG_ctx_V", "role": "q1" }} , 
 	{ "name": "DRBG_ctx_Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "DRBG_ctx_Key", "role": "address0" }} , 
 	{ "name": "DRBG_ctx_Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DRBG_ctx_Key", "role": "ce0" }} , 
 	{ "name": "DRBG_ctx_Key_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DRBG_ctx_Key", "role": "we0" }} , 
 	{ "name": "DRBG_ctx_Key_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DRBG_ctx_Key", "role": "d0" }} , 
 	{ "name": "DRBG_ctx_Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DRBG_ctx_Key", "role": "q0" }} , 
 	{ "name": "DRBG_ctx_Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "DRBG_ctx_Key", "role": "address1" }} , 
 	{ "name": "DRBG_ctx_Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DRBG_ctx_Key", "role": "ce1" }} , 
 	{ "name": "DRBG_ctx_Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DRBG_ctx_Key", "role": "q1" }} , 
 	{ "name": "DRBG_ctx_reseed_counter_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DRBG_ctx_reseed_counter", "role": "i" }} , 
 	{ "name": "DRBG_ctx_reseed_counter_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DRBG_ctx_reseed_counter", "role": "o" }} , 
 	{ "name": "DRBG_ctx_reseed_counter_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "DRBG_ctx_reseed_counter", "role": "o_ap_vld" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "we0" }} , 
 	{ "name": "rc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "d0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address1" }} , 
 	{ "name": "rc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce1" }} , 
 	{ "name": "rc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q1" }} , 
 	{ "name": "rc_sseed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc_sseed", "role": "address0" }} , 
 	{ "name": "rc_sseed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "ce0" }} , 
 	{ "name": "rc_sseed_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "we0" }} , 
 	{ "name": "rc_sseed_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "d0" }} , 
 	{ "name": "rc_sseed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "q0" }} , 
 	{ "name": "rc_sseed_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc_sseed", "role": "address1" }} , 
 	{ "name": "rc_sseed_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "ce1" }} , 
 	{ "name": "rc_sseed_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "125"],
		"CDFG" : "crypto_sign_keypair",
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
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_seed_key_fu_40"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_randombytes_fu_57"}],
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_crypto_sign_seed_key_fu_40", "Port" : "pk"}]},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_crypto_sign_seed_key_fu_40", "Port" : "sk"}]},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_randombytes_fu_57", "Port" : "DRBG_ctx_V"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_randombytes_fu_57", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_randombytes_fu_57", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_randombytes_fu_57", "Port" : "DRBG_ctx_Key"}]},
			{"Name" : "DRBG_ctx_reseed_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_randombytes_fu_57", "Port" : "DRBG_ctx_reseed_counter"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_crypto_sign_seed_key_fu_40", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_crypto_sign_seed_key_fu_40", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_crypto_sign_seed_key_fu_40", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_crypto_sign_seed_key_fu_40", "Port" : "rc_sseed"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.seed_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40", "Parent" : "0", "Child" : ["3", "4", "5", "86"],
		"CDFG" : "crypto_sign_seed_key",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_treehash_wots_fu_217"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_tweak_constants_fu_231"}],
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_tweak_constants_fu_231", "Port" : "pk_seed"}]},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_treehash_wots_fu_217", "Port" : "root"},
					{"ID" : "86", "SubInstance" : "grp_tweak_constants_fu_231", "Port" : "sk_seed"}]},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_tweak_constants_fu_231", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_treehash_wots_fu_217", "Port" : "rc"},
					{"ID" : "86", "SubInstance" : "grp_tweak_constants_fu_231", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_treehash_wots_fu_217", "Port" : "sbox"},
					{"ID" : "86", "SubInstance" : "grp_tweak_constants_fu_231", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_treehash_wots_fu_217", "Port" : "rc_sseed"},
					{"ID" : "86", "SubInstance" : "grp_tweak_constants_fu_231", "Port" : "rc_sseed"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.auth_path_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.top_tree_addr_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217", "Parent" : "2", "Child" : ["6", "7", "63", "84", "85"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_gen_leaf_fu_222"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_160_fu_238"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_wots_gen_leaf_fu_222", "Port" : "tree_addr"},
					{"ID" : "63", "SubInstance" : "grp_thash_160_fu_238", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_wots_gen_leaf_fu_222", "Port" : "sbox"},
					{"ID" : "63", "SubInstance" : "grp_thash_160_fu_238", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_wots_gen_leaf_fu_222", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_wots_gen_leaf_fu_222", "Port" : "rc"},
					{"ID" : "63", "SubInstance" : "grp_thash_160_fu_238", "Port" : "rc"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.stack_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222", "Parent" : "5", "Child" : ["8", "9", "10", "11", "30", "51"],
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
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_fu_376"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_fu_387"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_fu_400"}],
		"Port" : [
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_thash_1_fu_387", "Port" : "out_r"}]},
			{"Name" : "leaf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_thash_fu_376", "Port" : "sbox"},
					{"ID" : "30", "SubInstance" : "grp_thash_1_fu_387", "Port" : "sbox"},
					{"ID" : "51", "SubInstance" : "grp_prf_addr_fu_400", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_prf_addr_fu_400", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_thash_fu_376", "Port" : "rc"},
					{"ID" : "30", "SubInstance" : "grp_thash_1_fu_387", "Port" : "rc"}]}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.pk_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.wots_addr_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.wots_pk_addr_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376", "Parent" : "7", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "thash",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4101", "EstimateLatencyMax" : "4101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_fu_1671"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_haraka512_perm_fu_1671", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_haraka512_perm_fu_1671", "Port" : "rc"}]}]},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.buf_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.outbuf_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.buf_tmp_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671", "Parent" : "11", "Child" : ["16", "17", "18", "20", "22", "24", "26", "28"],
		"CDFG" : "haraka512_perm",
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
					{"ID" : "18", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "16", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.s_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.tmp_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_aesenc_fu_168", "Parent" : "15", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_aesenc_fu_168.sbox_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpacklo32_2_fu_183", "Parent" : "15", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpacklo32_1_fu_197", "Parent" : "15", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpackhi32_1_fu_203", "Parent" : "15", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpackhi32_fu_215", "Parent" : "15", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpackhi32_fu_215.tmp_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpacklo32_fu_221", "Parent" : "15", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_fu_376.grp_haraka512_perm_fu_1671.grp_unpacklo32_fu_221.tmp_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387", "Parent" : "7", "Child" : ["31", "32"],
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
					{"ID" : "32", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "out_r"}]},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "rc"}]}]},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.buf_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190", "Parent" : "30", "Child" : ["33", "34", "35", "36"],
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
					{"ID" : "36", "SubInstance" : "grp_haraka512_perm_1_fu_329", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_haraka512_perm_1_fu_329", "Port" : "rc"}]}]},
	{"ID" : "33", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.empty_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.s_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.d_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329", "Parent" : "32", "Child" : ["37", "38", "39", "41", "43", "45", "47", "49"],
		"CDFG" : "haraka512_perm_1",
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
					{"ID" : "39", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "37", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.s_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.tmp_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_aesenc_fu_161", "Parent" : "36", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_aesenc_fu_161.sbox_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_2_fu_176", "Parent" : "36", "Child" : ["42"],
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
	{"ID" : "42", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_1_fu_190", "Parent" : "36", "Child" : ["44"],
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
	{"ID" : "44", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_1_fu_196", "Parent" : "36", "Child" : ["46"],
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
	{"ID" : "46", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_fu_208", "Parent" : "36", "Child" : ["48"],
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
	{"ID" : "48", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_fu_208.tmp_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_fu_214", "Parent" : "36", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_thash_1_fu_387.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_fu_214.tmp_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400", "Parent" : "7", "Child" : ["52", "53", "54"],
		"CDFG" : "prf_addr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1442", "EstimateLatencyMax" : "1442",
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
					{"ID" : "54", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.buf_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.outbuf_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163", "Parent" : "51", "Child" : ["55", "56", "57", "59", "61"],
		"CDFG" : "haraka256_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1351", "EstimateLatencyMax" : "1351",
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
					{"ID" : "57", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163.s_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "54", "Child" : ["58"],
		"CDFG" : "aesenc_1",
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
	{"ID" : "58", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163.grp_unpacklo32_279_fu_211", "Parent" : "54", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163.grp_unpacklo32_279_fu_211.tmp_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "54", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_wots_gen_leaf_fu_222.grp_prf_addr_fu_400.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238", "Parent" : "5", "Child" : ["64", "65"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_190"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_haraka_S_2_fu_190", "Port" : "rc"}]}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.buf_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190", "Parent" : "63", "Child" : ["66", "67", "68", "69"],
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
					{"ID" : "69", "SubInstance" : "grp_haraka512_perm_1_fu_329", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_haraka512_perm_1_fu_329", "Port" : "rc"}]}]},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.empty_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.s_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.d_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329", "Parent" : "65", "Child" : ["70", "71", "72", "74", "76", "78", "80", "82"],
		"CDFG" : "haraka512_perm_1",
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
					{"ID" : "72", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.s_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.tmp_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_aesenc_fu_161", "Parent" : "69", "Child" : ["73"],
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
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_aesenc_fu_161.sbox_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_2_fu_176", "Parent" : "69", "Child" : ["75"],
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
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_1_fu_190", "Parent" : "69", "Child" : ["77"],
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
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_1_fu_196", "Parent" : "69", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_fu_208", "Parent" : "69", "Child" : ["81"],
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
	{"ID" : "81", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpackhi32_fu_208.tmp_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_fu_214", "Parent" : "69", "Child" : ["83"],
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
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.grp_thash_160_fu_238.grp_haraka_S_2_fu_190.grp_haraka512_perm_1_fu_329.grp_unpacklo32_fu_214.tmp_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.crypto_sign_keypaibs_U114", "Parent" : "5"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_treehash_wots_fu_217.crypto_sign_keypaibs_U115", "Parent" : "5"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231", "Parent" : "2", "Child" : ["87", "88", "89", "107"],
		"CDFG" : "tweak_constants",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "158521", "EstimateLatencyMax" : "158521",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_181"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_fu_192"}],
		"Port" : [
			{"Name" : "pk_seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_haraka_S_fu_192", "Port" : "in_r"}]},
			{"Name" : "sk_seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_haraka_S_1_fu_181", "Port" : "in_r"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_haraka_S_1_fu_181", "Port" : "rc"},
					{"ID" : "107", "SubInstance" : "grp_haraka_S_fu_192", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_haraka_S_1_fu_181", "Port" : "sbox"},
					{"ID" : "107", "SubInstance" : "grp_haraka_S_fu_192", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.haraka_rc_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.buf_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181", "Parent" : "86", "Child" : ["90", "91", "92"],
		"CDFG" : "haraka_S_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "77218", "EstimateLatencyMax" : "77218",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_248"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_haraka512_perm_1_fu_248", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_haraka512_perm_1_fu_248", "Port" : "rc"}]}]},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.empty_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.s_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248", "Parent" : "89", "Child" : ["93", "94", "95", "97", "99", "101", "103", "105"],
		"CDFG" : "haraka512_perm_1",
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
					{"ID" : "95", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.s_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.tmp_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_aesenc_fu_161", "Parent" : "92", "Child" : ["96"],
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
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_aesenc_fu_161.sbox_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpacklo32_2_fu_176", "Parent" : "92", "Child" : ["98"],
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
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpacklo32_1_fu_190", "Parent" : "92", "Child" : ["100"],
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
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpackhi32_1_fu_196", "Parent" : "92", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpackhi32_fu_208", "Parent" : "92", "Child" : ["104"],
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
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpackhi32_fu_208.tmp_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpacklo32_fu_214", "Parent" : "92", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_1_fu_181.grp_haraka512_perm_1_fu_248.grp_unpacklo32_fu_214.tmp_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192", "Parent" : "86", "Child" : ["108", "109", "110"],
		"CDFG" : "haraka_S",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "77218", "EstimateLatencyMax" : "77218",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_248"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_haraka512_perm_1_fu_248", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_haraka512_perm_1_fu_248", "Port" : "rc"}]}]},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.empty_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.s_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248", "Parent" : "107", "Child" : ["111", "112", "113", "115", "117", "119", "121", "123"],
		"CDFG" : "haraka512_perm_1",
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
					{"ID" : "113", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.s_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.tmp_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_aesenc_fu_161", "Parent" : "110", "Child" : ["114"],
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
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_aesenc_fu_161.sbox_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpacklo32_2_fu_176", "Parent" : "110", "Child" : ["116"],
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
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpacklo32_1_fu_190", "Parent" : "110", "Child" : ["118"],
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
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpackhi32_1_fu_196", "Parent" : "110", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpackhi32_fu_208", "Parent" : "110", "Child" : ["122"],
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
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpackhi32_fu_208.tmp_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpacklo32_fu_214", "Parent" : "110", "Child" : ["124"],
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
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_seed_key_fu_40.grp_tweak_constants_fu_231.grp_haraka_S_fu_192.grp_haraka512_perm_1_fu_248.grp_unpacklo32_fu_214.tmp_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57", "Parent" : "0", "Child" : ["126", "127", "139"],
		"CDFG" : "randombytes",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES256_ECB_1_fu_189"}],
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "V"},
					{"ID" : "139", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "ctr"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "sbox_1"},
					{"ID" : "139", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "Rcon"},
					{"ID" : "139", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "DRBG_ctx_Key"},
					{"ID" : "139", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "key"}]},
			{"Name" : "DRBG_ctx_reseed_counter", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.block_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177", "Parent" : "125", "Child" : ["128", "129"],
		"CDFG" : "AES256_CTR_DRBG_Upda",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6726", "EstimateLatencyMax" : "6819",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES256_ECB_fu_171"}],
		"Port" : [
			{"Name" : "V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "ctr"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "key"}]}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.temp_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171", "Parent" : "127", "Child" : ["130", "131", "132", "135"],
		"CDFG" : "AES256_ECB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2203", "EstimateLatencyMax" : "2203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeyExpansion_fu_525"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Cipher_fu_536"}],
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "Key"}]},
			{"Name" : "ctr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buffer_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_Cipher_fu_536", "Port" : "sbox_1"},
					{"ID" : "132", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "Rcon"}]}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.ctx_RoundKey_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.test_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525", "Parent" : "129", "Child" : ["133", "134"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525.sbox_1_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525.Rcon_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536", "Parent" : "129", "Child" : ["136", "137"],
		"CDFG" : "Cipher",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1846", "EstimateLatencyMax" : "1846",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_238"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_238"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_238"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_SubBytes_fu_249"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_SubBytes_fu_249"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "state"},
					{"ID" : "136", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "state"}]},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "RoundKey"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "sbox_1"}]}]},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_AddRoundKey_fu_238", "Parent" : "135",
		"CDFG" : "AddRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "round", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_SubBytes_fu_249", "Parent" : "135", "Child" : ["138"],
		"CDFG" : "SubBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "57",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "138", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_SubBytes_fu_249.sbox_1_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189", "Parent" : "125", "Child" : ["140", "141", "142", "145"],
		"CDFG" : "AES256_ECB_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2203", "EstimateLatencyMax" : "2203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeyExpansion_fu_501"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Cipher_fu_512"}],
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "Key"}]},
			{"Name" : "ctr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "sbox_1"},
					{"ID" : "145", "SubInstance" : "grp_Cipher_fu_512", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "Rcon"}]}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.ctx_RoundKey_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.test_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501", "Parent" : "139", "Child" : ["143", "144"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501.sbox_1_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501.Rcon_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512", "Parent" : "139", "Child" : ["146", "147"],
		"CDFG" : "Cipher",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1846", "EstimateLatencyMax" : "1846",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_238"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_238"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_238"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_SubBytes_fu_249"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_SubBytes_fu_249"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "state"},
					{"ID" : "146", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "state"}]},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "RoundKey"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "sbox_1"}]}]},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_AddRoundKey_fu_238", "Parent" : "145",
		"CDFG" : "AddRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "round", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_SubBytes_fu_249", "Parent" : "145", "Child" : ["148"],
		"CDFG" : "SubBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "57",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_randombytes_fu_57.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_SubBytes_fu_249.sbox_1_U", "Parent" : "147"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_keypair {
		pk {Type IO LastRead 3 FirstWrite -1}
		sk {Type IO LastRead 8 FirstWrite -1}
		DRBG_ctx_V {Type IO LastRead 8 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_reseed_counter {Type IO LastRead 2 FirstWrite 2}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 11 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type IO LastRead 11 FirstWrite -1}}
	crypto_sign_seed_key {
		pk {Type IO LastRead 3 FirstWrite -1}
		sk {Type IO LastRead 8 FirstWrite -1}
		seed {Type I LastRead 3 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 11 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type IO LastRead 11 FirstWrite -1}}
	treehash_wots {
		root {Type O LastRead -1 FirstWrite 3}
		auth_path {Type O LastRead -1 FirstWrite 4}
		tree_addr {Type IO LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 11 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	wots_gen_leaf {
		leaf {Type O LastRead -1 FirstWrite 11}
		leaf_offset {Type I LastRead 0 FirstWrite -1}
		addr_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 11 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	thash {
		out_r {Type IO LastRead 4 FirstWrite 71}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 1 FirstWrite -1}
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
	thash_1 {
		out_r {Type O LastRead -1 FirstWrite 11}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 11}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_1 {
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
	prf_addr {
		out_r {Type O LastRead -1 FirstWrite 4}
		out_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 11 FirstWrite -1}}
	haraka256_sk {
		out_r {Type O LastRead -1 FirstWrite 4}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 11 FirstWrite -1}}
	aesenc_1 {
		s {Type IO LastRead 8 FirstWrite 8}
		s_offset {Type I LastRead 0 FirstWrite -1}
		rk {Type I LastRead 11 FirstWrite -1}
		rk_offset {Type I LastRead 3 FirstWrite -1}
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
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 11}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 4 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_1 {
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
	tweak_constants {
		pk_seed {Type I LastRead 3 FirstWrite -1}
		sk_seed {Type I LastRead 3 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 11 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type O LastRead -1 FirstWrite 5}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 9}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_1 {
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
	haraka_S {
		out_r {Type O LastRead -1 FirstWrite 9}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 11 FirstWrite -1}}
	haraka512_perm_1 {
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
	randombytes {
		x {Type O LastRead -1 FirstWrite 7}
		DRBG_ctx_V {Type IO LastRead 8 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_reseed_counter {Type IO LastRead 2 FirstWrite 2}}
	AES256_CTR_DRBG_Upda {
		V {Type IO LastRead 8 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead 3 FirstWrite -1}}
	AES256_ECB {
		key {Type I LastRead 3 FirstWrite -1}
		ctr {Type I LastRead 8 FirstWrite -1}
		buffer_r {Type O LastRead -1 FirstWrite 12}
		buffer_offset {Type I LastRead 12 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	Cipher {
		state {Type IO LastRead 18 FirstWrite 3}
		RoundKey {Type I LastRead 2 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}}
	AddRoundKey {
		round {Type I LastRead 0 FirstWrite -1}
		state {Type IO LastRead 2 FirstWrite 3}
		RoundKey {Type I LastRead 2 FirstWrite -1}}
	SubBytes {
		state {Type IO LastRead 2 FirstWrite 4}
		sbox_1 {Type I LastRead -1 FirstWrite -1}}
	AES256_ECB_1 {
		key {Type I LastRead 3 FirstWrite -1}
		ctr {Type I LastRead 8 FirstWrite -1}
		buffer_r {Type O LastRead -1 FirstWrite 12}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	Cipher {
		state {Type IO LastRead 18 FirstWrite 3}
		RoundKey {Type I LastRead 2 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}}
	AddRoundKey {
		round {Type I LastRead 0 FirstWrite -1}
		state {Type IO LastRead 2 FirstWrite 3}
		RoundKey {Type I LastRead 2 FirstWrite -1}}
	SubBytes {
		state {Type IO LastRead 2 FirstWrite 4}
		sbox_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk { ap_memory {  { pk_address0 mem_address 1 5 }  { pk_ce0 mem_ce 1 1 }  { pk_we0 mem_we 1 1 }  { pk_d0 mem_din 1 8 }  { pk_q0 mem_dout 0 8 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 6 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_q0 mem_dout 0 8 } } }
	DRBG_ctx_V { ap_memory {  { DRBG_ctx_V_address0 mem_address 1 4 }  { DRBG_ctx_V_ce0 mem_ce 1 1 }  { DRBG_ctx_V_we0 mem_we 1 1 }  { DRBG_ctx_V_d0 mem_din 1 8 }  { DRBG_ctx_V_q0 mem_dout 0 8 }  { DRBG_ctx_V_address1 mem_address 1 4 }  { DRBG_ctx_V_ce1 mem_ce 1 1 }  { DRBG_ctx_V_q1 mem_dout 0 8 } } }
	DRBG_ctx_Key { ap_memory {  { DRBG_ctx_Key_address0 mem_address 1 5 }  { DRBG_ctx_Key_ce0 mem_ce 1 1 }  { DRBG_ctx_Key_we0 mem_we 1 1 }  { DRBG_ctx_Key_d0 mem_din 1 8 }  { DRBG_ctx_Key_q0 mem_dout 0 8 }  { DRBG_ctx_Key_address1 mem_address 1 5 }  { DRBG_ctx_Key_ce1 mem_ce 1 1 }  { DRBG_ctx_Key_q1 mem_dout 0 8 } } }
	DRBG_ctx_reseed_counter { ap_ovld {  { DRBG_ctx_reseed_counter_i in_data 0 32 }  { DRBG_ctx_reseed_counter_o out_data 1 32 }  { DRBG_ctx_reseed_counter_o_ap_vld out_vld 1 1 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_we0 mem_we 1 1 }  { rc_d0 mem_din 1 8 }  { rc_q0 mem_dout 0 8 }  { rc_address1 mem_address 1 10 }  { rc_ce1 mem_ce 1 1 }  { rc_q1 mem_dout 0 8 } } }
	rc_sseed { ap_memory {  { rc_sseed_address0 mem_address 1 10 }  { rc_sseed_ce0 mem_ce 1 1 }  { rc_sseed_we0 mem_we 1 1 }  { rc_sseed_d0 mem_din 1 8 }  { rc_sseed_q0 mem_dout 0 8 }  { rc_sseed_address1 mem_address 1 10 }  { rc_sseed_ce1 mem_ce 1 1 }  { rc_sseed_q1 mem_dout 0 8 } } }
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
