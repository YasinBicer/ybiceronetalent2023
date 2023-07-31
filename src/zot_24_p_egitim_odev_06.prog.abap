*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_06.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

PARAMETERS: p_sayi1 TYPE i,
            p_sayi2 TYPE i,
            p_islem TYPE C.


SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.

DATA gv_sonuc TYPE i.



CASE p_islem.

  WHEN '+'.
   gv_sonuc = p_sayi1 + p_sayi2.

  WHEN '-'.
   gv_sonuc = p_sayi1 - p_sayi2.

  WHEN '*'.
   gv_sonuc = p_sayi1 * p_sayi2.

  WHEN '/'.
  IF p_sayi2 <> 0.
  TRY.
   gv_sonuc = p_sayi1 / p_sayi2.
      CATCH cx_sy_zerodivide.
        cl_demo_output=>write( |Sıfıra bölme işlemi yapılamaz!| ).
      CATCH cx_sy_arithmetic_overflow.
        cl_demo_output=>write( |Aritmetik ovewflow| ).
 ENDTRY.
 ENDIF.
ENDCASE.

WRITE |SONUÇ= { gv_sonuc }|.


*ELSE.
*  RAISE EXCEPTION TYPE cx_sy_zerodivide.
*  ENDIF.
*  CATCH cx_sy_zerodivide.
*      cl_demo_output=>write( |Sıfıra bölme işlemi yapılamaz!| ).
