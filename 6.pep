BR 0x004D;Branch around data
;All variables and text are stored here
.ASCII "input a = \x00";0x0003
.ASCII "input b = \x00";0x000E
.ASCII "input c = \x00";0x0019
.ASCII "input d = \x00";0x0024
.ASCII "sum = \x00";0x002F
.ASCII "average = \x00";0x0036
.WORD 0xAAAA;0x0041, A
.WORD 0xBBBB;0x0043, B
.WORD 0xCCCC;0x0045, C
.WORD 0xDDDD;0x0047, D
.WORD 0x5555;0x0049, SUM
.WORD 0xAE6E;0x004B, AVE

DECI 0x0041,d;input A
DECI 0x0043,d;input B
DECI 0x0045,d;input C
DECI 0x0047,d;input D

STRO 0x0003,d;"Input a = "
DECO 0x0041,d;a
CHARO '\n',i;return character
STRO 0x000E,d;"Input b = "
DECO 0x0043,d;b
CHARO '\n',i;return character
STRO 0x0019,d;"Input c = "
DECO 0x0045,d;c
CHARO '\n',i;return character
STRO 0x0024,d;"Input d = "
DECO 0x0047,d;d
CHARO '\n',i;return character

LDA 0x0041,d;load A into AC
ADDA 0x0043,d;add B to AC
ADDA 0x0045,d;add C to AC
ADDA 0x0047,d;add D to AC
STA 0x0049,d;Store sum 

STRO 0x002F,d;"sum = "
DECO 0x0049,d;sum 
CHARO '\n',i;return character

LDA 0x0049,d; load sum into AC
ASRA;Arithmetic shift Right (divides by two)
ASRA;Arithmetic Shift Right (divides by two)
STA 0x004B,D;Store average

STRO 0x0036,d;"average = "
DECO 0x004B,d;ave
CHARO '\n',i;return character

CHARO '0',i
CHARO 'x',i
CHARO 'C',i
CHARO 'A',i
CHARO '5',i
CHARO 'E',i
CHARO '7',i
CHARO 'B',i

STOP
.END