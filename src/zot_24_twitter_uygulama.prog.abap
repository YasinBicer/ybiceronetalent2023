*&---------------------------------------------------------------------*
*& Report zot_24_twitter_uygulama
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_twitter_uygulama.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_ID TYPE i ,
              p_TWEET TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS:
    p_t_at RADIOBUTTON GROUP g1,
    p_t_dgtr RADIOBUTTON GROUP g1,
    p_t_sil   RADIOBUTTON GROUP g1,
    p_t_gstr RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.
