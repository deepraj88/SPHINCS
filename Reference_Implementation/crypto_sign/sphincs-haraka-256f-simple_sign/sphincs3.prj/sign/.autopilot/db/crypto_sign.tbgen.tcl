set C_TypeInfoList {{ 
"crypto_sign" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"sm": [[], {"array": [ {"scalar": "unsigned char"}, [52516]]}] }, {"smlen": [[], {"array": [ {"scalar": "long long unsigned int"}, [1]]}] }, {"m": [[], {"array": [ {"scalar": "unsigned char"}, [3300]]}] }, {"mlen": [[], {"scalar": "long long unsigned int"}] }, {"sk": [[], {"array": [ {"scalar": "unsigned char"}, [128]]}] }],["0","1","2"],""],
 "0": [ "rc_sseed", [[], {"array": [ {"scalar": "unsigned char"}, [40,16]]}],""],
 "1": [ "rc", [[], {"array": [ {"scalar": "unsigned char"}, [40,16]]}],""],
 "2": [ "DRBG_ctx", [[],"3"],""], 
"3": [ "AES256_CTR_DRBG_struct", {"typedef": [[[],"4"],""]}], 
"4": [ "", {"struct": [[],[],[{ "Key": [[],  {"array": [ {"scalar": "unsigned char"}, [32]]}]},{ "V": [[],  {"array": [ {"scalar": "unsigned char"}, [16]]}]},{ "reseed_counter": [[],  {"scalar": "int"}]}],""]}]
}}
set moduleName crypto_sign
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
set C_modelName {crypto_sign}
set C_modelType { int 32 }
set C_modelArgList {
	{ sm int 8 regular {array 52516 { 2 3 } 1 1 }  }
	{ smlen int 64 regular {array 1 { 0 3 } 0 1 }  }
	{ m int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ mlen int 64 regular  }
	{ sk int 8 regular {array 128 { 1 3 } 1 1 }  }
	{ rc int 8 regular {array 640 { 2 3 } 1 1 } {global 2}  }
	{ rc_sseed int 8 regular {array 640 { 2 3 } 1 1 } {global 2}  }
	{ DRBG_ctx_V int 8 regular {array 16 { 2 1 } 1 1 } {global 2}  }
	{ DRBG_ctx_Key int 8 regular {array 32 { 2 1 } 1 1 } {global 2}  }
	{ DRBG_ctx_reseed_counter int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sm", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sm","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 52515,"step" : 1}]}]}]} , 
 	{ "Name" : "smlen", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "smlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "m","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3299,"step" : 1}]}]}]} , 
 	{ "Name" : "mlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "mlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "rc_sseed", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc_sseed","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "DRBG_ctx_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "DRBG_ctx.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "DRBG_ctx_Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "DRBG_ctx.Key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "DRBG_ctx_reseed_counter", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "DRBG_ctx.reseed_counter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
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
	{ sm_address0 sc_out sc_lv 16 signal 0 } 
	{ sm_ce0 sc_out sc_logic 1 signal 0 } 
	{ sm_we0 sc_out sc_logic 1 signal 0 } 
	{ sm_d0 sc_out sc_lv 8 signal 0 } 
	{ sm_q0 sc_in sc_lv 8 signal 0 } 
	{ smlen_address0 sc_out sc_lv 1 signal 1 } 
	{ smlen_ce0 sc_out sc_logic 1 signal 1 } 
	{ smlen_we0 sc_out sc_logic 1 signal 1 } 
	{ smlen_d0 sc_out sc_lv 64 signal 1 } 
	{ m_address0 sc_out sc_lv 12 signal 2 } 
	{ m_ce0 sc_out sc_logic 1 signal 2 } 
	{ m_q0 sc_in sc_lv 8 signal 2 } 
	{ mlen sc_in sc_lv 64 signal 3 } 
	{ sk_address0 sc_out sc_lv 7 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ rc_address0 sc_out sc_lv 10 signal 5 } 
	{ rc_ce0 sc_out sc_logic 1 signal 5 } 
	{ rc_we0 sc_out sc_logic 1 signal 5 } 
	{ rc_d0 sc_out sc_lv 8 signal 5 } 
	{ rc_q0 sc_in sc_lv 8 signal 5 } 
	{ rc_sseed_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_sseed_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_sseed_we0 sc_out sc_logic 1 signal 6 } 
	{ rc_sseed_d0 sc_out sc_lv 8 signal 6 } 
	{ rc_sseed_q0 sc_in sc_lv 8 signal 6 } 
	{ DRBG_ctx_V_address0 sc_out sc_lv 4 signal 7 } 
	{ DRBG_ctx_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ DRBG_ctx_V_we0 sc_out sc_logic 1 signal 7 } 
	{ DRBG_ctx_V_d0 sc_out sc_lv 8 signal 7 } 
	{ DRBG_ctx_V_q0 sc_in sc_lv 8 signal 7 } 
	{ DRBG_ctx_V_address1 sc_out sc_lv 4 signal 7 } 
	{ DRBG_ctx_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ DRBG_ctx_V_q1 sc_in sc_lv 8 signal 7 } 
	{ DRBG_ctx_Key_address0 sc_out sc_lv 5 signal 8 } 
	{ DRBG_ctx_Key_ce0 sc_out sc_logic 1 signal 8 } 
	{ DRBG_ctx_Key_we0 sc_out sc_logic 1 signal 8 } 
	{ DRBG_ctx_Key_d0 sc_out sc_lv 8 signal 8 } 
	{ DRBG_ctx_Key_q0 sc_in sc_lv 8 signal 8 } 
	{ DRBG_ctx_Key_address1 sc_out sc_lv 5 signal 8 } 
	{ DRBG_ctx_Key_ce1 sc_out sc_logic 1 signal 8 } 
	{ DRBG_ctx_Key_q1 sc_in sc_lv 8 signal 8 } 
	{ DRBG_ctx_reseed_counter_i sc_in sc_lv 32 signal 9 } 
	{ DRBG_ctx_reseed_counter_o sc_out sc_lv 32 signal 9 } 
	{ DRBG_ctx_reseed_counter_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sm", "role": "address0" }} , 
 	{ "name": "sm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce0" }} , 
 	{ "name": "sm_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "we0" }} , 
 	{ "name": "sm_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "d0" }} , 
 	{ "name": "sm_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "q0" }} , 
 	{ "name": "smlen_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "address0" }} , 
 	{ "name": "smlen_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "ce0" }} , 
 	{ "name": "smlen_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "we0" }} , 
 	{ "name": "smlen_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "smlen", "role": "d0" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m", "role": "q0" }} , 
 	{ "name": "mlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "we0" }} , 
 	{ "name": "rc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "d0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_sseed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc_sseed", "role": "address0" }} , 
 	{ "name": "rc_sseed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "ce0" }} , 
 	{ "name": "rc_sseed_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "we0" }} , 
 	{ "name": "rc_sseed_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "d0" }} , 
 	{ "name": "rc_sseed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "q0" }} , 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "crypto_sign",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_signatur_fu_106"}],
		"Port" : [
			{"Name" : "sm", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "sig"}]},
			{"Name" : "smlen", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "sk"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "rc_sseed"}]},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "DRBG_ctx_V"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "DRBG_ctx_Key"}]},
			{"Name" : "DRBG_ctx_reseed_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "DRBG_ctx_reseed_counter"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "140", "257", "328", "365", "404", "428", "445", "462", "479"],
		"CDFG" : "crypto_sign_signatur",
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
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fors_sign_fu_330"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_treehash_wots_fu_345"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hash_message_fu_360"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_sign_fu_376"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_tweak_constants_fu_390"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_randombytes_fu_404"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_419"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_fu_434"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_446"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_456"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_fors_sign_fu_330", "Port" : "sig"},
					{"ID" : "479", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_456", "Port" : "out_r"},
					{"ID" : "328", "SubInstance" : "grp_wots_sign_fu_376", "Port" : "sig"},
					{"ID" : "140", "SubInstance" : "grp_treehash_wots_fu_345", "Port" : "auth_path"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "R"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "445", "SubInstance" : "grp_haraka_S_inc_absorb_fu_434", "Port" : "m"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_419", "Port" : "m"},
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "pk_seed"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "pk"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_419", "Port" : "rc"},
					{"ID" : "8", "SubInstance" : "grp_fors_sign_fu_330", "Port" : "rc"},
					{"ID" : "479", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_456", "Port" : "rc"},
					{"ID" : "328", "SubInstance" : "grp_wots_sign_fu_376", "Port" : "rc"},
					{"ID" : "140", "SubInstance" : "grp_treehash_wots_fu_345", "Port" : "rc"},
					{"ID" : "462", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_446", "Port" : "rc"},
					{"ID" : "445", "SubInstance" : "grp_haraka_S_inc_absorb_fu_434", "Port" : "rc"},
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "rc"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_419", "Port" : "sbox"},
					{"ID" : "8", "SubInstance" : "grp_fors_sign_fu_330", "Port" : "sbox"},
					{"ID" : "479", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_456", "Port" : "sbox"},
					{"ID" : "328", "SubInstance" : "grp_wots_sign_fu_376", "Port" : "sbox"},
					{"ID" : "140", "SubInstance" : "grp_treehash_wots_fu_345", "Port" : "sbox"},
					{"ID" : "462", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_446", "Port" : "sbox"},
					{"ID" : "445", "SubInstance" : "grp_haraka_S_inc_absorb_fu_434", "Port" : "sbox"},
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "sbox"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_fors_sign_fu_330", "Port" : "rc_sseed"},
					{"ID" : "328", "SubInstance" : "grp_wots_sign_fu_376", "Port" : "rc_sseed"},
					{"ID" : "140", "SubInstance" : "grp_treehash_wots_fu_345", "Port" : "rc_sseed"},
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "rc_sseed"}]},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "DRBG_ctx_V"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "DRBG_ctx_Key"}]},
			{"Name" : "DRBG_ctx_reseed_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "DRBG_ctx_reseed_counter"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.s_inc_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.optrand_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.mhash_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.root_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.wots_addr_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.tree_addr_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330", "Parent" : "1", "Child" : ["9", "10", "11", "12", "13", "89", "127"],
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
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_treehash_fors_fu_450"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_fu_465"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_fu_477"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_treehash_fors_fu_450", "Port" : "auth_path"},
					{"ID" : "127", "SubInstance" : "grp_prf_addr_fu_477", "Port" : "out_r"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_thash_1_fu_465", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fors_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_treehash_fors_fu_450", "Port" : "sbox"},
					{"ID" : "127", "SubInstance" : "grp_prf_addr_fu_477", "Port" : "sbox"},
					{"ID" : "89", "SubInstance" : "grp_thash_1_fu_465", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_treehash_fors_fu_450", "Port" : "rc_sseed"},
					{"ID" : "127", "SubInstance" : "grp_prf_addr_fu_477", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_treehash_fors_fu_450", "Port" : "rc"},
					{"ID" : "89", "SubInstance" : "grp_thash_1_fu_465", "Port" : "rc"}]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.indices_assign_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.roots_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.fors_tree_addr_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.fors_pk_addr_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450", "Parent" : "8", "Child" : ["14", "15", "16", "17", "55", "76"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_178_fu_414"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_279_fu_426"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_1_fu_437"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_thash_178_fu_414", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_prf_addr_1_fu_437", "Port" : "sbox"},
					{"ID" : "17", "SubInstance" : "grp_thash_178_fu_414", "Port" : "sbox"},
					{"ID" : "55", "SubInstance" : "grp_thash_279_fu_426", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_prf_addr_1_fu_437", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_thash_178_fu_414", "Port" : "rc"},
					{"ID" : "55", "SubInstance" : "grp_thash_279_fu_426", "Port" : "rc"}]}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.fors_leaf_addr_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.stack_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.heights_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414", "Parent" : "13", "Child" : ["18", "19"],
		"CDFG" : "thash_178",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_fu_190", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_fu_190", "Port" : "rc"}]}]},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.buf_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190", "Parent" : "17", "Child" : ["20", "21", "39"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_137"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_150"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_haraka_S_absorb_1_fu_137", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_haraka512_perm_177_fu_150", "Port" : "sbox"},
					{"ID" : "21", "SubInstance" : "grp_haraka_S_absorb_1_fu_137", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_haraka512_perm_177_fu_150", "Port" : "rc"},
					{"ID" : "21", "SubInstance" : "grp_haraka_S_absorb_1_fu_137", "Port" : "rc"}]}]},
	{"ID" : "20", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.s_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137", "Parent" : "19", "Child" : ["22", "23"],
		"CDFG" : "haraka_S_absorb_1",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "rc"}]}]},
	{"ID" : "22", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.empty_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219", "Parent" : "21", "Child" : ["24", "25", "26", "29", "31", "33", "35", "37"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "26", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "24", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.s_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.tmp_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161", "Parent" : "23", "Child" : ["27", "28"],
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
	{"ID" : "27", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "23", "Child" : ["30"],
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
	{"ID" : "30", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "23", "Child" : ["32"],
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
	{"ID" : "32", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "23", "Child" : ["34"],
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
	{"ID" : "34", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208", "Parent" : "23", "Child" : ["36"],
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
	{"ID" : "36", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214", "Parent" : "23", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150", "Parent" : "19", "Child" : ["40", "41", "42", "45", "47", "49", "51", "53"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "42", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "40", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.s_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.tmp_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_aesenc_fu_161", "Parent" : "39", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_aesenc_fu_161.sbox_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_aesenc_fu_161.v_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_2_fu_176", "Parent" : "39", "Child" : ["46"],
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
	{"ID" : "46", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_1_fu_190", "Parent" : "39", "Child" : ["48"],
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
	{"ID" : "48", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpackhi32_1_fu_196", "Parent" : "39", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpackhi32_fu_208", "Parent" : "39", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpackhi32_fu_208.tmp_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_fu_214", "Parent" : "39", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_fu_214.tmp_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426", "Parent" : "13", "Child" : ["56", "57", "58"],
		"CDFG" : "thash_279",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7659", "EstimateLatencyMax" : "7659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_244"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka512_fu_244", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka512_fu_244", "Port" : "rc"}]}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.outbuf_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.buf_tmp_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244", "Parent" : "55", "Child" : ["59", "60"],
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
					{"ID" : "60", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.buf_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205", "Parent" : "58", "Child" : ["61", "62", "63", "66", "68", "70", "72", "74"],
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
					{"ID" : "63", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "61", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.s_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "60", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "60", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "60", "Child" : ["69"],
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
	{"ID" : "69", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "60", "Child" : ["71"],
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
	{"ID" : "71", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "60", "Child" : ["73"],
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
	{"ID" : "73", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "60", "Child" : ["75"],
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
	{"ID" : "75", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437", "Parent" : "13", "Child" : ["77", "78", "79"],
		"CDFG" : "prf_addr_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3154", "EstimateLatencyMax" : "3154",
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
					{"ID" : "79", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.buf_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.outbuf_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163", "Parent" : "76", "Child" : ["80", "81", "82", "85", "87"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2155_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.s_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "79", "Child" : ["83", "84"],
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
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211", "Parent" : "79", "Child" : ["86"],
		"CDFG" : "unpacklo32_2155",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211.tmp_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "79", "Child" : ["88"],
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
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465", "Parent" : "8", "Child" : ["90", "91"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.buf_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182", "Parent" : "89", "Child" : ["92", "93", "111"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_127"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_140"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_haraka_S_absorb_1_fu_127", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_haraka_S_absorb_1_fu_127", "Port" : "sbox"},
					{"ID" : "111", "SubInstance" : "grp_haraka512_perm_177_fu_140", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_haraka_S_absorb_1_fu_127", "Port" : "rc"},
					{"ID" : "111", "SubInstance" : "grp_haraka512_perm_177_fu_140", "Port" : "rc"}]}]},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.s_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127", "Parent" : "91", "Child" : ["94", "95"],
		"CDFG" : "haraka_S_absorb_1",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "rc"}]}]},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.empty_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219", "Parent" : "93", "Child" : ["96", "97", "98", "101", "103", "105", "107", "109"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "98", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "96", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.s_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.tmp_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161", "Parent" : "95", "Child" : ["99", "100"],
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
	{"ID" : "99", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "95", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "95", "Child" : ["104"],
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
	{"ID" : "104", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "95", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208", "Parent" : "95", "Child" : ["108"],
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
	{"ID" : "108", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214", "Parent" : "95", "Child" : ["110"],
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
	{"ID" : "110", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140", "Parent" : "91", "Child" : ["112", "113", "114", "117", "119", "121", "123", "125"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "114", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.s_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.tmp_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_aesenc_fu_161", "Parent" : "111", "Child" : ["115", "116"],
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
	{"ID" : "115", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_aesenc_fu_161.sbox_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_aesenc_fu_161.v_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_2_fu_176", "Parent" : "111", "Child" : ["118"],
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
	{"ID" : "118", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_1_fu_190", "Parent" : "111", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpackhi32_1_fu_196", "Parent" : "111", "Child" : ["122"],
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
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpackhi32_fu_208", "Parent" : "111", "Child" : ["124"],
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
	{"ID" : "124", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpackhi32_fu_208.tmp_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_fu_214", "Parent" : "111", "Child" : ["126"],
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
	{"ID" : "126", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_fu_214.tmp_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477", "Parent" : "8", "Child" : ["128", "129", "130"],
		"CDFG" : "prf_addr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3154", "EstimateLatencyMax" : "3154",
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
					{"ID" : "130", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.buf_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.outbuf_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163", "Parent" : "127", "Child" : ["131", "132", "133", "136", "138"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2155_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.s_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "130", "Child" : ["134", "135"],
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
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211", "Parent" : "130", "Child" : ["137"],
		"CDFG" : "unpacklo32_2155",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "137", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211.tmp_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "130", "Child" : ["139"],
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
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345", "Parent" : "1", "Child" : ["141", "142", "143", "219"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_gen_leaf_fu_252"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_181_fu_268"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "grp_thash_181_fu_268", "Port" : "addr"},
					{"ID" : "143", "SubInstance" : "grp_wots_gen_leaf_fu_252", "Port" : "tree_addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "grp_thash_181_fu_268", "Port" : "sbox"},
					{"ID" : "143", "SubInstance" : "grp_wots_gen_leaf_fu_252", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_wots_gen_leaf_fu_252", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "grp_thash_181_fu_268", "Port" : "rc"},
					{"ID" : "143", "SubInstance" : "grp_wots_gen_leaf_fu_252", "Port" : "rc"}]}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.stack_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.heights_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252", "Parent" : "140", "Child" : ["144", "145", "146", "147", "185", "206"],
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
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_2_fu_378"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_179_fu_391"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_2_fu_402"}],
		"Port" : [
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_thash_2_fu_378", "Port" : "out_r"}]},
			{"Name" : "leaf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_prf_addr_2_fu_402", "Port" : "sbox"},
					{"ID" : "147", "SubInstance" : "grp_thash_2_fu_378", "Port" : "sbox"},
					{"ID" : "185", "SubInstance" : "grp_thash_179_fu_391", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_prf_addr_2_fu_402", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_thash_2_fu_378", "Port" : "rc"},
					{"ID" : "185", "SubInstance" : "grp_thash_179_fu_391", "Port" : "rc"}]}]},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.pk_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.wots_addr_U", "Parent" : "143"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.wots_pk_addr_U", "Parent" : "143"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378", "Parent" : "143", "Child" : ["148", "149"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1116_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_haraka_S_1116_fu_190", "Port" : "out_r"}]},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_haraka_S_1116_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_haraka_S_1116_fu_190", "Port" : "rc"}]}]},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.buf_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190", "Parent" : "147", "Child" : ["150", "151", "169"],
		"CDFG" : "haraka_S_1116",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_145"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_157"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_haraka512_perm_177_fu_157", "Port" : "sbox"},
					{"ID" : "151", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_haraka512_perm_177_fu_157", "Port" : "rc"},
					{"ID" : "151", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "rc"}]}]},
	{"ID" : "150", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.s_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145", "Parent" : "149", "Child" : ["152", "153"],
		"CDFG" : "haraka_S_absorb_1",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "rc"}]}]},
	{"ID" : "152", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.empty_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219", "Parent" : "151", "Child" : ["154", "155", "156", "159", "161", "163", "165", "167"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "156", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "154", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.s_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.tmp_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161", "Parent" : "153", "Child" : ["157", "158"],
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
	{"ID" : "157", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "156"},
	{"ID" : "159", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "153", "Child" : ["160"],
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
	{"ID" : "160", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "153", "Child" : ["162"],
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
	{"ID" : "162", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "153", "Child" : ["164"],
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
	{"ID" : "164", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208", "Parent" : "153", "Child" : ["166"],
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
	{"ID" : "166", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214", "Parent" : "153", "Child" : ["168"],
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
	{"ID" : "168", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157", "Parent" : "149", "Child" : ["170", "171", "172", "175", "177", "179", "181", "183"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "172", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "170", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.s_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.tmp_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161", "Parent" : "169", "Child" : ["173", "174"],
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
	{"ID" : "173", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161.sbox_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161.v_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_2_fu_176", "Parent" : "169", "Child" : ["176"],
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
	{"ID" : "176", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_1_fu_190", "Parent" : "169", "Child" : ["178"],
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
	{"ID" : "178", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpackhi32_1_fu_196", "Parent" : "169", "Child" : ["180"],
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
	{"ID" : "180", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpackhi32_fu_208", "Parent" : "169", "Child" : ["182"],
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
	{"ID" : "182", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpackhi32_fu_208.tmp_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_fu_214", "Parent" : "169", "Child" : ["184"],
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
	{"ID" : "184", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_fu_214.tmp_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391", "Parent" : "143", "Child" : ["186", "187", "188"],
		"CDFG" : "thash_179",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7659", "EstimateLatencyMax" : "7659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_244"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_haraka512_fu_244", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_haraka512_fu_244", "Port" : "rc"}]}]},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.outbuf_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.buf_tmp_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244", "Parent" : "185", "Child" : ["189", "190"],
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
					{"ID" : "190", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "189", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.buf_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205", "Parent" : "188", "Child" : ["191", "192", "193", "196", "198", "200", "202", "204"],
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
					{"ID" : "193", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "191", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.s_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "190", "Child" : ["194", "195"],
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
	{"ID" : "194", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "190", "Child" : ["197"],
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
	{"ID" : "197", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "190", "Child" : ["199"],
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
	{"ID" : "199", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "190", "Child" : ["201"],
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
	{"ID" : "201", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "190", "Child" : ["203"],
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
	{"ID" : "203", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "190", "Child" : ["205"],
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
	{"ID" : "205", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402", "Parent" : "143", "Child" : ["207", "208", "209"],
		"CDFG" : "prf_addr_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3154", "EstimateLatencyMax" : "3154",
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
					{"ID" : "209", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "209", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.buf_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.outbuf_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163", "Parent" : "206", "Child" : ["210", "211", "212", "215", "217"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2155_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.s_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "209"},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "209", "Child" : ["213", "214"],
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
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211", "Parent" : "209", "Child" : ["216"],
		"CDFG" : "unpacklo32_2155",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "216", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211.tmp_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "209", "Child" : ["218"],
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
	{"ID" : "218", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268", "Parent" : "140", "Child" : ["220", "221"],
		"CDFG" : "thash_181",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1116_fu_192"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_haraka_S_1116_fu_192", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_haraka_S_1116_fu_192", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_haraka_S_1116_fu_192", "Port" : "rc"}]}]},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.buf_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192", "Parent" : "219", "Child" : ["222", "223", "241"],
		"CDFG" : "haraka_S_1116",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_145"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_157"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_177_fu_157", "Port" : "sbox"},
					{"ID" : "223", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_177_fu_157", "Port" : "rc"},
					{"ID" : "223", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "rc"}]}]},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.s_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145", "Parent" : "221", "Child" : ["224", "225"],
		"CDFG" : "haraka_S_absorb_1",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "rc"}]}]},
	{"ID" : "224", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.empty_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219", "Parent" : "223", "Child" : ["226", "227", "228", "231", "233", "235", "237", "239"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "228", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "226", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.s_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.tmp_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161", "Parent" : "225", "Child" : ["229", "230"],
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
	{"ID" : "229", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "228"},
	{"ID" : "231", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "225", "Child" : ["232"],
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
	{"ID" : "232", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "225", "Child" : ["234"],
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
	{"ID" : "234", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "225", "Child" : ["236"],
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
	{"ID" : "236", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208", "Parent" : "225", "Child" : ["238"],
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
	{"ID" : "238", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214", "Parent" : "225", "Child" : ["240"],
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
	{"ID" : "240", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157", "Parent" : "221", "Child" : ["242", "243", "244", "247", "249", "251", "253", "255"],
		"CDFG" : "haraka512_perm_177",
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
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.s_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.tmp_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161", "Parent" : "241", "Child" : ["245", "246"],
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
	{"ID" : "245", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161.sbox_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161.v_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_2_fu_176", "Parent" : "241", "Child" : ["248"],
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
	{"ID" : "248", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_1_fu_190", "Parent" : "241", "Child" : ["250"],
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
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpackhi32_1_fu_196", "Parent" : "241", "Child" : ["252"],
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
	{"ID" : "252", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpackhi32_fu_208", "Parent" : "241", "Child" : ["254"],
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
	{"ID" : "254", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpackhi32_fu_208.tmp_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_fu_214", "Parent" : "241", "Child" : ["256"],
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
	{"ID" : "256", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_fu_214.tmp_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360", "Parent" : "1", "Child" : ["258", "259", "260", "277", "294", "311"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_251"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_fu_266"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_3_fu_278"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_squeeze_1_fu_289"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_haraka_S_inc_absorb_3_fu_278", "Port" : "m"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_251", "Port" : "m"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_haraka_S_inc_absorb_fu_266", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_haraka_S_inc_squeeze_1_fu_289", "Port" : "sbox"},
					{"ID" : "294", "SubInstance" : "grp_haraka_S_inc_absorb_3_fu_278", "Port" : "sbox"},
					{"ID" : "260", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_251", "Port" : "sbox"},
					{"ID" : "277", "SubInstance" : "grp_haraka_S_inc_absorb_fu_266", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_haraka_S_inc_squeeze_1_fu_289", "Port" : "rc"},
					{"ID" : "294", "SubInstance" : "grp_haraka_S_inc_absorb_3_fu_278", "Port" : "rc"},
					{"ID" : "260", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_251", "Port" : "rc"},
					{"ID" : "277", "SubInstance" : "grp_haraka_S_inc_absorb_fu_266", "Port" : "rc"}]}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.buf_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.s_inc_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251", "Parent" : "257", "Child" : ["261"],
		"CDFG" : "haraka_S_inc_absorb_2",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_141"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "rc"}]}]},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141", "Parent" : "260", "Child" : ["262", "263", "264", "267", "269", "271", "273", "275"],
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
					{"ID" : "264", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.s_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.tmp_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161", "Parent" : "261", "Child" : ["265", "266"],
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
	{"ID" : "265", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161.sbox_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161.v_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_2_fu_176", "Parent" : "261", "Child" : ["268"],
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
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_1_fu_190", "Parent" : "261", "Child" : ["270"],
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
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpackhi32_1_fu_196", "Parent" : "261", "Child" : ["272"],
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
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpackhi32_fu_208", "Parent" : "261", "Child" : ["274"],
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
	{"ID" : "274", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpackhi32_fu_208.tmp_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_fu_214", "Parent" : "261", "Child" : ["276"],
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
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_fu_214.tmp_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266", "Parent" : "257", "Child" : ["278"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_133"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "rc"}]}]},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133", "Parent" : "277", "Child" : ["279", "280", "281", "284", "286", "288", "290", "292"],
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
					{"ID" : "281", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.s_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.tmp_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161", "Parent" : "278", "Child" : ["282", "283"],
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
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161.sbox_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161.v_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_2_fu_176", "Parent" : "278", "Child" : ["285"],
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
	{"ID" : "285", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_1_fu_190", "Parent" : "278", "Child" : ["287"],
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
	{"ID" : "287", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpackhi32_1_fu_196", "Parent" : "278", "Child" : ["289"],
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
	{"ID" : "289", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpackhi32_fu_208", "Parent" : "278", "Child" : ["291"],
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
	{"ID" : "291", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpackhi32_fu_208.tmp_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_fu_214", "Parent" : "278", "Child" : ["293"],
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
	{"ID" : "293", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_fu_214.tmp_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278", "Parent" : "257", "Child" : ["295"],
		"CDFG" : "haraka_S_inc_absorb_3",
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
					{"ID" : "295", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "rc"}]}]},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127", "Parent" : "294", "Child" : ["296", "297", "298", "301", "303", "305", "307", "309"],
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
					{"ID" : "298", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.s_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.tmp_U", "Parent" : "295"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161", "Parent" : "295", "Child" : ["299", "300"],
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
	{"ID" : "299", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.sbox_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.v_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176", "Parent" : "295", "Child" : ["302"],
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
	{"ID" : "302", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "301"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190", "Parent" : "295", "Child" : ["304"],
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
	{"ID" : "304", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196", "Parent" : "295", "Child" : ["306"],
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
	{"ID" : "306", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208", "Parent" : "295", "Child" : ["308"],
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
	{"ID" : "308", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208.tmp_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214", "Parent" : "295", "Child" : ["310"],
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
	{"ID" : "310", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214.tmp_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289", "Parent" : "257", "Child" : ["312"],
		"CDFG" : "haraka_S_inc_squeeze_1",
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
					{"ID" : "312", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "rc"}]}]},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146", "Parent" : "311", "Child" : ["313", "314", "315", "318", "320", "322", "324", "326"],
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
					{"ID" : "315", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.s_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.tmp_U", "Parent" : "312"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161", "Parent" : "312", "Child" : ["316", "317"],
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
	{"ID" : "316", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.sbox_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.v_U", "Parent" : "315"},
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176", "Parent" : "312", "Child" : ["319"],
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
	{"ID" : "319", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "318"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190", "Parent" : "312", "Child" : ["321"],
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
	{"ID" : "321", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196", "Parent" : "312", "Child" : ["323"],
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
	{"ID" : "323", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208", "Parent" : "312", "Child" : ["325"],
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
	{"ID" : "325", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208.tmp_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214", "Parent" : "312", "Child" : ["327"],
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
	{"ID" : "327", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214.tmp_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376", "Parent" : "1", "Child" : ["329", "330", "351", "364"],
		"CDFG" : "wots_sign",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_188"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_fu_201"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_checksum_fu_214"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_thash_180_fu_188", "Port" : "in_r"},
					{"ID" : "351", "SubInstance" : "grp_prf_addr_fu_201", "Port" : "out_r"}]},
			{"Name" : "msg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_thash_180_fu_188", "Port" : "addr"},
					{"ID" : "351", "SubInstance" : "grp_prf_addr_fu_201", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_thash_180_fu_188", "Port" : "sbox"},
					{"ID" : "351", "SubInstance" : "grp_prf_addr_fu_201", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_prf_addr_fu_201", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_thash_180_fu_188", "Port" : "rc"}]}]},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.lengths_assign_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188", "Parent" : "328", "Child" : ["331", "332", "333"],
		"CDFG" : "thash_180",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7659", "EstimateLatencyMax" : "7659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_244"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_fu_244", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_fu_244", "Port" : "rc"}]}]},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.outbuf_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.buf_tmp_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244", "Parent" : "330", "Child" : ["334", "335"],
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
					{"ID" : "335", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.buf_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205", "Parent" : "333", "Child" : ["336", "337", "338", "341", "343", "345", "347", "349"],
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
					{"ID" : "338", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "336", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.s_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "335", "Child" : ["339", "340"],
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
	{"ID" : "339", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "338"},
	{"ID" : "341", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "335", "Child" : ["342"],
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
	{"ID" : "342", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "335", "Child" : ["344"],
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
	{"ID" : "344", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "335", "Child" : ["346"],
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
	{"ID" : "346", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "335", "Child" : ["348"],
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
	{"ID" : "348", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "335", "Child" : ["350"],
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
	{"ID" : "350", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201", "Parent" : "328", "Child" : ["352", "353", "354"],
		"CDFG" : "prf_addr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3154", "EstimateLatencyMax" : "3154",
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
					{"ID" : "354", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "354", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.buf_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.outbuf_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163", "Parent" : "351", "Child" : ["355", "356", "357", "360", "362"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2155_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.s_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "354"},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "354", "Child" : ["358", "359"],
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
	{"ID" : "358", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "357"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211", "Parent" : "354", "Child" : ["361"],
		"CDFG" : "unpacklo32_2155",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "361", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211.tmp_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "354", "Child" : ["363"],
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
	{"ID" : "363", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_wots_checksum_fu_214", "Parent" : "328",
		"CDFG" : "wots_checksum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "csum_base_w", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390", "Parent" : "1", "Child" : ["366", "367", "368"],
		"CDFG" : "tweak_constants",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "307281", "EstimateLatencyMax" : "307281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "pk_seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "in_r"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.haraka_rc_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.buf_U", "Parent" : "365"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181", "Parent" : "365", "Child" : ["369", "370", "388"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "151598", "EstimateLatencyMax" : "151598",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_142"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_154"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "grp_haraka_S_absorb_fu_142", "Port" : "m"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "grp_haraka_S_absorb_fu_142", "Port" : "sbox"},
					{"ID" : "388", "SubInstance" : "grp_haraka512_perm_177_fu_154", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "grp_haraka_S_absorb_fu_142", "Port" : "rc"},
					{"ID" : "388", "SubInstance" : "grp_haraka512_perm_177_fu_154", "Port" : "rc"}]}]},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.s_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142", "Parent" : "368", "Child" : ["371", "372"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7311", "EstimateLatencyMax" : "7311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_183"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_haraka512_perm_177_fu_183", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_haraka512_perm_177_fu_183", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_haraka512_perm_177_fu_183", "Port" : "rc"}]}]},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.empty_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183", "Parent" : "370", "Child" : ["373", "374", "375", "378", "380", "382", "384", "386"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "375", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "375", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "373", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.s_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.tmp_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_aesenc_fu_161", "Parent" : "372", "Child" : ["376", "377"],
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
	{"ID" : "376", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_aesenc_fu_161.sbox_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_aesenc_fu_161.v_U", "Parent" : "375"},
	{"ID" : "378", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_2_fu_176", "Parent" : "372", "Child" : ["379"],
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
	{"ID" : "379", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_1_fu_190", "Parent" : "372", "Child" : ["381"],
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
	{"ID" : "381", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpackhi32_1_fu_196", "Parent" : "372", "Child" : ["383"],
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
	{"ID" : "383", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpackhi32_fu_208", "Parent" : "372", "Child" : ["385"],
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
	{"ID" : "385", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpackhi32_fu_208.tmp_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_fu_214", "Parent" : "372", "Child" : ["387"],
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
	{"ID" : "387", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_fu_214.tmp_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154", "Parent" : "368", "Child" : ["389", "390", "391", "394", "396", "398", "400", "402"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "391", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.s_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.tmp_U", "Parent" : "388"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_aesenc_fu_161", "Parent" : "388", "Child" : ["392", "393"],
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
	{"ID" : "392", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_aesenc_fu_161.sbox_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_aesenc_fu_161.v_U", "Parent" : "391"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_2_fu_176", "Parent" : "388", "Child" : ["395"],
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
	{"ID" : "395", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "394"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_1_fu_190", "Parent" : "388", "Child" : ["397"],
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
	{"ID" : "397", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpackhi32_1_fu_196", "Parent" : "388", "Child" : ["399"],
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
	{"ID" : "399", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpackhi32_fu_208", "Parent" : "388", "Child" : ["401"],
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
	{"ID" : "401", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpackhi32_fu_208.tmp_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_fu_214", "Parent" : "388", "Child" : ["403"],
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
	{"ID" : "403", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_fu_214.tmp_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404", "Parent" : "1", "Child" : ["405", "406", "418"],
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
					{"ID" : "406", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "V"},
					{"ID" : "418", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "ctr"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "sbox_1"},
					{"ID" : "418", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "Rcon"},
					{"ID" : "418", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "DRBG_ctx_Key"},
					{"ID" : "418", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "key"}]},
			{"Name" : "DRBG_ctx_reseed_counter", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.block_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177", "Parent" : "404", "Child" : ["407", "408"],
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
					{"ID" : "408", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "ctr"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "key"}]}]},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.temp_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171", "Parent" : "406", "Child" : ["409", "410", "411", "414"],
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
					{"ID" : "411", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "Key"}]},
			{"Name" : "ctr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buffer_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "sbox_1"},
					{"ID" : "414", "SubInstance" : "grp_Cipher_fu_536", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "Rcon"}]}]},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.ctx_RoundKey_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.test_U", "Parent" : "408"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525", "Parent" : "408", "Child" : ["412", "413"],
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
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525.sbox_1_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525.Rcon_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536", "Parent" : "408", "Child" : ["415", "416"],
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
					{"ID" : "416", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "state"},
					{"ID" : "415", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "state"}]},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "RoundKey"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "sbox_1"}]}]},
	{"ID" : "415", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_AddRoundKey_fu_238", "Parent" : "414",
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
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_SubBytes_fu_249", "Parent" : "414", "Child" : ["417"],
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
	{"ID" : "417", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_SubBytes_fu_249.sbox_1_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189", "Parent" : "404", "Child" : ["419", "420", "421", "424"],
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
					{"ID" : "421", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "Key"}]},
			{"Name" : "ctr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "424", "SubInstance" : "grp_Cipher_fu_512", "Port" : "sbox_1"},
					{"ID" : "421", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "421", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "Rcon"}]}]},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.ctx_RoundKey_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.test_U", "Parent" : "418"},
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501", "Parent" : "418", "Child" : ["422", "423"],
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
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501.sbox_1_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501.Rcon_U", "Parent" : "421"},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512", "Parent" : "418", "Child" : ["425", "426"],
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
					{"ID" : "426", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "state"},
					{"ID" : "425", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "state"}]},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "425", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "RoundKey"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "426", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "sbox_1"}]}]},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_AddRoundKey_fu_238", "Parent" : "424",
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
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_SubBytes_fu_249", "Parent" : "424", "Child" : ["427"],
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
	{"ID" : "427", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_SubBytes_fu_249.sbox_1_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419", "Parent" : "1", "Child" : ["429"],
		"CDFG" : "haraka_S_inc_absorb_2",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_141"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "rc"}]}]},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141", "Parent" : "428", "Child" : ["430", "431", "432", "435", "437", "439", "441", "443"],
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
					{"ID" : "432", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.s_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.tmp_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161", "Parent" : "429", "Child" : ["433", "434"],
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
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161.sbox_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161.v_U", "Parent" : "432"},
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_2_fu_176", "Parent" : "429", "Child" : ["436"],
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
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "435"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_1_fu_190", "Parent" : "429", "Child" : ["438"],
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
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpackhi32_1_fu_196", "Parent" : "429", "Child" : ["440"],
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
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "439"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpackhi32_fu_208", "Parent" : "429", "Child" : ["442"],
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
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpackhi32_fu_208.tmp_U", "Parent" : "441"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_fu_214", "Parent" : "429", "Child" : ["444"],
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
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_fu_214.tmp_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434", "Parent" : "1", "Child" : ["446"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_133"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "rc"}]}]},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133", "Parent" : "445", "Child" : ["447", "448", "449", "452", "454", "456", "458", "460"],
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
					{"ID" : "449", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.s_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.tmp_U", "Parent" : "446"},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161", "Parent" : "446", "Child" : ["450", "451"],
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
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161.sbox_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161.v_U", "Parent" : "449"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_2_fu_176", "Parent" : "446", "Child" : ["453"],
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
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_1_fu_190", "Parent" : "446", "Child" : ["455"],
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
	{"ID" : "455", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpackhi32_1_fu_196", "Parent" : "446", "Child" : ["457"],
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
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "456"},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpackhi32_fu_208", "Parent" : "446", "Child" : ["459"],
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
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpackhi32_fu_208.tmp_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_fu_214", "Parent" : "446", "Child" : ["461"],
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
	{"ID" : "461", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_fu_214.tmp_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446", "Parent" : "1", "Child" : ["463"],
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
					{"ID" : "463", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "463", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "463", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "rc"}]}]},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127", "Parent" : "462", "Child" : ["464", "465", "466", "469", "471", "473", "475", "477"],
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
					{"ID" : "466", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "466", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "464", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.s_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.tmp_U", "Parent" : "463"},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161", "Parent" : "463", "Child" : ["467", "468"],
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
	{"ID" : "467", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.sbox_U", "Parent" : "466"},
	{"ID" : "468", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.v_U", "Parent" : "466"},
	{"ID" : "469", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176", "Parent" : "463", "Child" : ["470"],
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
	{"ID" : "470", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190", "Parent" : "463", "Child" : ["472"],
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
	{"ID" : "472", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "471"},
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196", "Parent" : "463", "Child" : ["474"],
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
	{"ID" : "474", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208", "Parent" : "463", "Child" : ["476"],
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
	{"ID" : "476", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208.tmp_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214", "Parent" : "463", "Child" : ["478"],
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
	{"ID" : "478", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214.tmp_U", "Parent" : "477"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456", "Parent" : "1", "Child" : ["480"],
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
					{"ID" : "480", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "480", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "480", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "rc"}]}]},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146", "Parent" : "479", "Child" : ["481", "482", "483", "486", "488", "490", "492", "494"],
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
					{"ID" : "483", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "483", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "481", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.s_U", "Parent" : "480"},
	{"ID" : "482", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.tmp_U", "Parent" : "480"},
	{"ID" : "483", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161", "Parent" : "480", "Child" : ["484", "485"],
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
	{"ID" : "484", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.sbox_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.v_U", "Parent" : "483"},
	{"ID" : "486", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176", "Parent" : "480", "Child" : ["487"],
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
	{"ID" : "487", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190", "Parent" : "480", "Child" : ["489"],
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
	{"ID" : "489", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "488"},
	{"ID" : "490", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196", "Parent" : "480", "Child" : ["491"],
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
	{"ID" : "491", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "490"},
	{"ID" : "492", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208", "Parent" : "480", "Child" : ["493"],
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
	{"ID" : "493", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208.tmp_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214", "Parent" : "480", "Child" : ["495"],
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
	{"ID" : "495", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214.tmp_U", "Parent" : "494"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign {
		sm {Type IO LastRead 4 FirstWrite -1}
		smlen {Type O LastRead -1 FirstWrite 2}
		m {Type I LastRead 4 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 4 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_V {Type IO LastRead 8 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_reseed_counter {Type IO LastRead 2 FirstWrite 2}}
	crypto_sign_signatur {
		sig {Type IO LastRead 4 FirstWrite -1}
		m {Type I LastRead 4 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 4 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_V {Type IO LastRead 8 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_reseed_counter {Type IO LastRead 2 FirstWrite 2}}
	fors_sign {
		sig {Type O LastRead -1 FirstWrite 4}
		pk {Type O LastRead -1 FirstWrite 6}
		m {Type I LastRead 8 FirstWrite -1}
		fors_addr {Type I LastRead 6 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	treehash_fors {
		root {Type O LastRead -1 FirstWrite 3}
		auth_path {Type O LastRead -1 FirstWrite 12}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type IO LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_178 {
		out_r {Type IO LastRead 3 FirstWrite 6}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S {
		out_r {Type O LastRead -1 FirstWrite 6}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
	haraka512_perm_177 {
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
	thash_279 {
		out_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
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
	prf_addr_1 {
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
	unpacklo32_2155 {
		t {Type O LastRead -1 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	thash_1 {
		out_r {Type O LastRead -1 FirstWrite 6}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 6}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
	haraka512_perm_177 {
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
	unpacklo32_2155 {
		t {Type O LastRead -1 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	treehash_wots {
		root {Type O LastRead -1 FirstWrite 3}
		auth_path {Type O LastRead -1 FirstWrite 4}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type IO LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	wots_gen_leaf {
		leaf {Type O LastRead -1 FirstWrite 6}
		leaf_offset {Type I LastRead 0 FirstWrite -1}
		addr_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_2 {
		out_r {Type O LastRead -1 FirstWrite 6}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1116 {
		out_r {Type O LastRead -1 FirstWrite 6}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
	haraka512_perm_177 {
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
	thash_179 {
		in_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
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
	prf_addr_2 {
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
	unpacklo32_2155 {
		t {Type O LastRead -1 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	thash_181 {
		in_r {Type IO LastRead 3 FirstWrite 6}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1116 {
		out_r {Type O LastRead -1 FirstWrite 6}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
	haraka512_perm_177 {
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
		pk {Type I LastRead 4 FirstWrite -1}
		m {Type I LastRead 4 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_inc_absorb_2 {
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
	haraka_S_inc_absorb {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
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
	haraka_S_inc_absorb_3 {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
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
	haraka_S_inc_squeeze_1 {
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
	wots_sign {
		sig {Type IO LastRead 4 FirstWrite 4}
		msg {Type I LastRead 1 FirstWrite -1}
		addr {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_180 {
		in_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
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
	unpacklo32_2155 {
		t {Type O LastRead -1 FirstWrite 6}
		b {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	wots_checksum {
		csum_base_w {Type IO LastRead 1 FirstWrite 4}}
	tweak_constants {
		pk_seed {Type I LastRead 2 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type O LastRead -1 FirstWrite 5}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 6}
		in_r {Type I LastRead 2 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 4 FirstWrite 3}
		m {Type I LastRead 2 FirstWrite -1}
		m_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
	haraka512_perm_177 {
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
		sbox_1 {Type I LastRead -1 FirstWrite -1}}
	haraka_S_inc_absorb_2 {
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
	haraka_S_inc_absorb {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
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
		b {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sm { ap_memory {  { sm_address0 mem_address 1 16 }  { sm_ce0 mem_ce 1 1 }  { sm_we0 mem_we 1 1 }  { sm_d0 mem_din 1 8 }  { sm_q0 mem_dout 0 8 } } }
	smlen { ap_memory {  { smlen_address0 mem_address 1 1 }  { smlen_ce0 mem_ce 1 1 }  { smlen_we0 mem_we 1 1 }  { smlen_d0 mem_din 1 64 } } }
	m { ap_memory {  { m_address0 mem_address 1 12 }  { m_ce0 mem_ce 1 1 }  { m_q0 mem_dout 0 8 } } }
	mlen { ap_none {  { mlen in_data 0 64 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 7 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_we0 mem_we 1 1 }  { rc_d0 mem_din 1 8 }  { rc_q0 mem_dout 0 8 } } }
	rc_sseed { ap_memory {  { rc_sseed_address0 mem_address 1 10 }  { rc_sseed_ce0 mem_ce 1 1 }  { rc_sseed_we0 mem_we 1 1 }  { rc_sseed_d0 mem_din 1 8 }  { rc_sseed_q0 mem_dout 0 8 } } }
	DRBG_ctx_V { ap_memory {  { DRBG_ctx_V_address0 mem_address 1 4 }  { DRBG_ctx_V_ce0 mem_ce 1 1 }  { DRBG_ctx_V_we0 mem_we 1 1 }  { DRBG_ctx_V_d0 mem_din 1 8 }  { DRBG_ctx_V_q0 mem_dout 0 8 }  { DRBG_ctx_V_address1 mem_address 1 4 }  { DRBG_ctx_V_ce1 mem_ce 1 1 }  { DRBG_ctx_V_q1 mem_dout 0 8 } } }
	DRBG_ctx_Key { ap_memory {  { DRBG_ctx_Key_address0 mem_address 1 5 }  { DRBG_ctx_Key_ce0 mem_ce 1 1 }  { DRBG_ctx_Key_we0 mem_we 1 1 }  { DRBG_ctx_Key_d0 mem_din 1 8 }  { DRBG_ctx_Key_q0 mem_dout 0 8 }  { DRBG_ctx_Key_address1 mem_address 1 5 }  { DRBG_ctx_Key_ce1 mem_ce 1 1 }  { DRBG_ctx_Key_q1 mem_dout 0 8 } } }
	DRBG_ctx_reseed_counter { ap_ovld {  { DRBG_ctx_reseed_counter_i in_data 0 32 }  { DRBG_ctx_reseed_counter_o out_data 1 32 }  { DRBG_ctx_reseed_counter_o_ap_vld out_vld 1 1 } } }
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
set moduleName crypto_sign
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
set C_modelName {crypto_sign}
set C_modelType { int 32 }
set C_modelArgList {
	{ sm int 8 regular {array 52516 { 2 3 } 1 1 }  }
	{ smlen int 64 regular {array 1 { 0 3 } 0 1 }  }
	{ m int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ mlen int 64 regular  }
	{ sk int 8 regular {array 128 { 1 3 } 1 1 }  }
	{ rc int 8 regular {array 640 { 2 3 } 1 1 } {global 2}  }
	{ rc_sseed int 8 regular {array 640 { 2 3 } 1 1 } {global 2}  }
	{ DRBG_ctx_V int 8 regular {array 16 { 2 1 } 1 1 } {global 2}  }
	{ DRBG_ctx_Key int 8 regular {array 32 { 2 1 } 1 1 } {global 2}  }
	{ DRBG_ctx_reseed_counter int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sm", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sm","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 52515,"step" : 1}]}]}]} , 
 	{ "Name" : "smlen", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "smlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "m","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3299,"step" : 1}]}]}]} , 
 	{ "Name" : "mlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "mlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "rc", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "rc_sseed", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "rc_sseed","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 39,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "DRBG_ctx_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "DRBG_ctx.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "DRBG_ctx_Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "DRBG_ctx.Key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "DRBG_ctx_reseed_counter", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "DRBG_ctx.reseed_counter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
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
	{ sm_address0 sc_out sc_lv 16 signal 0 } 
	{ sm_ce0 sc_out sc_logic 1 signal 0 } 
	{ sm_we0 sc_out sc_logic 1 signal 0 } 
	{ sm_d0 sc_out sc_lv 8 signal 0 } 
	{ sm_q0 sc_in sc_lv 8 signal 0 } 
	{ smlen_address0 sc_out sc_lv 1 signal 1 } 
	{ smlen_ce0 sc_out sc_logic 1 signal 1 } 
	{ smlen_we0 sc_out sc_logic 1 signal 1 } 
	{ smlen_d0 sc_out sc_lv 64 signal 1 } 
	{ m_address0 sc_out sc_lv 12 signal 2 } 
	{ m_ce0 sc_out sc_logic 1 signal 2 } 
	{ m_q0 sc_in sc_lv 8 signal 2 } 
	{ mlen sc_in sc_lv 64 signal 3 } 
	{ sk_address0 sc_out sc_lv 7 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ rc_address0 sc_out sc_lv 10 signal 5 } 
	{ rc_ce0 sc_out sc_logic 1 signal 5 } 
	{ rc_we0 sc_out sc_logic 1 signal 5 } 
	{ rc_d0 sc_out sc_lv 8 signal 5 } 
	{ rc_q0 sc_in sc_lv 8 signal 5 } 
	{ rc_sseed_address0 sc_out sc_lv 10 signal 6 } 
	{ rc_sseed_ce0 sc_out sc_logic 1 signal 6 } 
	{ rc_sseed_we0 sc_out sc_logic 1 signal 6 } 
	{ rc_sseed_d0 sc_out sc_lv 8 signal 6 } 
	{ rc_sseed_q0 sc_in sc_lv 8 signal 6 } 
	{ DRBG_ctx_V_address0 sc_out sc_lv 4 signal 7 } 
	{ DRBG_ctx_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ DRBG_ctx_V_we0 sc_out sc_logic 1 signal 7 } 
	{ DRBG_ctx_V_d0 sc_out sc_lv 8 signal 7 } 
	{ DRBG_ctx_V_q0 sc_in sc_lv 8 signal 7 } 
	{ DRBG_ctx_V_address1 sc_out sc_lv 4 signal 7 } 
	{ DRBG_ctx_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ DRBG_ctx_V_q1 sc_in sc_lv 8 signal 7 } 
	{ DRBG_ctx_Key_address0 sc_out sc_lv 5 signal 8 } 
	{ DRBG_ctx_Key_ce0 sc_out sc_logic 1 signal 8 } 
	{ DRBG_ctx_Key_we0 sc_out sc_logic 1 signal 8 } 
	{ DRBG_ctx_Key_d0 sc_out sc_lv 8 signal 8 } 
	{ DRBG_ctx_Key_q0 sc_in sc_lv 8 signal 8 } 
	{ DRBG_ctx_Key_address1 sc_out sc_lv 5 signal 8 } 
	{ DRBG_ctx_Key_ce1 sc_out sc_logic 1 signal 8 } 
	{ DRBG_ctx_Key_q1 sc_in sc_lv 8 signal 8 } 
	{ DRBG_ctx_reseed_counter_i sc_in sc_lv 32 signal 9 } 
	{ DRBG_ctx_reseed_counter_o sc_out sc_lv 32 signal 9 } 
	{ DRBG_ctx_reseed_counter_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sm", "role": "address0" }} , 
 	{ "name": "sm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce0" }} , 
 	{ "name": "sm_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "we0" }} , 
 	{ "name": "sm_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "d0" }} , 
 	{ "name": "sm_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "q0" }} , 
 	{ "name": "smlen_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "address0" }} , 
 	{ "name": "smlen_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "ce0" }} , 
 	{ "name": "smlen_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "we0" }} , 
 	{ "name": "smlen_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "smlen", "role": "d0" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m", "role": "q0" }} , 
 	{ "name": "mlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "rc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc", "role": "address0" }} , 
 	{ "name": "rc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "ce0" }} , 
 	{ "name": "rc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc", "role": "we0" }} , 
 	{ "name": "rc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "d0" }} , 
 	{ "name": "rc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc", "role": "q0" }} , 
 	{ "name": "rc_sseed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rc_sseed", "role": "address0" }} , 
 	{ "name": "rc_sseed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "ce0" }} , 
 	{ "name": "rc_sseed_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rc_sseed", "role": "we0" }} , 
 	{ "name": "rc_sseed_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "d0" }} , 
 	{ "name": "rc_sseed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_sseed", "role": "q0" }} , 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "crypto_sign",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_signatur_fu_106"}],
		"Port" : [
			{"Name" : "sm", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "sig"}]},
			{"Name" : "smlen", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "sk"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "rc_sseed"}]},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "DRBG_ctx_V"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "DRBG_ctx_Key"}]},
			{"Name" : "DRBG_ctx_reseed_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_crypto_sign_signatur_fu_106", "Port" : "DRBG_ctx_reseed_counter"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "140", "257", "328", "365", "404", "428", "445", "462", "479"],
		"CDFG" : "crypto_sign_signatur",
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
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fors_sign_fu_330"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_treehash_wots_fu_345"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hash_message_fu_360"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_sign_fu_376"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_tweak_constants_fu_390"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_randombytes_fu_404"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_419"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_fu_434"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_446"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_456"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_treehash_wots_fu_345", "Port" : "auth_path"},
					{"ID" : "479", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_456", "Port" : "out_r"},
					{"ID" : "328", "SubInstance" : "grp_wots_sign_fu_376", "Port" : "sig"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "R"},
					{"ID" : "8", "SubInstance" : "grp_fors_sign_fu_330", "Port" : "sig"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "445", "SubInstance" : "grp_haraka_S_inc_absorb_fu_434", "Port" : "m"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_419", "Port" : "m"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "pk"},
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "pk_seed"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "haraka_rc"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "445", "SubInstance" : "grp_haraka_S_inc_absorb_fu_434", "Port" : "rc"},
					{"ID" : "428", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_419", "Port" : "rc"},
					{"ID" : "140", "SubInstance" : "grp_treehash_wots_fu_345", "Port" : "rc"},
					{"ID" : "479", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_456", "Port" : "rc"},
					{"ID" : "328", "SubInstance" : "grp_wots_sign_fu_376", "Port" : "rc"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "rc"},
					{"ID" : "462", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_446", "Port" : "rc"},
					{"ID" : "8", "SubInstance" : "grp_fors_sign_fu_330", "Port" : "rc"},
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "445", "SubInstance" : "grp_haraka_S_inc_absorb_fu_434", "Port" : "sbox"},
					{"ID" : "428", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_419", "Port" : "sbox"},
					{"ID" : "140", "SubInstance" : "grp_treehash_wots_fu_345", "Port" : "sbox"},
					{"ID" : "479", "SubInstance" : "grp_haraka_S_inc_squeeze_fu_456", "Port" : "sbox"},
					{"ID" : "328", "SubInstance" : "grp_wots_sign_fu_376", "Port" : "sbox"},
					{"ID" : "257", "SubInstance" : "grp_hash_message_fu_360", "Port" : "sbox"},
					{"ID" : "462", "SubInstance" : "grp_haraka_S_inc_absorb_1_fu_446", "Port" : "sbox"},
					{"ID" : "8", "SubInstance" : "grp_fors_sign_fu_330", "Port" : "sbox"},
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_treehash_wots_fu_345", "Port" : "rc_sseed"},
					{"ID" : "328", "SubInstance" : "grp_wots_sign_fu_376", "Port" : "rc_sseed"},
					{"ID" : "8", "SubInstance" : "grp_fors_sign_fu_330", "Port" : "rc_sseed"},
					{"ID" : "365", "SubInstance" : "grp_tweak_constants_fu_390", "Port" : "rc_sseed"}]},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "DRBG_ctx_V"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "DRBG_ctx_Key"}]},
			{"Name" : "DRBG_ctx_reseed_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_randombytes_fu_404", "Port" : "DRBG_ctx_reseed_counter"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.s_inc_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.optrand_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.mhash_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.root_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.wots_addr_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.tree_addr_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330", "Parent" : "1", "Child" : ["9", "10", "11", "12", "13", "89", "127"],
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
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_treehash_fors_fu_450"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_1_fu_465"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_fu_477"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_treehash_fors_fu_450", "Port" : "auth_path"},
					{"ID" : "127", "SubInstance" : "grp_prf_addr_fu_477", "Port" : "out_r"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_thash_1_fu_465", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fors_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_thash_1_fu_465", "Port" : "sbox"},
					{"ID" : "13", "SubInstance" : "grp_treehash_fors_fu_450", "Port" : "sbox"},
					{"ID" : "127", "SubInstance" : "grp_prf_addr_fu_477", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_treehash_fors_fu_450", "Port" : "rc_sseed"},
					{"ID" : "127", "SubInstance" : "grp_prf_addr_fu_477", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_thash_1_fu_465", "Port" : "rc"},
					{"ID" : "13", "SubInstance" : "grp_treehash_fors_fu_450", "Port" : "rc"}]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.indices_assign_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.roots_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.fors_tree_addr_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.fors_pk_addr_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450", "Parent" : "8", "Child" : ["14", "15", "16", "17", "55", "76"],
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
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_178_fu_414"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_279_fu_426"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_1_fu_437"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_thash_178_fu_414", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_prf_addr_1_fu_437", "Port" : "sbox"},
					{"ID" : "17", "SubInstance" : "grp_thash_178_fu_414", "Port" : "sbox"},
					{"ID" : "55", "SubInstance" : "grp_thash_279_fu_426", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_prf_addr_1_fu_437", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_thash_178_fu_414", "Port" : "rc"},
					{"ID" : "55", "SubInstance" : "grp_thash_279_fu_426", "Port" : "rc"}]}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.fors_leaf_addr_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.stack_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.heights_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414", "Parent" : "13", "Child" : ["18", "19"],
		"CDFG" : "thash_178",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_fu_190", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_haraka_S_fu_190", "Port" : "rc"}]}]},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.buf_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190", "Parent" : "17", "Child" : ["20", "21", "39"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_137"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_150"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_haraka_S_absorb_1_fu_137", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_haraka512_perm_177_fu_150", "Port" : "sbox"},
					{"ID" : "21", "SubInstance" : "grp_haraka_S_absorb_1_fu_137", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_haraka512_perm_177_fu_150", "Port" : "rc"},
					{"ID" : "21", "SubInstance" : "grp_haraka_S_absorb_1_fu_137", "Port" : "rc"}]}]},
	{"ID" : "20", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.s_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137", "Parent" : "19", "Child" : ["22", "23"],
		"CDFG" : "haraka_S_absorb_1",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "rc"}]}]},
	{"ID" : "22", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.empty_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219", "Parent" : "21", "Child" : ["24", "25", "26", "29", "31", "33", "35", "37"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "26", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "24", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.s_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.tmp_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161", "Parent" : "23", "Child" : ["27", "28"],
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
	{"ID" : "27", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "23", "Child" : ["30"],
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
	{"ID" : "30", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "23", "Child" : ["32"],
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
	{"ID" : "32", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "23", "Child" : ["34"],
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
	{"ID" : "34", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208", "Parent" : "23", "Child" : ["36"],
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
	{"ID" : "36", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214", "Parent" : "23", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka_S_absorb_1_fu_137.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150", "Parent" : "19", "Child" : ["40", "41", "42", "45", "47", "49", "51", "53"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "42", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "40", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.s_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.tmp_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_aesenc_fu_161", "Parent" : "39", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_aesenc_fu_161.sbox_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_aesenc_fu_161.v_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_2_fu_176", "Parent" : "39", "Child" : ["46"],
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
	{"ID" : "46", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_1_fu_190", "Parent" : "39", "Child" : ["48"],
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
	{"ID" : "48", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpackhi32_1_fu_196", "Parent" : "39", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpackhi32_fu_208", "Parent" : "39", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpackhi32_fu_208.tmp_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_fu_214", "Parent" : "39", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_178_fu_414.grp_haraka_S_fu_190.grp_haraka512_perm_177_fu_150.grp_unpacklo32_fu_214.tmp_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426", "Parent" : "13", "Child" : ["56", "57", "58"],
		"CDFG" : "thash_279",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7659", "EstimateLatencyMax" : "7659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_244"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka512_fu_244", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_haraka512_fu_244", "Port" : "rc"}]}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.outbuf_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.buf_tmp_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244", "Parent" : "55", "Child" : ["59", "60"],
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
					{"ID" : "60", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.buf_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205", "Parent" : "58", "Child" : ["61", "62", "63", "66", "68", "70", "72", "74"],
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
					{"ID" : "63", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "61", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.s_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "60", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "60", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "60", "Child" : ["69"],
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
	{"ID" : "69", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "60", "Child" : ["71"],
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
	{"ID" : "71", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "60", "Child" : ["73"],
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
	{"ID" : "73", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "60", "Child" : ["75"],
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
	{"ID" : "75", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_thash_279_fu_426.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437", "Parent" : "13", "Child" : ["77", "78", "79"],
		"CDFG" : "prf_addr_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3154", "EstimateLatencyMax" : "3154",
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
					{"ID" : "79", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.buf_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.outbuf_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163", "Parent" : "76", "Child" : ["80", "81", "82", "85", "87"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2155_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.s_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "79", "Child" : ["83", "84"],
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
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211", "Parent" : "79", "Child" : ["86"],
		"CDFG" : "unpacklo32_2155",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211.tmp_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "79", "Child" : ["88"],
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
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_treehash_fors_fu_450.grp_prf_addr_1_fu_437.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465", "Parent" : "8", "Child" : ["90", "91"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1_fu_182"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "out_r"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_haraka_S_1_fu_182", "Port" : "rc"}]}]},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.buf_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182", "Parent" : "89", "Child" : ["92", "93", "111"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_127"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_140"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_haraka_S_absorb_1_fu_127", "Port" : "m"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_haraka512_perm_177_fu_140", "Port" : "sbox"},
					{"ID" : "93", "SubInstance" : "grp_haraka_S_absorb_1_fu_127", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_haraka512_perm_177_fu_140", "Port" : "rc"},
					{"ID" : "93", "SubInstance" : "grp_haraka_S_absorb_1_fu_127", "Port" : "rc"}]}]},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.s_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127", "Parent" : "91", "Child" : ["94", "95"],
		"CDFG" : "haraka_S_absorb_1",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "rc"}]}]},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.empty_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219", "Parent" : "93", "Child" : ["96", "97", "98", "101", "103", "105", "107", "109"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "98", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "96", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.s_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.tmp_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161", "Parent" : "95", "Child" : ["99", "100"],
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
	{"ID" : "99", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "95", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "95", "Child" : ["104"],
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
	{"ID" : "104", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "95", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208", "Parent" : "95", "Child" : ["108"],
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
	{"ID" : "108", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214", "Parent" : "95", "Child" : ["110"],
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
	{"ID" : "110", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka_S_absorb_1_fu_127.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140", "Parent" : "91", "Child" : ["112", "113", "114", "117", "119", "121", "123", "125"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "114", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.s_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.tmp_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_aesenc_fu_161", "Parent" : "111", "Child" : ["115", "116"],
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
	{"ID" : "115", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_aesenc_fu_161.sbox_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_aesenc_fu_161.v_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_2_fu_176", "Parent" : "111", "Child" : ["118"],
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
	{"ID" : "118", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_1_fu_190", "Parent" : "111", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpackhi32_1_fu_196", "Parent" : "111", "Child" : ["122"],
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
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpackhi32_fu_208", "Parent" : "111", "Child" : ["124"],
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
	{"ID" : "124", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpackhi32_fu_208.tmp_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_fu_214", "Parent" : "111", "Child" : ["126"],
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
	{"ID" : "126", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_thash_1_fu_465.grp_haraka_S_1_fu_182.grp_haraka512_perm_177_fu_140.grp_unpacklo32_fu_214.tmp_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477", "Parent" : "8", "Child" : ["128", "129", "130"],
		"CDFG" : "prf_addr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3154", "EstimateLatencyMax" : "3154",
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
					{"ID" : "130", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.buf_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.outbuf_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163", "Parent" : "127", "Child" : ["131", "132", "133", "136", "138"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2155_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.s_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "130", "Child" : ["134", "135"],
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
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211", "Parent" : "130", "Child" : ["137"],
		"CDFG" : "unpacklo32_2155",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "137", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211.tmp_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "130", "Child" : ["139"],
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
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_fors_sign_fu_330.grp_prf_addr_fu_477.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345", "Parent" : "1", "Child" : ["141", "142", "143", "219"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_gen_leaf_fu_252"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_181_fu_268"}],
		"Port" : [
			{"Name" : "root", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "auth_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "leaf_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_wots_gen_leaf_fu_252", "Port" : "tree_addr"},
					{"ID" : "219", "SubInstance" : "grp_thash_181_fu_268", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_wots_gen_leaf_fu_252", "Port" : "sbox"},
					{"ID" : "219", "SubInstance" : "grp_thash_181_fu_268", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_wots_gen_leaf_fu_252", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_wots_gen_leaf_fu_252", "Port" : "rc"},
					{"ID" : "219", "SubInstance" : "grp_thash_181_fu_268", "Port" : "rc"}]}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.stack_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.heights_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252", "Parent" : "140", "Child" : ["144", "145", "146", "147", "185", "206"],
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
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_2_fu_378"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_179_fu_391"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_2_fu_402"}],
		"Port" : [
			{"Name" : "leaf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_thash_2_fu_378", "Port" : "out_r"}]},
			{"Name" : "leaf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "tree_addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_thash_179_fu_391", "Port" : "sbox"},
					{"ID" : "206", "SubInstance" : "grp_prf_addr_2_fu_402", "Port" : "sbox"},
					{"ID" : "147", "SubInstance" : "grp_thash_2_fu_378", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_prf_addr_2_fu_402", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_thash_179_fu_391", "Port" : "rc"},
					{"ID" : "147", "SubInstance" : "grp_thash_2_fu_378", "Port" : "rc"}]}]},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.pk_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.wots_addr_U", "Parent" : "143"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.wots_pk_addr_U", "Parent" : "143"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378", "Parent" : "143", "Child" : ["148", "149"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1116_fu_190"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_haraka_S_1116_fu_190", "Port" : "out_r"}]},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_haraka_S_1116_fu_190", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_haraka_S_1116_fu_190", "Port" : "rc"}]}]},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.buf_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190", "Parent" : "147", "Child" : ["150", "151", "169"],
		"CDFG" : "haraka_S_1116",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_145"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_157"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "sbox"},
					{"ID" : "169", "SubInstance" : "grp_haraka512_perm_177_fu_157", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "rc"},
					{"ID" : "169", "SubInstance" : "grp_haraka512_perm_177_fu_157", "Port" : "rc"}]}]},
	{"ID" : "150", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.s_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145", "Parent" : "149", "Child" : ["152", "153"],
		"CDFG" : "haraka_S_absorb_1",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "rc"}]}]},
	{"ID" : "152", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.empty_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219", "Parent" : "151", "Child" : ["154", "155", "156", "159", "161", "163", "165", "167"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "156", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "154", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.s_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.tmp_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161", "Parent" : "153", "Child" : ["157", "158"],
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
	{"ID" : "157", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "156"},
	{"ID" : "159", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "153", "Child" : ["160"],
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
	{"ID" : "160", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "153", "Child" : ["162"],
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
	{"ID" : "162", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "153", "Child" : ["164"],
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
	{"ID" : "164", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208", "Parent" : "153", "Child" : ["166"],
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
	{"ID" : "166", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214", "Parent" : "153", "Child" : ["168"],
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
	{"ID" : "168", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157", "Parent" : "149", "Child" : ["170", "171", "172", "175", "177", "179", "181", "183"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "172", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "170", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.s_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.tmp_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161", "Parent" : "169", "Child" : ["173", "174"],
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
	{"ID" : "173", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161.sbox_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161.v_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_2_fu_176", "Parent" : "169", "Child" : ["176"],
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
	{"ID" : "176", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_1_fu_190", "Parent" : "169", "Child" : ["178"],
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
	{"ID" : "178", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpackhi32_1_fu_196", "Parent" : "169", "Child" : ["180"],
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
	{"ID" : "180", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpackhi32_fu_208", "Parent" : "169", "Child" : ["182"],
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
	{"ID" : "182", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpackhi32_fu_208.tmp_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_fu_214", "Parent" : "169", "Child" : ["184"],
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
	{"ID" : "184", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_2_fu_378.grp_haraka_S_1116_fu_190.grp_haraka512_perm_177_fu_157.grp_unpacklo32_fu_214.tmp_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391", "Parent" : "143", "Child" : ["186", "187", "188"],
		"CDFG" : "thash_179",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7659", "EstimateLatencyMax" : "7659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_244"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_haraka512_fu_244", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_haraka512_fu_244", "Port" : "rc"}]}]},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.outbuf_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.buf_tmp_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244", "Parent" : "185", "Child" : ["189", "190"],
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
					{"ID" : "190", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "189", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.buf_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205", "Parent" : "188", "Child" : ["191", "192", "193", "196", "198", "200", "202", "204"],
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
					{"ID" : "193", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "191", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.s_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "190", "Child" : ["194", "195"],
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
	{"ID" : "194", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "190", "Child" : ["197"],
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
	{"ID" : "197", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "190", "Child" : ["199"],
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
	{"ID" : "199", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "190", "Child" : ["201"],
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
	{"ID" : "201", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "190", "Child" : ["203"],
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
	{"ID" : "203", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "190", "Child" : ["205"],
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
	{"ID" : "205", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_thash_179_fu_391.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402", "Parent" : "143", "Child" : ["207", "208", "209"],
		"CDFG" : "prf_addr_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3154", "EstimateLatencyMax" : "3154",
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
					{"ID" : "209", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "209", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.buf_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.outbuf_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163", "Parent" : "206", "Child" : ["210", "211", "212", "215", "217"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2155_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.s_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "209"},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "209", "Child" : ["213", "214"],
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
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211", "Parent" : "209", "Child" : ["216"],
		"CDFG" : "unpacklo32_2155",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "216", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211.tmp_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "209", "Child" : ["218"],
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
	{"ID" : "218", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_wots_gen_leaf_fu_252.grp_prf_addr_2_fu_402.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268", "Parent" : "140", "Child" : ["220", "221"],
		"CDFG" : "thash_181",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_1116_fu_192"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_haraka_S_1116_fu_192", "Port" : "out_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_haraka_S_1116_fu_192", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_haraka_S_1116_fu_192", "Port" : "rc"}]}]},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.buf_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192", "Parent" : "219", "Child" : ["222", "223", "241"],
		"CDFG" : "haraka_S_1116",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_1_fu_145"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_157"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "sbox"},
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_177_fu_157", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_haraka_S_absorb_1_fu_145", "Port" : "rc"},
					{"ID" : "241", "SubInstance" : "grp_haraka512_perm_177_fu_157", "Port" : "rc"}]}]},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.s_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145", "Parent" : "221", "Child" : ["224", "225"],
		"CDFG" : "haraka_S_absorb_1",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_219"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_haraka512_perm_177_fu_219", "Port" : "rc"}]}]},
	{"ID" : "224", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.empty_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219", "Parent" : "223", "Child" : ["226", "227", "228", "231", "233", "235", "237", "239"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "228", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "226", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.s_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.tmp_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161", "Parent" : "225", "Child" : ["229", "230"],
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
	{"ID" : "229", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.sbox_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_aesenc_fu_161.v_U", "Parent" : "228"},
	{"ID" : "231", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176", "Parent" : "225", "Child" : ["232"],
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
	{"ID" : "232", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190", "Parent" : "225", "Child" : ["234"],
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
	{"ID" : "234", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196", "Parent" : "225", "Child" : ["236"],
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
	{"ID" : "236", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208", "Parent" : "225", "Child" : ["238"],
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
	{"ID" : "238", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpackhi32_fu_208.tmp_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214", "Parent" : "225", "Child" : ["240"],
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
	{"ID" : "240", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka_S_absorb_1_fu_145.grp_haraka512_perm_177_fu_219.grp_unpacklo32_fu_214.tmp_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157", "Parent" : "221", "Child" : ["242", "243", "244", "247", "249", "251", "253", "255"],
		"CDFG" : "haraka512_perm_177",
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
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.s_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.tmp_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161", "Parent" : "241", "Child" : ["245", "246"],
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
	{"ID" : "245", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161.sbox_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_aesenc_fu_161.v_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_2_fu_176", "Parent" : "241", "Child" : ["248"],
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
	{"ID" : "248", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_1_fu_190", "Parent" : "241", "Child" : ["250"],
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
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpackhi32_1_fu_196", "Parent" : "241", "Child" : ["252"],
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
	{"ID" : "252", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpackhi32_fu_208", "Parent" : "241", "Child" : ["254"],
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
	{"ID" : "254", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpackhi32_fu_208.tmp_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_fu_214", "Parent" : "241", "Child" : ["256"],
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
	{"ID" : "256", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_treehash_wots_fu_345.grp_thash_181_fu_268.grp_haraka_S_1116_fu_192.grp_haraka512_perm_177_fu_157.grp_unpacklo32_fu_214.tmp_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360", "Parent" : "1", "Child" : ["258", "259", "260", "277", "294", "311"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_251"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_fu_266"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_absorb_3_fu_278"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_inc_squeeze_1_fu_289"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_haraka_S_inc_absorb_3_fu_278", "Port" : "m"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_251", "Port" : "m"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_haraka_S_inc_absorb_fu_266", "Port" : "m"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_haraka_S_inc_absorb_3_fu_278", "Port" : "sbox"},
					{"ID" : "311", "SubInstance" : "grp_haraka_S_inc_squeeze_1_fu_289", "Port" : "sbox"},
					{"ID" : "260", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_251", "Port" : "sbox"},
					{"ID" : "277", "SubInstance" : "grp_haraka_S_inc_absorb_fu_266", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_haraka_S_inc_absorb_3_fu_278", "Port" : "rc"},
					{"ID" : "311", "SubInstance" : "grp_haraka_S_inc_squeeze_1_fu_289", "Port" : "rc"},
					{"ID" : "260", "SubInstance" : "grp_haraka_S_inc_absorb_2_fu_251", "Port" : "rc"},
					{"ID" : "277", "SubInstance" : "grp_haraka_S_inc_absorb_fu_266", "Port" : "rc"}]}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.buf_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.s_inc_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251", "Parent" : "257", "Child" : ["261"],
		"CDFG" : "haraka_S_inc_absorb_2",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_141"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "rc"}]}]},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141", "Parent" : "260", "Child" : ["262", "263", "264", "267", "269", "271", "273", "275"],
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
					{"ID" : "264", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.s_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.tmp_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161", "Parent" : "261", "Child" : ["265", "266"],
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
	{"ID" : "265", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161.sbox_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161.v_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_2_fu_176", "Parent" : "261", "Child" : ["268"],
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
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_1_fu_190", "Parent" : "261", "Child" : ["270"],
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
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpackhi32_1_fu_196", "Parent" : "261", "Child" : ["272"],
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
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpackhi32_fu_208", "Parent" : "261", "Child" : ["274"],
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
	{"ID" : "274", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpackhi32_fu_208.tmp_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_fu_214", "Parent" : "261", "Child" : ["276"],
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
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_2_fu_251.grp_haraka512_perm_1_fu_141.grp_unpacklo32_fu_214.tmp_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266", "Parent" : "257", "Child" : ["278"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_133"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "rc"}]}]},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133", "Parent" : "277", "Child" : ["279", "280", "281", "284", "286", "288", "290", "292"],
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
					{"ID" : "281", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.s_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.tmp_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161", "Parent" : "278", "Child" : ["282", "283"],
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
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161.sbox_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161.v_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_2_fu_176", "Parent" : "278", "Child" : ["285"],
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
	{"ID" : "285", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_1_fu_190", "Parent" : "278", "Child" : ["287"],
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
	{"ID" : "287", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpackhi32_1_fu_196", "Parent" : "278", "Child" : ["289"],
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
	{"ID" : "289", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpackhi32_fu_208", "Parent" : "278", "Child" : ["291"],
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
	{"ID" : "291", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpackhi32_fu_208.tmp_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_fu_214", "Parent" : "278", "Child" : ["293"],
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
	{"ID" : "293", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_fu_266.grp_haraka512_perm_1_fu_133.grp_unpacklo32_fu_214.tmp_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278", "Parent" : "257", "Child" : ["295"],
		"CDFG" : "haraka_S_inc_absorb_3",
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
					{"ID" : "295", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "rc"}]}]},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127", "Parent" : "294", "Child" : ["296", "297", "298", "301", "303", "305", "307", "309"],
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
					{"ID" : "298", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.s_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.tmp_U", "Parent" : "295"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161", "Parent" : "295", "Child" : ["299", "300"],
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
	{"ID" : "299", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.sbox_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.v_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176", "Parent" : "295", "Child" : ["302"],
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
	{"ID" : "302", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "301"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190", "Parent" : "295", "Child" : ["304"],
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
	{"ID" : "304", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196", "Parent" : "295", "Child" : ["306"],
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
	{"ID" : "306", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208", "Parent" : "295", "Child" : ["308"],
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
	{"ID" : "308", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208.tmp_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214", "Parent" : "295", "Child" : ["310"],
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
	{"ID" : "310", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_absorb_3_fu_278.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214.tmp_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289", "Parent" : "257", "Child" : ["312"],
		"CDFG" : "haraka_S_inc_squeeze_1",
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
					{"ID" : "312", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "out_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "rc"}]}]},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146", "Parent" : "311", "Child" : ["313", "314", "315", "318", "320", "322", "324", "326"],
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
					{"ID" : "315", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.s_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.tmp_U", "Parent" : "312"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161", "Parent" : "312", "Child" : ["316", "317"],
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
	{"ID" : "316", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.sbox_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.v_U", "Parent" : "315"},
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176", "Parent" : "312", "Child" : ["319"],
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
	{"ID" : "319", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "318"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190", "Parent" : "312", "Child" : ["321"],
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
	{"ID" : "321", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196", "Parent" : "312", "Child" : ["323"],
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
	{"ID" : "323", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208", "Parent" : "312", "Child" : ["325"],
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
	{"ID" : "325", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208.tmp_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214", "Parent" : "312", "Child" : ["327"],
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
	{"ID" : "327", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_hash_message_fu_360.grp_haraka_S_inc_squeeze_1_fu_289.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214.tmp_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376", "Parent" : "1", "Child" : ["329", "330", "351", "364"],
		"CDFG" : "wots_sign",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thash_180_fu_188"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prf_addr_fu_201"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_wots_checksum_fu_214"}],
		"Port" : [
			{"Name" : "sig", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_prf_addr_fu_201", "Port" : "out_r"},
					{"ID" : "330", "SubInstance" : "grp_thash_180_fu_188", "Port" : "out_r"}]},
			{"Name" : "msg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_prf_addr_fu_201", "Port" : "addr"},
					{"ID" : "330", "SubInstance" : "grp_thash_180_fu_188", "Port" : "addr"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_prf_addr_fu_201", "Port" : "sbox"},
					{"ID" : "330", "SubInstance" : "grp_thash_180_fu_188", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_prf_addr_fu_201", "Port" : "rc_sseed"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_thash_180_fu_188", "Port" : "rc"}]}]},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.lengths_assign_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188", "Parent" : "328", "Child" : ["331", "332", "333"],
		"CDFG" : "thash_180",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7659", "EstimateLatencyMax" : "7659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_fu_244"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_fu_244", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_haraka512_fu_244", "Port" : "rc"}]}]},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.outbuf_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.buf_tmp_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244", "Parent" : "330", "Child" : ["334", "335"],
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
					{"ID" : "335", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "in_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_haraka512_perm_fu_205", "Port" : "rc"}]}]},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.buf_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205", "Parent" : "333", "Child" : ["336", "337", "338", "341", "343", "345", "347", "349"],
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
					{"ID" : "338", "SubInstance" : "grp_aesenc_fu_168", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "grp_aesenc_fu_168", "Port" : "rk"}]}]},
	{"ID" : "336", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.s_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.tmp_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168", "Parent" : "335", "Child" : ["339", "340"],
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
	{"ID" : "339", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.sbox_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_aesenc_fu_168.v_U", "Parent" : "338"},
	{"ID" : "341", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183", "Parent" : "335", "Child" : ["342"],
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
	{"ID" : "342", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_2_fu_183.tmp_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197", "Parent" : "335", "Child" : ["344"],
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
	{"ID" : "344", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_1_fu_197.tmp_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203", "Parent" : "335", "Child" : ["346"],
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
	{"ID" : "346", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_1_fu_203.tmp_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215", "Parent" : "335", "Child" : ["348"],
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
	{"ID" : "348", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpackhi32_fu_215.tmp_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221", "Parent" : "335", "Child" : ["350"],
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
	{"ID" : "350", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_thash_180_fu_188.grp_haraka512_fu_244.grp_haraka512_perm_fu_205.grp_unpacklo32_fu_221.tmp_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201", "Parent" : "328", "Child" : ["352", "353", "354"],
		"CDFG" : "prf_addr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3154", "EstimateLatencyMax" : "3154",
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
					{"ID" : "354", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "354", "SubInstance" : "grp_haraka256_sk_fu_163", "Port" : "rc_sseed"}]}]},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.buf_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.outbuf_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163", "Parent" : "351", "Child" : ["355", "356", "357", "360", "362"],
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpacklo32_2155_fu_211"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpackhi32_1_1_fu_217"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_aesenc_1_fu_198", "Port" : "rk"}]}]},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.s_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.tmp_U", "Parent" : "354"},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198", "Parent" : "354", "Child" : ["358", "359"],
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
	{"ID" : "358", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.sbox_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_aesenc_1_fu_198.v_U", "Parent" : "357"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211", "Parent" : "354", "Child" : ["361"],
		"CDFG" : "unpacklo32_2155",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
	{"ID" : "361", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_unpacklo32_2155_fu_211.tmp_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217", "Parent" : "354", "Child" : ["363"],
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
	{"ID" : "363", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_prf_addr_fu_201.grp_haraka256_sk_fu_163.grp_unpackhi32_1_1_fu_217.tmp_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_wots_sign_fu_376.grp_wots_checksum_fu_214", "Parent" : "328",
		"CDFG" : "wots_checksum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "csum_base_w", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390", "Parent" : "1", "Child" : ["366", "367", "368"],
		"CDFG" : "tweak_constants",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "307281", "EstimateLatencyMax" : "307281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_2_fu_181"}],
		"Port" : [
			{"Name" : "pk_seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "in_r"}]},
			{"Name" : "haraka_rc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "rc"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_haraka_S_2_fu_181", "Port" : "sbox"}]},
			{"Name" : "rc_sseed", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.haraka_rc_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.buf_U", "Parent" : "365"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181", "Parent" : "365", "Child" : ["369", "370", "388"],
		"CDFG" : "haraka_S_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "151598", "EstimateLatencyMax" : "151598",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka_S_absorb_fu_142"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_154"}],
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "grp_haraka_S_absorb_fu_142", "Port" : "m"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_haraka512_perm_177_fu_154", "Port" : "sbox"},
					{"ID" : "370", "SubInstance" : "grp_haraka_S_absorb_fu_142", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_haraka512_perm_177_fu_154", "Port" : "rc"},
					{"ID" : "370", "SubInstance" : "grp_haraka_S_absorb_fu_142", "Port" : "rc"}]}]},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.s_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142", "Parent" : "368", "Child" : ["371", "372"],
		"CDFG" : "haraka_S_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7311", "EstimateLatencyMax" : "7311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_177_fu_183"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_haraka512_perm_177_fu_183", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_haraka512_perm_177_fu_183", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_haraka512_perm_177_fu_183", "Port" : "rc"}]}]},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.empty_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183", "Parent" : "370", "Child" : ["373", "374", "375", "378", "380", "382", "384", "386"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "375", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "375", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "373", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.s_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.tmp_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_aesenc_fu_161", "Parent" : "372", "Child" : ["376", "377"],
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
	{"ID" : "376", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_aesenc_fu_161.sbox_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_aesenc_fu_161.v_U", "Parent" : "375"},
	{"ID" : "378", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_2_fu_176", "Parent" : "372", "Child" : ["379"],
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
	{"ID" : "379", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_1_fu_190", "Parent" : "372", "Child" : ["381"],
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
	{"ID" : "381", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpackhi32_1_fu_196", "Parent" : "372", "Child" : ["383"],
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
	{"ID" : "383", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpackhi32_fu_208", "Parent" : "372", "Child" : ["385"],
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
	{"ID" : "385", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpackhi32_fu_208.tmp_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_fu_214", "Parent" : "372", "Child" : ["387"],
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
	{"ID" : "387", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka_S_absorb_fu_142.grp_haraka512_perm_177_fu_183.grp_unpacklo32_fu_214.tmp_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154", "Parent" : "368", "Child" : ["389", "390", "391", "394", "396", "398", "400", "402"],
		"CDFG" : "haraka512_perm_177",
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
					{"ID" : "391", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.s_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.tmp_U", "Parent" : "388"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_aesenc_fu_161", "Parent" : "388", "Child" : ["392", "393"],
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
	{"ID" : "392", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_aesenc_fu_161.sbox_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_aesenc_fu_161.v_U", "Parent" : "391"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_2_fu_176", "Parent" : "388", "Child" : ["395"],
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
	{"ID" : "395", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "394"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_1_fu_190", "Parent" : "388", "Child" : ["397"],
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
	{"ID" : "397", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpackhi32_1_fu_196", "Parent" : "388", "Child" : ["399"],
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
	{"ID" : "399", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpackhi32_fu_208", "Parent" : "388", "Child" : ["401"],
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
	{"ID" : "401", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpackhi32_fu_208.tmp_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_fu_214", "Parent" : "388", "Child" : ["403"],
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
	{"ID" : "403", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_tweak_constants_fu_390.grp_haraka_S_2_fu_181.grp_haraka512_perm_177_fu_154.grp_unpacklo32_fu_214.tmp_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404", "Parent" : "1", "Child" : ["405", "406", "418"],
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
					{"ID" : "406", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "V"},
					{"ID" : "418", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "ctr"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "sbox_1"},
					{"ID" : "418", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "Rcon"},
					{"ID" : "418", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_177", "Port" : "DRBG_ctx_Key"},
					{"ID" : "418", "SubInstance" : "grp_AES256_ECB_1_fu_189", "Port" : "key"}]},
			{"Name" : "DRBG_ctx_reseed_counter", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.block_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177", "Parent" : "404", "Child" : ["407", "408"],
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
					{"ID" : "408", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "ctr"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "Rcon"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_AES256_ECB_fu_171", "Port" : "key"}]}]},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.temp_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171", "Parent" : "406", "Child" : ["409", "410", "411", "414"],
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
					{"ID" : "411", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "Key"}]},
			{"Name" : "ctr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buffer_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_Cipher_fu_536", "Port" : "sbox_1"},
					{"ID" : "411", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_KeyExpansion_fu_525", "Port" : "Rcon"}]}]},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.ctx_RoundKey_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.test_U", "Parent" : "408"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525", "Parent" : "408", "Child" : ["412", "413"],
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
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525.sbox_1_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_KeyExpansion_fu_525.Rcon_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536", "Parent" : "408", "Child" : ["415", "416"],
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
					{"ID" : "415", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "state"},
					{"ID" : "416", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "state"}]},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "RoundKey"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "sbox_1"}]}]},
	{"ID" : "415", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_AddRoundKey_fu_238", "Parent" : "414",
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
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_SubBytes_fu_249", "Parent" : "414", "Child" : ["417"],
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
	{"ID" : "417", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_CTR_DRBG_Upda_fu_177.grp_AES256_ECB_fu_171.grp_Cipher_fu_536.grp_SubBytes_fu_249.sbox_1_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189", "Parent" : "404", "Child" : ["419", "420", "421", "424"],
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
					{"ID" : "421", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "Key"}]},
			{"Name" : "ctr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "424", "SubInstance" : "grp_Cipher_fu_512", "Port" : "sbox_1"},
					{"ID" : "421", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "sbox_1"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "421", "SubInstance" : "grp_KeyExpansion_fu_501", "Port" : "Rcon"}]}]},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.ctx_RoundKey_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.test_U", "Parent" : "418"},
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501", "Parent" : "418", "Child" : ["422", "423"],
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
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501.sbox_1_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_KeyExpansion_fu_501.Rcon_U", "Parent" : "421"},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512", "Parent" : "418", "Child" : ["425", "426"],
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
					{"ID" : "425", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "state"},
					{"ID" : "426", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "state"}]},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "425", "SubInstance" : "grp_AddRoundKey_fu_238", "Port" : "RoundKey"}]},
			{"Name" : "sbox_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "426", "SubInstance" : "grp_SubBytes_fu_249", "Port" : "sbox_1"}]}]},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_AddRoundKey_fu_238", "Parent" : "424",
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
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_SubBytes_fu_249", "Parent" : "424", "Child" : ["427"],
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
	{"ID" : "427", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_randombytes_fu_404.grp_AES256_ECB_1_fu_189.grp_Cipher_fu_512.grp_SubBytes_fu_249.sbox_1_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419", "Parent" : "1", "Child" : ["429"],
		"CDFG" : "haraka_S_inc_absorb_2",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_141"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_haraka512_perm_1_fu_141", "Port" : "rc"}]}]},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141", "Parent" : "428", "Child" : ["430", "431", "432", "435", "437", "439", "441", "443"],
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
					{"ID" : "432", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.s_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.tmp_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161", "Parent" : "429", "Child" : ["433", "434"],
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
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161.sbox_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_aesenc_fu_161.v_U", "Parent" : "432"},
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_2_fu_176", "Parent" : "429", "Child" : ["436"],
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
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "435"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_1_fu_190", "Parent" : "429", "Child" : ["438"],
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
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpackhi32_1_fu_196", "Parent" : "429", "Child" : ["440"],
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
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "439"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpackhi32_fu_208", "Parent" : "429", "Child" : ["442"],
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
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpackhi32_fu_208.tmp_U", "Parent" : "441"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_fu_214", "Parent" : "429", "Child" : ["444"],
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
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_2_fu_419.grp_haraka512_perm_1_fu_141.grp_unpacklo32_fu_214.tmp_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434", "Parent" : "1", "Child" : ["446"],
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_haraka512_perm_1_fu_133"}],
		"Port" : [
			{"Name" : "s_inc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "grp_haraka512_perm_1_fu_133", "Port" : "rc"}]}]},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133", "Parent" : "445", "Child" : ["447", "448", "449", "452", "454", "456", "458", "460"],
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
					{"ID" : "449", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.s_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.tmp_U", "Parent" : "446"},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161", "Parent" : "446", "Child" : ["450", "451"],
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
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161.sbox_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_aesenc_fu_161.v_U", "Parent" : "449"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_2_fu_176", "Parent" : "446", "Child" : ["453"],
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
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_1_fu_190", "Parent" : "446", "Child" : ["455"],
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
	{"ID" : "455", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpackhi32_1_fu_196", "Parent" : "446", "Child" : ["457"],
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
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "456"},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpackhi32_fu_208", "Parent" : "446", "Child" : ["459"],
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
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpackhi32_fu_208.tmp_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_fu_214", "Parent" : "446", "Child" : ["461"],
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
	{"ID" : "461", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_fu_434.grp_haraka512_perm_1_fu_133.grp_unpacklo32_fu_214.tmp_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446", "Parent" : "1", "Child" : ["463"],
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
					{"ID" : "463", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "out_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "463", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "463", "SubInstance" : "grp_haraka512_perm_1_fu_127", "Port" : "rc"}]}]},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127", "Parent" : "462", "Child" : ["464", "465", "466", "469", "471", "473", "475", "477"],
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
					{"ID" : "466", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "466", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "464", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.s_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.tmp_U", "Parent" : "463"},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161", "Parent" : "463", "Child" : ["467", "468"],
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
	{"ID" : "467", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.sbox_U", "Parent" : "466"},
	{"ID" : "468", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_aesenc_fu_161.v_U", "Parent" : "466"},
	{"ID" : "469", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176", "Parent" : "463", "Child" : ["470"],
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
	{"ID" : "470", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190", "Parent" : "463", "Child" : ["472"],
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
	{"ID" : "472", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "471"},
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196", "Parent" : "463", "Child" : ["474"],
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
	{"ID" : "474", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208", "Parent" : "463", "Child" : ["476"],
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
	{"ID" : "476", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpackhi32_fu_208.tmp_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214", "Parent" : "463", "Child" : ["478"],
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
	{"ID" : "478", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_absorb_1_fu_446.grp_haraka512_perm_1_fu_127.grp_unpacklo32_fu_214.tmp_U", "Parent" : "477"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456", "Parent" : "1", "Child" : ["480"],
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
					{"ID" : "480", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "out_r"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "480", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "480", "SubInstance" : "grp_haraka512_perm_1_fu_146", "Port" : "rc"}]}]},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146", "Parent" : "479", "Child" : ["481", "482", "483", "486", "488", "490", "492", "494"],
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
					{"ID" : "483", "SubInstance" : "grp_aesenc_fu_161", "Port" : "sbox"}]},
			{"Name" : "rc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "483", "SubInstance" : "grp_aesenc_fu_161", "Port" : "rk"}]}]},
	{"ID" : "481", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.s_U", "Parent" : "480"},
	{"ID" : "482", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.tmp_U", "Parent" : "480"},
	{"ID" : "483", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161", "Parent" : "480", "Child" : ["484", "485"],
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
	{"ID" : "484", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.sbox_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_aesenc_fu_161.v_U", "Parent" : "483"},
	{"ID" : "486", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176", "Parent" : "480", "Child" : ["487"],
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
	{"ID" : "487", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_2_fu_176.tmp_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190", "Parent" : "480", "Child" : ["489"],
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
	{"ID" : "489", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_1_fu_190.tmp_U", "Parent" : "488"},
	{"ID" : "490", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196", "Parent" : "480", "Child" : ["491"],
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
	{"ID" : "491", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpackhi32_1_fu_196.tmp_U", "Parent" : "490"},
	{"ID" : "492", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208", "Parent" : "480", "Child" : ["493"],
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
	{"ID" : "493", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpackhi32_fu_208.tmp_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214", "Parent" : "480", "Child" : ["495"],
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
	{"ID" : "495", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_signatur_fu_106.grp_haraka_S_inc_squeeze_fu_456.grp_haraka512_perm_1_fu_146.grp_unpacklo32_fu_214.tmp_U", "Parent" : "494"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign {
		sm {Type IO LastRead 4 FirstWrite -1}
		smlen {Type O LastRead -1 FirstWrite 2}
		m {Type I LastRead 4 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 4 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_V {Type IO LastRead 8 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_reseed_counter {Type IO LastRead 2 FirstWrite 2}}
	crypto_sign_signatur {
		sig {Type IO LastRead 4 FirstWrite -1}
		m {Type I LastRead 4 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 4 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_V {Type IO LastRead 8 FirstWrite -1}
		sbox_1 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead 3 FirstWrite -1}
		DRBG_ctx_reseed_counter {Type IO LastRead 2 FirstWrite 2}}
	fors_sign {
		sig {Type O LastRead -1 FirstWrite 4}
		pk {Type O LastRead -1 FirstWrite 6}
		m {Type I LastRead 8 FirstWrite -1}
		fors_addr {Type I LastRead 6 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	treehash_fors {
		root {Type O LastRead -1 FirstWrite 3}
		auth_path {Type O LastRead -1 FirstWrite 12}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type IO LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_178 {
		out_r {Type IO LastRead 3 FirstWrite 6}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S {
		out_r {Type O LastRead -1 FirstWrite 6}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	thash_279 {
		out_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	prf_addr_1 {
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
	unpacklo32_2155 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	thash_1 {
		out_r {Type O LastRead -1 FirstWrite 6}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1 {
		out_r {Type O LastRead -1 FirstWrite 6}
		in_r {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	unpacklo32_2155 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	treehash_wots {
		root {Type O LastRead -1 FirstWrite 3}
		auth_path {Type O LastRead -1 FirstWrite 4}
		leaf_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type IO LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	wots_gen_leaf {
		leaf {Type O LastRead -1 FirstWrite 6}
		leaf_offset {Type I LastRead 0 FirstWrite -1}
		addr_idx {Type I LastRead 0 FirstWrite -1}
		tree_addr {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_2 {
		out_r {Type O LastRead -1 FirstWrite 6}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1116 {
		out_r {Type O LastRead -1 FirstWrite 6}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	thash_179 {
		out_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	prf_addr_2 {
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
	unpacklo32_2155 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	thash_181 {
		out_r {Type IO LastRead 3 FirstWrite 6}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_1116 {
		out_r {Type O LastRead -1 FirstWrite 6}
		out_offset {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb_1 {
		s {Type IO LastRead 6 FirstWrite 3}
		m {Type I LastRead 3 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
		pk {Type I LastRead 4 FirstWrite -1}
		m {Type I LastRead 4 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_inc_absorb_2 {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
		m_offset {Type I LastRead 0 FirstWrite -1}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka_S_inc_absorb {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka_S_inc_absorb_3 {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka_S_inc_squeeze_1 {
		out_r {Type O LastRead -1 FirstWrite 3}
		s_inc {Type IO LastRead 7 FirstWrite 4}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	wots_sign {
		sig {Type IO LastRead 4 FirstWrite 4}
		msg {Type I LastRead 1 FirstWrite -1}
		addr {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type I LastRead 3 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	thash_180 {
		out_r {Type IO LastRead 4 FirstWrite 7}
		in_offset {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	unpacklo32_2155 {
		t {Type O LastRead -1 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}}
	unpackhi32_1_1 {
		a {Type IO LastRead 4 FirstWrite 6}}
	wots_checksum {
		csum_base_w {Type IO LastRead 1 FirstWrite 4}}
	tweak_constants {
		pk_seed {Type I LastRead 2 FirstWrite -1}
		haraka_rc {Type I LastRead -1 FirstWrite -1}
		rc {Type IO LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc_sseed {Type O LastRead -1 FirstWrite 5}}
	haraka_S_2 {
		out_r {Type O LastRead -1 FirstWrite 6}
		in_r {Type I LastRead 2 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka_S_absorb {
		s {Type IO LastRead 4 FirstWrite 3}
		m {Type I LastRead 2 FirstWrite -1}
		m_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		rc {Type I LastRead 3 FirstWrite -1}}
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka512_perm_177 {
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
		t {Type IO LastRead 4 FirstWrite 6}
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
		sbox_1 {Type I LastRead -1 FirstWrite -1}}
	haraka_S_inc_absorb_2 {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
		m_offset {Type I LastRead 0 FirstWrite -1}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	haraka_S_inc_absorb {
		s_inc {Type IO LastRead 5 FirstWrite 4}
		m {Type I LastRead 4 FirstWrite -1}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
		t {Type IO LastRead 4 FirstWrite 6}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sm { ap_memory {  { sm_address0 mem_address 1 16 }  { sm_ce0 mem_ce 1 1 }  { sm_we0 mem_we 1 1 }  { sm_d0 mem_din 1 8 }  { sm_q0 mem_dout 0 8 } } }
	smlen { ap_memory {  { smlen_address0 mem_address 1 1 }  { smlen_ce0 mem_ce 1 1 }  { smlen_we0 mem_we 1 1 }  { smlen_d0 mem_din 1 64 } } }
	m { ap_memory {  { m_address0 mem_address 1 12 }  { m_ce0 mem_ce 1 1 }  { m_q0 mem_dout 0 8 } } }
	mlen { ap_none {  { mlen in_data 0 64 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 7 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
	rc { ap_memory {  { rc_address0 mem_address 1 10 }  { rc_ce0 mem_ce 1 1 }  { rc_we0 mem_we 1 1 }  { rc_d0 mem_din 1 8 }  { rc_q0 mem_dout 0 8 } } }
	rc_sseed { ap_memory {  { rc_sseed_address0 mem_address 1 10 }  { rc_sseed_ce0 mem_ce 1 1 }  { rc_sseed_we0 mem_we 1 1 }  { rc_sseed_d0 mem_din 1 8 }  { rc_sseed_q0 mem_dout 0 8 } } }
	DRBG_ctx_V { ap_memory {  { DRBG_ctx_V_address0 mem_address 1 4 }  { DRBG_ctx_V_ce0 mem_ce 1 1 }  { DRBG_ctx_V_we0 mem_we 1 1 }  { DRBG_ctx_V_d0 mem_din 1 8 }  { DRBG_ctx_V_q0 mem_dout 0 8 }  { DRBG_ctx_V_address1 MemPortADDR2 1 4 }  { DRBG_ctx_V_ce1 MemPortCE2 1 1 }  { DRBG_ctx_V_q1 MemPortDOUT2 0 8 } } }
	DRBG_ctx_Key { ap_memory {  { DRBG_ctx_Key_address0 mem_address 1 5 }  { DRBG_ctx_Key_ce0 mem_ce 1 1 }  { DRBG_ctx_Key_we0 mem_we 1 1 }  { DRBG_ctx_Key_d0 mem_din 1 8 }  { DRBG_ctx_Key_q0 mem_dout 0 8 }  { DRBG_ctx_Key_address1 MemPortADDR2 1 5 }  { DRBG_ctx_Key_ce1 MemPortCE2 1 1 }  { DRBG_ctx_Key_q1 MemPortDOUT2 0 8 } } }
	DRBG_ctx_reseed_counter { ap_ovld {  { DRBG_ctx_reseed_counter_i in_data 0 32 }  { DRBG_ctx_reseed_counter_o out_data 1 32 }  { DRBG_ctx_reseed_counter_o_ap_vld out_vld 1 1 } } }
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
