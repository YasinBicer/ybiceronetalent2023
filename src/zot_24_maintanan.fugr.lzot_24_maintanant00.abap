*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_24_T_PERSONE................................*
DATA:  BEGIN OF STATUS_ZOT_24_T_PERSONE              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_24_T_PERSONE              .
CONTROLS: TCTRL_ZOT_24_T_PERSONE
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZOT_24_T_PERSONE              .
TABLES: ZOT_24_T_PERSONE               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
