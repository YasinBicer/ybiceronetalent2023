*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_03.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

PARAMETERS p_sayi TYPE i.

SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.

IF p_sayi < 0.
   WRITE 'GİRİLEN SAYI 0 dan küçüktür'.

ELSEIF p_sayi >= 0 AND p_sayi < 25.
   WRITE 'GİRİLEN SAYI 0 İLA 25 ARASINDADIR'.

ELSEIF p_sayi >= 25 AND p_sayi < 50.
   WRITE 'GİRİLEN SAYI 25 İLA 50 ARASINDADIR'.

ELSEIF p_sayi >= 50 AND p_sayi < 75.
   WRITE 'GİRİLEN SAYI 50 İLA 75 ARASINDADIR'.

ELSEIF p_sayi >= 75 AND p_sayi < 100.
   WRITE 'GİRİLEN SAYI 75 İLA 100 ARASINDADIR'.

ELSE.
 WRITE 'GİRİLEN SAYI 100 den BÜYÜKTÜR'.

ENDIF.
