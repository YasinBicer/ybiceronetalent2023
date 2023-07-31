*&---------------------------------------------------------------------*
*& Report zot_24_p_egitim_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_24_p_egitim_03.

*DATA: gv_pers_id TYPE zot_24_e_ogrenci_id,
*      gv_pers_ad TYPE zot_24_e_ogrenci_ad,
*      gv_pers_soyad TYPE zot_24_e_ogrenci_soyad,
*      gv_ders_id TYPE zot_24_e_ders_id,
*      gv_puan TYPE zot_24_e_puan,

DATA: gs_personel_t TYPE zot_24_t_ogrenci,
      gt_personel_t TYPE TABLE OF zot_24_t_ogrenci.


CLEAR: gs_personel_t.
gs_personel_t-ogrenci_id = '01'.
gs_personel_t-ogrenci_soyad = 'Biçer'.
gs_personel_t-ogrenci_ad = 'Yasin'.
gs_personel_t-ders_id = '1'.
gs_personel_t-puan = '100'.
APPEND gs_personel_t TO gt_personel_t.

CLEAR: gs_personel_t.
gs_personel_t-ogrenci_id = '02'.
gs_personel_t-ogrenci_soyad = 'Öztürk'.
gs_personel_t-ogrenci_ad = 'Taha'.
gs_personel_t-ders_id = '1'.
gs_personel_t-puan = '70'.
APPEND gs_personel_t TO gt_personel_t.

"MODIFY zot_24_t_ogrenci FROM TABLE gt_personel_t.
*INSERT zot_24_t_ogrenci FROM gs_personel_t.

DELETE FROM zot_24_t_ogrenci WHERE ogrenci_id EQ 0.
WRITE 'Ekleme işlemi gerçekleştirildi'.
