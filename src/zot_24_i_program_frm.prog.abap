*&---------------------------------------------------------------------*
*& Include zot_24_i_program_frm
*&---------------------------------------------------------------------*

FORM get_data.
ENDFORM.

FORM set_fcat.
ENDFORM.

FORM set_layout.

CLEAR:gs_layout.
gs_layout-cwidth_opt = abap_true.
gs_layout-no_toolbar = abap_true.
gs_layout-info_fname = 'LINE_COLOR'.

ENDFORM.
