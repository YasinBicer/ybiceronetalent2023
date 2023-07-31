*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_odev_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_odev_04.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

PARAMETERS p_not TYPE i.

SELECTION-SCREEN END OF BLOCK b1.




START-OF-SELECTION.

IF p_not < 0 OR p_not > 100.
  WRITE 'YANLIŞ NOT GİRDİNİZ'.

ELSEIF p_not >= 0 AND p_not < 20.
  WRITE 'HARF NOTUNUZ FF'.

ELSEIF p_not >= 20 AND p_not < 40.
  WRITE 'HARF NOTUNUZ DD'.

ELSEIF p_not >= 40 AND p_not < 60.
  WRITE 'HARF NOTUNUZ CC'.

ELSEIF p_not >= 60 AND p_not < 80.
  WRITE 'HARF NOTUNUZ BB'.

ELSEIF p_not >= 80 AND p_not <= 100.
  WRITE 'HARF NOTUNUZ AA'.

ENDIF.
