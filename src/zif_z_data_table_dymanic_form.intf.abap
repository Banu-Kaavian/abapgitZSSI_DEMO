interface ZIF_Z_DATA_TABLE_DYMANIC_FORM
  public .


  types:
    MANDT type C length 000003 .
  types:
    NUM16 type N length 000016 .
  types:
    CHAR40 type C length 000040 .
  types SYUZEIT type T .
  types:
    UMZIN type P length 3  decimals 000000 .
  types:
    MEINS type C length 000003 .
  types:
    DZWERT type P length 7  decimals 000002 .
  types:
    begin of ZTEST_DTY_S,
      MANDT type MANDT,
      SERIAL_NO type NUM16,
      CUSTOMER_NAME type CHAR40,
      CUSTOMER_CLASS type INT1,
      DATE_OF_ENROL type DATS,
      TIME_OF_ENROL type SYUZEIT,
      QUANTITY_SOLD type UMZIN,
      QUANTITY_UNIT type MEINS,
      AMOUNT type DZWERT,
    end of ZTEST_DTY_S .
  types:
    ZTEST_DTY_TT                   type standard table of ZTEST_DTY_S                    with non-unique default key .
  types:
    BAPI_MTYPE type C length 000001 .
  types:
    SYMSGID type C length 000020 .
  types:
    SYMSGNO type N length 000003 .
  types:
    BAPI_MSG type C length 000220 .
  types:
    BALOGNR type C length 000020 .
  types:
    BALMNR type N length 000006 .
  types:
    SYMSGV type C length 000050 .
  types:
    BAPI_PARAM type C length 000032 .
  types:
    BAPI_FLD type C length 000030 .
  types:
    BAPILOGSYS type C length 000010 .
  types:
    begin of BAPIRET2,
      TYPE type BAPI_MTYPE,
      ID type SYMSGID,
      NUMBER type SYMSGNO,
      MESSAGE type BAPI_MSG,
      LOG_NO type BALOGNR,
      LOG_MSG_NO type BALMNR,
      MESSAGE_V1 type SYMSGV,
      MESSAGE_V2 type SYMSGV,
      MESSAGE_V3 type SYMSGV,
      MESSAGE_V4 type SYMSGV,
      PARAMETER type BAPI_PARAM,
      ROW type INT4,
      FIELD type BAPI_FLD,
      SYSTEM type BAPILOGSYS,
    end of BAPIRET2 .
  types:
    BAPIRET2_T                     type standard table of BAPIRET2                       with non-unique default key .
endinterface.
