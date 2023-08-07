*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_10.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_num1 TYPE p DECIMALS 2,
            p_num2 TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.

PERFORM iki_sayinin_orani USING p_num1
                                p_num2.



FORM iki_sayinin_orani USING p_num1
                             p_num2.

DATA lv_sonuc TYPE p DECIMALS 2.

   IF p_num1 > p_num2.
   lv_sonuc = p_num1 / p_num2.
   ELSEIF p_num2 > p_num1.
   lv_sonuc = p_num2 / p_num1.
   ENDIF.

   WRITE: 'SONUÇ=', lv_sonuc.
ENDFORM.
