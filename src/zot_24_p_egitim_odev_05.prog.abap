*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_05.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

PARAMETERS: p_sayi1 TYPE i,
            p_sayi2 TYPE i,
            p_sayi3 TYPE i.

SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.

IF ( p_sayi1 > p_sayi2 AND p_sayi1 < p_sayi3 ) OR ( p_sayi1 > p_sayi3 AND p_sayi1 < p_sayi2 ).
   WRITE |{ p_sayi1 } Diğer sayıların arasındadır|.


ELSEIF ( p_sayi2 > p_sayi1 AND p_sayi2 < p_sayi3 ) OR ( p_sayi2 > p_sayi3 AND p_sayi2 < p_sayi1 ).
   WRITE |{ p_sayi2 } Diğer sayıların arasındadır|.


ELSEIF ( p_sayi3 > p_sayi1 AND p_sayi3 < p_sayi2 ) OR ( p_sayi3 > p_sayi2 AND p_sayi3 < p_sayi1 ).
   WRITE |{ p_sayi3 } Diğer sayıların arasındadır|.


ELSE.
  WRITE 'GEÇERLİ SAYILAR GİRİNİZ'.

ENDIF.
