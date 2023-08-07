*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_13
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_13.

PARAMETERS: p_user TYPE c LENGTH 10,
            p_pass TYPE C LENGTH 10.


AT SELECTION-SCREEN OUTPUT.
  LOOP AT SCREEN.
    IF screen-name EQ 'P_PASS'.
     screen-invisible = 1.
     MODIFY SCREEN.
    ENDIF.
  ENDLOOP.


START-OF-SELECTION.

IF p_user = 'SAPUSER' AND p_pass ='12345678'.
WRITE 'BAŞARILI BİR ŞEKİLDE SİSTEME BAĞLANDINIZ'.
ELSE.
WRITE 'VERİLERİNİZİ GÖZDEN GEÇİRİN'.
ENDIF.
