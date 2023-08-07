*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_12.


DATA gv_num1 TYPE i.
gv_num1 = 10.



PERFORM: 7ekle,
         7ekle,
         7ekle,
         3carp,
         7ekle,
         4cikar,
         4cikar,
         4cikar,
         4cikar,
         2bol.

WRITE gv_num1.

END-OF-SELECTION.

FORM 7ekle.
gv_num1 = gv_num1 + 7.
ENDFORM.

FORM 4cikar.
gv_num1 = gv_num1 - 4.
ENDFORM.

FORM 2bol.
gv_num1 = gv_num1 / 2.
ENDFORM.

FORM 3carp.
gv_num1 = gv_num1 * 3.
ENDFORM.
