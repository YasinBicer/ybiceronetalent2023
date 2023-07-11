*&---------------------------------------------------------------------*
*& Report zot_24_data_type
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_data_type.

DATA: gv_ogrenci_adi(10) TYPE c,
      gv_ogrenci_soyadi TYPE char12,
      gv_tarih TYPE sy-datum.


*      gv_ogrenci_adi = 'Yasin'.
*      gv_ogrenci_soyadi = 'Biçer'.
*      gv_tarih = sy-datum.
*
*
*      cl_demo_output=>write( gv_ogrenci_adi ).
*      cl_demo_output=>write( gv_ogrenci_soyadi  ).
*      cl_demo_output=>write( gv_tarih ).
*      cl_demo_output=>write( |Öğrencinin adı:{ gv_ogrenci_adi } Öğrencinin soyadı:{ gv_ogrenci_soyadi }| ).



      DATA(gv_text) = 'HELLO WORLD'.
      DATA(gv_numeric) = strlen( gv_text ).

      DO gv_numeric times.
*        cl_demo_output=>write( 'hello world' ).

      ENDDO.


      DATA: lv_number1 TYPE ı value 10,
            lv_number2 TYPE ı value 5.

            DATA(lv_toplama) = lv_number1 + lv_number2.
            DATA(lv_cıkarma) = lv_number1 - lv_number2.
            DATA(lv_carpma) = lv_number1 * lv_number2.
            DATA(lv_bolme) = lv_number1 / lv_number2.

*           cl_demo_output=>write( lv_toplama ).
*           cl_demo_output=>write( lv_cıkarma ).
*           cl_demo_output=>write( lv_carpma ).
*           cl_demo_output=>write( lv_bolme ).

          lv_number2 = 0.

          TRY.
          lv_bolme = lv_number1 / lv_number2.
          CATCH cx_sy_zerodivide.
          cl_demo_output=>write( 'Bölme işlemi yapılamaz' ).
          CATCH cx_sy_arithmetic_overflow.
          cl_demo_output=>write( 'Aritmetik işlem yapılamaz' ).
          ENDTRY.


          SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
             PARAMETERS: p_val1 TYPE i,
                         p_val2 TYPE i.
          SELECTION-SCREEN END OF BLOCK b1.

          SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-001.
              PARAMETERS:p_topla RADIOBUTTON GROUP g1,
                         p_cıkar RADIOBUTTON GROUP g1,
                         p_bol RADIOBUTTON GROUP g1,
                         p_carp RADIOBUTTON GROUP g1.
          SELECTION-SCREEN END OF BLOCK b2.






      cl_demo_output=>display( ).
