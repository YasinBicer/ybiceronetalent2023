*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_02.

DATA gv_degisken1 TYPE i.
DATA gv_degisken2 TYPE i.
DATA gv_degisken3 TYPE i.

gv_degisken1 = 2.


CASE gv_degisken1.

  WHEN 1.
    WRITE 'Değişkenin değeri birdir'.

  WHEN 2.
    WRITE 'Değişkenin değeri ikidir'.

  WHEN 3.
    WRITE 'Değişkenin değeri üçdür'.

  WHEN 4.
    WRITE 'Değişkenin değeri dörtdür'.

  WHEN 5.
    WRITE 'Değişkenin değeri beşdir'.

  WHEN OTHERS.
    WRITE 'Hiçbir değere eşit değildir'.
ENDCASE.



DO 10 TIMES.
WRITE: / gv_degisken2,'DO'.
gv_degisken2 = gv_degisken2 + 1.
ENDDO.

WHILE gv_degisken3 < 10.
WRITE:/ gv_degisken3, 'WHILE'.
gv_degisken3 = gv_degisken3 + 1.
ENDWHILE.
