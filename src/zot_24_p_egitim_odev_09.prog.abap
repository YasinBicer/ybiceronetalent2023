*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_09.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_deger1 type p,
            p_deger2 type p.
SELECTION-SCREEN END OF BLOCK b1.



SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_sum RADIOBUTTON GROUP g1,
            p_sub RADIOBUTTON GROUP g1,
            p_divide RADIOBUTTON GROUP g1,
            p_multi RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.



SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_10x AS CHECKBOX,
            p_2div AS CHECKBOX.
SELECTION-SCREEN END OF BLOCK b3.



START-OF-SELECTION.

DATA gv_sonuc TYPE p.

IF p_sum = 'X'.
    gv_sonuc = p_deger1 + p_deger2.


ELSEIF p_sub = 'X'.
    gv_sonuc = p_deger1 - p_deger2.



ELSEIF p_divide = 'X'.
   IF p_deger2 = 0.
   TRY.
    gv_sonuc = p_deger1 / p_deger2.
   CATCH cx_sy_zerodivide.
   cl_demo_output=>write( |SIFIRA BÖLME HATASI YAKALANDI!|  ).
   ENDTRY.
   ELSE.
   gv_sonuc = p_deger1 / p_deger2.
   WRITE gv_sonuc.
   ENDIF.


ELSEIF p_multi = 'X'.
    gv_sonuc = p_deger1 * p_deger2.

ENDIF.


IF p_10x = 'X'.
   gv_sonuc = gv_sonuc * 10.

ELSEIF p_2div = 'X'.
       gv_sonuc = gv_sonuc / 2.

ENDIF.


cl_demo_output=>display( |{ gv_sonuc }| ).
