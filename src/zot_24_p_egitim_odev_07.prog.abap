*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_07.


PARAMETERS: p_2ekle AS CHECKBOX,
            p_3ekle AS CHECKBOX,
            p_5ekle AS CHECKBOX.



START-OF-SELECTION.

DATA gv_degisken type i.


gv_degisken = 10.


IF p_2ekle = 'X'.
   ADD 2 TO gv_degisken.
   cl_demo_output=>write( |Sonuç= { gv_degisken }| ).

ELSEIF p_3ekle = 'X'.
   ADD 3 TO gv_degisken.
   cl_demo_output=>write( |Sonuç= { gv_degisken }| ).

ELSEIF p_5ekle = 'X'.
   ADD 5 TO gv_degisken.
   cl_demo_output=>write( |Sonuç= { gv_degisken }| ).
ENDIF.


cl_demo_output=>display( ).
