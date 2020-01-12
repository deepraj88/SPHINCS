set C_TypeInfoList {{ 
"crypto_sign_keypair" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"pk": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }, {"sk": [[], {"array": [ {"scalar": "unsigned char"}, [128]]}] }],["0","1","2"],""],
 "0": [ "rc_sseed", [[], {"array": [ {"scalar": "unsigned char"}, [40,16]]}],""],
 "1": [ "rc", [[], {"array": [ {"scalar": "unsigned char"}, [40,16]]}],""],
 "2": [ "DRBG_ctx", [[],"3"],""], 
"3": [ "AES256_CTR_DRBG_struct", {"typedef": [[[],"4"],""]}], 
"4": [ "", {"struct": [[],[],[{ "Key": [[],  {"array": [ {"scalar": "unsigned char"}, [32]]}]},{ "V": [[],  {"array": [ {"scalar": "unsigned char"}, [16]]}]},{ "reseed_counter": [[],  {"scalar": "int"}]}],""]}]
}}
