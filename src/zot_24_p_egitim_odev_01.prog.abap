*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_01.

DATA gv_sayi TYPE c LENGTH 3.

gv_sayi = 0.

DO 101 TIMES.

IF gv_sayi MOD 2 = 0.
WRITE:/ 'Çift sayı:',gv_sayi.

ELSE.
WRITE:/ 'Tek  sayı:',gv_sayi.

ENDIF.
gv_sayi = gv_sayi + 1.
ENDDO.
