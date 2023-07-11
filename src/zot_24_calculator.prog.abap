*&---------------------------------------------------------------------*
*& Report zot_24_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_calculator.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_val1 TYPE p DECIMALS 2,
              p_val2 TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_val3 TYPE p DECIMALS 2,
              p_val4 TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b2.

SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.
  PARAMETERS:
  p_exp AS CHECKBOX.
  .

SELECTION-SCREEN END OF BLOCK b3.



SELECTION-SCREEN BEGIN OF BLOCK b4 WITH FRAME TITLE TEXT-004.
  PARAMETERS:
    p_topla RADIOBUTTON GROUP g1,
    p_cıkar RADIOBUTTON GROUP g1,
    p_bol   RADIOBUTTON GROUP g1,
    p_carp  RADIOBUTTON GROUP g1,
    p_mod   RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b4.



START-OF-SELECTION.

  DATA: sonuc   TYPE p DECIMALS 2,
        sonuc_2 TYPE p DECIMALS 2.



  IF p_topla ='X'.
    sonuc = p_val1 + p_val2.

  ELSEIF p_cıkar ='X'.
    sonuc = p_val1 - p_val2.

  ELSEIF p_carp ='X'.
    sonuc = p_val1 *  p_val2.

  ELSEIF p_bol ='X'.
    TRY.
        sonuc = p_val1 /  p_val2.
      CATCH cx_sy_zerodivide.
        cl_demo_output=>write( |Sıfıra bölme işlemi yapılamaz!| ).
      CATCH cx_sy_arithmetic_overflow.
        cl_demo_output=>write( |Aritmetik ovewflow| ).
    ENDTRY.

  ELSEIF p_mod ='X'.
    TRY.
        sonuc = p_val1 MOD  p_val2.
      CATCH cx_sy_zerodivide.
        cl_demo_output=>write( |Sıfıra bölme işlemi yapılamaz!| ).
      CATCH cx_sy_arithmetic_overflow.
        cl_demo_output=>write( |Aritmetik ovewflow| ).
    ENDTRY.
  ENDIF.

  IF p_exp ='X'.
    sonuc_2 = p_val3 ** p_val4.
  ENDIF.



  IF sonuc <> 0.
    cl_demo_output=>write( |Sonuç= { sonuc }| ).
  ENDIF.

  IF sonuc_2 <> 0.
    cl_demo_output=>write( |Üs/Kök Sonuç= { sonuc_2 }| ).
  ENDIF.

  cl_demo_output=>display( ).
