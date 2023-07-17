*&---------------------------------------------------------------------*
*& Report zot_24_p_fibo_dizilim_kirilim
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_fibo_dizilim_kirilim.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

PARAMETERS: p_sayi TYPE c LENGTH 5 OBLIGATORY.


SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.

 DATA: gv_n TYPE i.
       gv_n = 3.








DO p_sayi TIMES.
  gv_n  = ( gv_n - 1 ) + ( gv_n - 2 ).
  WRITE gv_n.

ENDDO.
