*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_02.

DATA gv_sayi TYPE C LENGTH 3 .




WRITE |2'ye bölünebilen tam sayılar:|.
DO 101 TIMES.
IF gv_sayi MOD 2 = 0.
WRITE gv_sayi.
ENDIF.
gv_sayi = gv_sayi + 1.
ENDDO.

clear:gv_sayi.
WRITE / |3'e bölünebilen tam sayılar:|.
DO 101 TIMES.
IF gv_sayi MOD 3 = 0.
WRITE gv_sayi.
ENDIF.
gv_sayi = gv_sayi + 1.
ENDDO.


clear:gv_sayi.
WRITE / |5'e bölünebilen tam sayılar:|.
DO 101 TIMES.
IF gv_sayi MOD 5 = 0.
WRITE gv_sayi.
ENDIF.
gv_sayi = gv_sayi + 1.
ENDDO.
