*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 24.04.2024 at 14:23:29
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZTEST_DTY.......................................*
DATA:  BEGIN OF STATUS_ZTEST_DTY                     .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTEST_DTY                     .
CONTROLS: TCTRL_ZTEST_DTY
            TYPE TABLEVIEW USING SCREEN '9000'.
*.........table declarations:.................................*
TABLES: *ZTEST_DTY                     .
TABLES: ZTEST_DTY                      .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
