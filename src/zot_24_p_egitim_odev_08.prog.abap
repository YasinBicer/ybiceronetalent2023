*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_08.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

PARAMETERS: p_deger1 TYPE p,
            p_deger2 TYPE p.

SELECTION-SCREEN END OF BLOCK b1.


SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_topla RADIOBUTTON GROUP g1,
            p_cıkar RADIOBUTTON GROUP g1,
            p_carp  RADIOBUTTON GROUP g1,
            p_bol   RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.




START-OF-SELECTION.


DATA gv_sonuc type p.

IF p_topla = 'X'.
 gv_sonuc = p_deger1 + p_deger2.
 cl_demo_output=>write( |Sonuç= { gv_sonuc }| ).

ELSEIF p_cikar = 'X'.
 gv_sonuc = p_deger1 - p_deger2.
 cl_demo_output=>write( |Sonuç= { gv_sonuc }| ).

ELSEIF p_carp = 'X'.
 gv_sonuc = p_deger1 * p_deger2.
 cl_demo_output=>write( |Sonuç= { gv_sonuc }| ).

ELSEIF p_bol = 'X'.
TRY.
gv_sonuc = p_deger1 / p_deger2.
CATCH cx_sy_zerodivide.
cl_demo_output=>write( |SIFIRA BÖLME HATASI YAKALANDI !| ).
ENDTRY.
ENDIF.


 cl_demo_output=>display( ).
