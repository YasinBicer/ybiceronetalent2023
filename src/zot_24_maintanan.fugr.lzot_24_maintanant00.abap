*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_24_TWITTER..................................*
DATA:  BEGIN OF STATUS_ZOT_24_TWITTER                .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_24_TWITTER                .
CONTROLS: TCTRL_ZOT_24_TWITTER
            TYPE TABLEVIEW USING SCREEN '0003'.
*...processing: ZOT_24_T_OGRENCI................................*
DATA:  BEGIN OF STATUS_ZOT_24_T_OGRENCI              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_24_T_OGRENCI              .
CONTROLS: TCTRL_ZOT_24_T_OGRENCI
            TYPE TABLEVIEW USING SCREEN '0004'.
*...processing: ZOT_24_T_PERSONE................................*
DATA:  BEGIN OF STATUS_ZOT_24_T_PERSONE              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_24_T_PERSONE              .
CONTROLS: TCTRL_ZOT_24_T_PERSONE
            TYPE TABLEVIEW USING SCREEN '0001'.
*...processing: ZOT_24_T_P_MAST.................................*
DATA:  BEGIN OF STATUS_ZOT_24_T_P_MAST               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_24_T_P_MAST               .
CONTROLS: TCTRL_ZOT_24_T_P_MAST
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZOT_24_TWITTER                .
TABLES: *ZOT_24_T_OGRENCI              .
TABLES: *ZOT_24_T_PERSONE              .
TABLES: *ZOT_24_T_P_MAST               .
TABLES: ZOT_24_TWITTER                 .
TABLES: ZOT_24_T_OGRENCI               .
TABLES: ZOT_24_T_PERSONE               .
TABLES: ZOT_24_T_P_MAST                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
