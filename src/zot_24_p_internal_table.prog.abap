*&---------------------------------------------------------------------*
*& Report zot_24_p_internal_table
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_internal_table.


TYPES: BEGIN OF lty_malzeme,
       matnr TYPE matnr, "MalzemeId
       maktx TYPE maktx, "MalzemeAçıklaması
       matkl TYPE matkl, "MalzemeGrubu
       menge TYPE menge_d, "Miktar_
       meins TYPE meins, "Miktar_tipi
       END OF lty_malzeme.

DATA: lt_malzeme TYPE TABLE OF lty_malzeme,
      ls_malzeme TYPE lty_malzeme.

ls_malzeme-matnr = '01'.
ls_malzeme-maktx = 'Çatal'.
ls_malzeme-matkl = 'Mutfak'.
ls_malzeme-menge = 5.
ls_malzeme-meins = 'PS'.
APPEND ls_malzeme TO lt_malzeme.

ls_malzeme-matnr = '02'.
ls_malzeme-maktx = 'Kaşık'.
ls_malzeme-matkl = 'Mutfak'.
ls_malzeme-menge = 5.
ls_malzeme-meins = 'PS'.
APPEND ls_malzeme TO lt_malzeme.

ls_malzeme-matnr = '03'.
ls_malzeme-maktx = 'Bıçak'.
ls_malzeme-matkl = 'Mutfak'.
ls_malzeme-menge = 5.
ls_malzeme-meins = 'PS'.
APPEND ls_malzeme TO lt_malzeme.

ls_malzeme-matnr = '04'.
ls_malzeme-maktx = 'tabak'.
ls_malzeme-matkl = 'Mutfak'.
ls_malzeme-menge = 5.
ls_malzeme-meins = 'PS'.
APPEND ls_malzeme TO lt_malzeme.

ls_malzeme-matnr = '04'.
ls_malzeme-maktx = 'bardak'.
ls_malzeme-matkl = 'Mutfak'.
ls_malzeme-menge = 5.
ls_malzeme-meins = 'PS'.
APPEND ls_malzeme TO lt_malzeme.
