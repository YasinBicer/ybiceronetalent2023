*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_01.

DATA: gv_degisken1 TYPE i,
      gv_degisken2 TYPE i,
      gv_sonuc TYPE i.


      START-OF-SELECTION.

      gv_degisken1 = 40.
      gv_degisken2 = 0.




*TRY.
*if gv_degisken2 <> 0.
*  gv_sonuc = gv_degisken1 / gv_degisken2.
*  WRITE gv_sonuc.
*
*ELSE.
*  RAISE EXCEPTION TYPE cx_sy_zerodivide.
*ENDIF.
*CATCH cx_sy_zerodivide.
*  WRITE 'Sıfıra bölünme hatası yakalandı'.
*ENDTRY.



*IF gv_degisken2 = 0.
*    TRY.
*        gv_sonuc = gv_degisken1 / gv_degisken2.
*      CATCH cx_sy_zerodivide.
*        WRITE 'Sıfıra bölme işlemi yapılamaz'.
*      CATCH cx_sy_arithmetic_overflow.
*        cl_demo_output=>write( |Aritmetik ovewflow| ).
*    ENDTRY.
*    ELSE.
*    gv_sonuc = gv_degisken1 / gv_degisken2.
*    WRITE gv_sonuc.
* ENDIF.

IF gv_degisken2 = 0.
    TRY.
        gv_sonuc = gv_degisken1 / gv_degisken2.
      CATCH cx_sy_zerodivide.
        WRITE 'Sıfıra bölme işlemi yapılamaz'.
      CATCH cx_sy_arithmetic_overflow.
        cl_demo_output=>write( |Aritmetik ovewflow| ).
    ENDTRY.

ELSE.
    gv_sonuc = gv_degisken1 / gv_degisken2.
    WRITE gv_sonuc.
 ENDIF.
