$ADR 0000h		;����� ������ ���������

MVI B,0			;����� �������� B
	
MVI D,117		;�������� ��������� � ������� D 0�75h (0111_0101b)
MVI E,164		;�������� ��������� � ������� E 0�A4h (1010_0100b)

CALL MPL		;����� ������������ 
JMP END			;���������� ������ ���������

MPL:			;������ ������������	
MVI A,0			;����� ������������ 
MVI B,0			;����� �������� B
MVI C,0			;����� �������� C
RAR				;���� CY ����� ������������ ������ �������� ������������ ������
MVI H,00000001b	;��������� � ������� H ��������� ����
MOV A,H			;�������� ����������� �������� H � �����������
BEGMPL:			;�������� ������������
ANA E			;���������� ��������� ����������� �������� E � ������������ � ����������� ����� � ������������
MOV A,B			;�������� ����������� �������� � � �����������
JZ MVSUM		;��� ��������� ���� ������� � �������� ������
ADD D			;�������� ����������� �������� D � ���������� ������������ � ���������� ����� � ������������
MVSUM:			;�������� ������
RAR				;����������� ����� �������� ������������ ������
MOV B,A			;�������� ����������� ������������ � ������� �
MOV A,C			;�������� ����������� �������� � � �����������
RAR				;����������� ����� �������� ������������ ������
MOV C,A			;�������� ����������� ������������ � ������� �
MOV A,H			;�������� ����������� �������� H � �����������
RAL				;����������� ����� �������� ������������ �����
MOV H,A			;�������� ����������� ������������ � ������� H
RC				;������� �� ������������ ���� ���� �������� ���� ����� �������
JMP BEGMPL		;��������� �������� ������������

END: NOP		;����� ���������