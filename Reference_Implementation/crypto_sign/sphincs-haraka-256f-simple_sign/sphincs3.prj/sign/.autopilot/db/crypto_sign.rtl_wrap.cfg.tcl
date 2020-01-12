set lang "C"
set moduleName "crypto_sign"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortName6 "rc_sseed"
set BitWidth6 "5120"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "0"
set Reference6 "0"
set Initializer6 ""
set External6 0
set Dims6 [list  40 16]
set Interface6 "wire"
set NameSpace6 [list ]
set DataType6 "unsigned char"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6 $Initializer6 $External6 $NameSpace6]
lappend globalVariable $Port6
set PortName7 "rc"
set BitWidth7 "5120"
set ArrayOpt7 ""
set Const7 "0"
set Volatile7 "0"
set Pointer7 "0"
set Reference7 "0"
set Initializer7 ""
set External7 0
set Dims7 [list  40 16]
set Interface7 "wire"
set NameSpace7 [list ]
set DataType7 "unsigned char"
set Port7 [list $PortName7 $Interface7 $DataType7 $Pointer7 $Dims7 $Const7 $Volatile7 $ArrayOpt7 $Initializer7 $External7 $NameSpace7]
lappend globalVariable $Port7
set PortName8 "DRBG_ctx"
set BitWidth8 "416"
set ArrayOpt8 ""
set Const8 "0"
set Volatile8 "0"
set Pointer8 "0"
set Reference8 "0"
set Initializer8 ""
set External8 0
set Dims8 [list 0]
set Interface8 "wire"
set NameSpace8 [list ]
set structMem8 ""
set PortName80 "Key"
set BitWidth80 "256"
set ArrayOpt80 ""
set Const80 "0"
set Volatile80 "0"
set Pointer80 "0"
set Reference80 "0"
set Dims80 [list  32]
set Interface80 "wire"
set DataType80 "unsigned char"
set Port80 [list $PortName80 $Interface80 $DataType80 $Pointer80 $Dims80 $Const80 $Volatile80 $ArrayOpt80]
lappend structMem8 $Port80
set PortName81 "V"
set BitWidth81 "128"
set ArrayOpt81 ""
set Const81 "0"
set Volatile81 "0"
set Pointer81 "0"
set Reference81 "0"
set Dims81 [list  16]
set Interface81 "wire"
set DataType81 "unsigned char"
set Port81 [list $PortName81 $Interface81 $DataType81 $Pointer81 $Dims81 $Const81 $Volatile81 $ArrayOpt81]
lappend structMem8 $Port81
set PortName82 "reseed_counter"
set BitWidth82 "32"
set ArrayOpt82 ""
set Const82 "0"
set Volatile82 "0"
set Pointer82 "0"
set Reference82 "0"
set Dims82 [list 0]
set Interface82 "wire"
set DataType82 "int"
set Port82 [list $PortName82 $Interface82 $DataType82 $Pointer82 $Dims82 $Const82 $Volatile82 $ArrayOpt82]
lappend structMem8 $Port82
set structParameter8 [list ]
set structArgument8 [list ]
set NameSpace8 [list ]
set structIsPacked8 "0"
set DataType8 [list "AES256_CTR_DRBG_struct" "struct " $structMem8 0 0 $structParameter8 $structArgument8 $NameSpace8 $structIsPacked8]
set Port8 [list $PortName8 $Interface8 $DataType8 $Pointer8 $Dims8 $Const8 $Volatile8 $ArrayOpt8 $Initializer8 $External8 $NameSpace8]
lappend globalVariable $Port8
set PortList ""
set PortName1 "sm"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 52516]
set Interface1 "wire"
set DataType1 "unsigned char"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "smlen"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 1]
set Interface2 "wire"
set DataType2 "long long unsigned int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "m"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "1"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 3300]
set Interface3 "wire"
set DataType3 "unsigned char"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "mlen"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set DataType4 "long long unsigned int"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "sk"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "1"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Dims5 [list 128]
set Interface5 "wire"
set DataType5 "unsigned char"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName0 "return"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "int"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
