*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_05.


DATA: gv_num1 TYPE p LENGTH 2,
      gv_num2 TYPE p LENGTH 2.

gv_num1 = 10.
gv_num2 = 5.

FORM formul USING p_num1 p_num2.
   DATA lv_sonuc TYPE p LENGTH 2.
   lv_sonuc = p_num1 / p_num2.
   WRITE: 'SONUÇ=', lv_sonuc.
ENDFORM.

START-OF-SELECTION.
PERFORM formul USING gv_num1
                     gv_num2.
