
r
Command: %s
53*	vivadotcl2A
-synth_design -top sort -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
156162default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
sort2default:default2
 2default:default2J
4C:/CODexp/Lab6/apply/apply.srcs/sources_1/new/sort.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
CPU2default:default2
 2default:default2Q
;C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/CPU.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2#
instruction_mem2default:default2
 2default:default2
iC:/CODexp/Lab6/apply/apply.runs/synth_1/.Xil/Vivado-13148-LAPTOP-7OCFO5ER/realtime/instruction_mem_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
instruction_mem2default:default2
 2default:default2
12default:default2
12default:default2
iC:/CODexp/Lab6/apply/apply.runs/synth_1/.Xil/Vivado-13148-LAPTOP-7OCFO5ER/realtime/instruction_mem_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
cache2default:default2
 2default:default2K
5C:/CODexp/Lab6/apply/apply.srcs/sources_1/new/cache.v2default:default2
232default:default8@Z8-6157h px? 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
? 
?
%s
*synth2i
U	1: RAM is sensitive to asynchronous reset signal. this RTL style is not supported. 
2default:defaulth p
x
? 
S
%s
*synth2;
'RAM "tag_reg" dissolved into registers
2default:defaulth p
x
? 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
? 
?
%s
*synth2i
U	1: RAM is sensitive to asynchronous reset signal. this RTL style is not supported. 
2default:defaulth p
x
? 
U
%s
*synth2=
)RAM "value_reg" dissolved into registers
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cache2default:default2
 2default:default2
22default:default2
12default:default2K
5C:/CODexp/Lab6/apply/apply.srcs/sources_1/new/cache.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
IFID2default:default2
 2default:default2R
<C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/IFID.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IFID2default:default2
 2default:default2
32default:default2
12default:default2R
<C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/IFID.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	Registers2default:default2
 2default:default2W
AC:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/Registers.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Registers2default:default2
 2default:default2
42default:default2
12default:default2W
AC:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/Registers.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ImmGen2default:default2
 2default:default2T
>C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/ImmGen.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ImmGen2default:default2
 2default:default2
52default:default2
12default:default2T
>C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/ImmGen.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
IDEX2default:default2
 2default:default2R
<C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/IDEX.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IDEX2default:default2
 2default:default2
62default:default2
12default:default2R
<C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/IDEX.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Control2default:default2
 2default:default2U
?C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/Control.v2default:default2
232default:default8@Z8-6157h px? 
R
%s
*synth2:
&	Parameter ALUresult bound to: 2'b01 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter DataMem bound to: 2'b10 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter PCadd4 bound to: 2'b11 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter IDIE bound to: 2'b00 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Control2default:default2
 2default:default2
72default:default2
12default:default2U
?C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/Control.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2Q
;C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/ALU.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter ADD bound to: 4'b0010 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter SUB bound to: 4'b0110 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter AND bound to: 4'b0000 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter OR bound to: 4'b0001 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter XOR bound to: 4'b1111 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter LSHIF bound to: 4'b1000 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
82default:default2
12default:default2Q
;C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/ALU.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
EXMEM2default:default2
 2default:default2S
=C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/EXMEM.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
EXMEM2default:default2
 2default:default2
92default:default2
12default:default2S
=C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/EXMEM.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
data_mem2default:default2
 2default:default2x
bC:/CODexp/Lab6/apply/apply.runs/synth_1/.Xil/Vivado-13148-LAPTOP-7OCFO5ER/realtime/data_mem_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
data_mem2default:default2
 2default:default2
102default:default2
12default:default2x
bC:/CODexp/Lab6/apply/apply.runs/synth_1/.Xil/Vivado-13148-LAPTOP-7OCFO5ER/realtime/data_mem_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
MEMWB2default:default2
 2default:default2S
=C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/MEMWB.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MEMWB2default:default2
 2default:default2
112default:default2
12default:default2S
=C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/MEMWB.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

Forwarding2default:default2
 2default:default2X
BC:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/Forwarding.v2default:default2
232default:default8@Z8-6157h px? 
L
%s
*synth24
 	Parameter Ori bound to: 2'b00 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter from_m bound to: 2'b01 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter from_w bound to: 2'b10 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter from_f bound to: 2'b11 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Forwarding2default:default2
 2default:default2
122default:default2
12default:default2X
BC:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/Forwarding.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
WBIF2default:default2
 2default:default2R
<C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/WBIF.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
WBIF2default:default2
 2default:default2
132default:default2
12default:default2R
<C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/WBIF.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Hazard2default:default2
 2default:default2T
>C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/Hazard.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Hazard2default:default2
 2default:default2
142default:default2
12default:default2T
>C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/Hazard.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CPU2default:default2
 2default:default2
152default:default2
12default:default2Q
;C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/CPU.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
rx2default:default2
 2default:default2P
:C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/rx.v2default:default2
232default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter DIV_CNT bound to: 10'b1101100011 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter HDIV_CNT bound to: 10'b0110110001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RX_CNT bound to: 4'b1000 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter C_IDLE bound to: 1'b0 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter C_RX bound to: 1'b1 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2P
:C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/rx.v2default:default2
982default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rx2default:default2
 2default:default2
162default:default2
12default:default2P
:C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/rx.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
tx2default:default2
 2default:default2P
:C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/tx.v2default:default2
12default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter DIV_CNT bound to: 10'b1101100011 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter HDIV_CNT bound to: 10'b0110110001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter TX_CNT bound to: 4'b1001 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter C_IDLE bound to: 1'b0 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter C_TX bound to: 1'b1 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2P
:C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/tx.v2default:default2
902default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tx2default:default2
 2default:default2
