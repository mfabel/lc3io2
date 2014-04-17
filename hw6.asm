; Mason Fabel
; 7 April 14
; CS 150
; Homework 5
;
	.ORIG x3000
; ----- Initialization
INIT	LEA R0, MSG_INIT
	PUTS
; ----- Main loop
MAIN	IN
	LD R1, VAL_OFF
	ADD R2, R0, R1
	LDR R0, R2, x0000
	JSRR R0
	BRnzp MAIN
; ----- Operator 'A'
OPER_LA	LEA R0, MSG_LA
	ST R7, VAR_R7
	PUTS
	LD R7, VAR_R7
	RET
; ----- Operator 'a'
OPER_SA	LEA R0, MSG_SA
	ST R7, VAR_R7
	PUTS
	LD R7, VAR_R7
	RET
; ----- Operator 'B'
OPER_LB	LEA R0, MSG_LB
	ST R7, VAR_R7
	PUTS
	LD R7, VAR_R7
	RET
; ----- Operator 'b'
OPER_SB	LEA R0, MSG_SB
	ST R7, VAR_R7
	PUTS
	LD R7, VAR_R7
	RET
; ----- Operator 'X'
OPER_LX	LEA R0, MSG_EXIT
	ST R7, VAR_R7
	PUTS
	HALT
; ----- Invalid operation
OPER_NO	LEA R0, MSG_UNKN
	ST R7, VAR_R7
	PUTS
	LD R7, VAR_R7
	RET
; ----- Constants
VAL_OFF	.FILL TABLE
; ----- Strings
MSG_INIT	.STRINGZ "__WELCOME__"
MSG_LA	.STRINGZ "A"
MSG_SA	.STRINGZ "a"
MSG_LB	.STRINGZ "B"
MSG_SB	.STRINGZ "b"
MSG_UNKN	.STRINGZ "?"
MSG_EXIT	.STRINGZ "finished."
; ----- Variables
VAR_A	.FILL xAAAA
VAR_B	.FILL xBBBB
VAR_R7	.BLKW 1
; ----- ASCII Vector Table
TABLE	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_LA
	.FILL OPER_LB
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_LX
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_SA
	.FILL OPER_SB
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.FILL OPER_NO
	.END
