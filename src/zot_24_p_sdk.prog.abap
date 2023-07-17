*&---------------------------------------------------------------------*
*& Report zot_24_p_sdk
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_sdk.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS: p_val_1 TYPE c LENGTH 3 OBLIGATORY,
              p_val_2 TYPE c LENGTH 1 OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.

if p_val_1 > 100.
COMMIT WORK AND WAIT.

    MESSAGE: 'Maksimum 100e kadar bir sayı giriniz!' TYPE 'E'.

    ROLLBACK WORK.

  ENDIF.



START-OF-SELECTION.

  DATA: gv_sayi TYPE i,
        gv_loop TYPE i.

  DO p_val_1 TIMES.

    gv_sayi = gv_sayi + 1.

    IF gv_loop < p_val_2.

      WRITE gv_sayi.

    ELSE.

      WRITE / gv_sayi.

      CLEAR: gv_loop.

    ENDIF.

    gv_loop += 1.

  ENDDO.