172default:default2
12default:default2P
:C:/CODexp/Lab6/apply/apply.srcs/sources_1/imports/new/tx.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sort2default:default2
 2default:default2
182default:default2
12default:default2J
4C:/CODexp/Lab6/apply/apply.srcs/sources_1/new/sort.v2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0512default:default2
1013.2892default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
kc:/CODexp/Lab6/apply/apply.srcs/sources_1/ip/instruction_mem/instruction_mem/instruction_mem_in_context.xdc2default:default2
cpu/IM	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
kc:/CODexp/Lab6/apply/apply.srcs/sources_1/ip/instruction_mem/instruction_mem/instruction_mem_in_context.xdc2default:default2
cpu/IM	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2l
Vc:/CODexp/Lab6/apply/apply.srcs/sources_1/ip/data_mem/data_mem/data_mem_in_context.xdc2default:default2
cpu/DM	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2l
Vc:/CODexp/Lab6/apply/apply.srcs/sources_1/ip/data_mem/data_mem/data_mem_in_context.xdc2default:default2
cpu/DM	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2d
NC:/CODexp/Lab6/apply/apply.srcs/constrs_1/imports/Sources/Nexys4DDR_Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2d
NC:/CODexp/Lab6/apply/apply.srcs/constrs_1/imports/Sources/Nexys4DDR_Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2b
NC:/CODexp/Lab6/apply/apply.srcs/constrs_1/imports/Sources/Nexys4DDR_Master.xdc2default:default2*
.Xil/sort_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1013.2892default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1013.2892default:default2
0.0002default:defaultZ17-268h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
cpu/DM2default:default2
clk2default:default2
10.0002default:defaultZ38-316h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   33 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 27    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               27 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 15    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	             1024 Bit	(32 X 32 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input   33 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 29    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2j
V+------------+--------------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2k
W|Module Name | RTL Object         | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth px? 
?
%s*synth2j
V+------------+--------------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2k
W|sort        | cpu/RF/regfile_reg | Implied   | 32 x 32              | RAM32M x 12	 | 
2default:defaulth px? 
?
%s*synth2k
W+------------+--------------------+-----------+----------------------+--------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:35 ; elapsed = 00:00:36 . Memory (MB): peak = 1013.289 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:44 ; elapsed = 00:00:44 . Memory (MB): peak = 1125.617 ; gain = 112.328
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2j
V+------------+--------------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2k
W|Module Name | RTL Object         | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth p
x
? 
?
%s
*synth2j
V+------------+--------------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2k
W|sort        | cpu/RF/regfile_reg | Implied   | 32 x 32              | RAM32M x 12	 | 
2default:defaulth p
x
? 
?
%s
*synth2k
W+------------+--------------------+-----------+----------------------+--------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:50 ; elapsed = 00:00:50 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:50 ; elapsed = 00:00:50 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:50 ; elapsed = 00:00:50 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:50 ; elapsed = 00:00:50 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
Q
%s
*synth29
%+------+----------------+----------+
2default:defaulth p
x
? 
Q
%s
*synth29
%|      |BlackBox name   |Instances |
2default:defaulth p
x
? 
Q
%s
*synth29
%+------+----------------+----------+
2default:defaulth p
x
? 
Q
%s
*synth29
%|1     |instruction_mem |         1|
2default:defaulth p
x
? 
Q
%s
*synth29
%|2     |data_mem        |         1|
2default:defaulth p
x
? 
Q
%s
*synth29
%+------+----------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|      |Cell            |Count |
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|1     |data_mem        |     1|
2default:defaulth px? 
M
%s*synth25
!|2     |instruction_mem |     1|
2default:defaulth px? 
M
%s*synth25
!|3     |BUFG            |     1|
2default:defaulth px? 
M
%s*synth25
!|4     |CARRY4          |    47|
2default:defaulth px? 
M
%s*synth25
!|5     |LUT1            |     5|
2default:defaulth px? 
M
%s*synth25
!|6     |LUT2            |   105|
2default:defaulth px? 
M
%s*synth25
!|7     |LUT3            |    89|
2default:defaulth px? 
M
%s*synth25
!|8     |LUT4            |    84|
2default:defaulth px? 
M
%s*synth25
!|9     |LUT5            |   179|
2default:defaulth px? 
M
%s*synth25
!|10    |LUT6            |   495|
2default:defaulth px? 
M
%s*synth25
!|11    |MUXF7           |    54|
2default:defaulth px? 
M
%s*synth25
!|12    |RAM32M          |    12|
2default:defaulth px? 
M
%s*synth25
!|13    |FDCE            |    92|
2default:defaulth px? 
M
%s*synth25
!|14    |FDPE            |     5|
2default:defaulth px? 
M
%s*synth25
!|15    |FDRE            |  1019|
2default:defaulth px? 
M
%s*synth25
!|16    |IBUF            |     3|
2default:defaulth px? 
M
%s*synth25
!|17    |OBUF            |     1|
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:50 ; elapsed = 00:00:50 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:41 ; elapsed = 00:00:48 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:50 ; elapsed = 00:00:50 . Memory (MB): peak = 1135.781 ; gain = 122.492
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0422default:default2
1135.7812default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1132default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1135.7812default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2z
f  A total of 12 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 12 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:552default:default2
00:00:582default:default2
1135.7812default:default2
122.4922default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2D
0C:/CODexp/Lab6/apply/apply.runs/synth_1/sort.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2r
^Executing : report_utilization -file sort_utilization_synth.rpt -pb sort_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jun  9 17:57:00 20212default:defaultZ17-206h px? 


End Record