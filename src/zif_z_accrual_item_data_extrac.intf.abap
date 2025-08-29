interface ZIF_Z_ACCRUAL_ITEM_DATA_EXTRAC
  public .


  types:
    ACE_COMP type C length 000004 .
  types:
    ACE_LOGSYS type C length 000010 .
  types:
    ACE_BUKRS type C length 000004 .
  types:
    ACE_OBJ_ID type C length 000032 .
  types:
    ACE_SUBOBJ_ID type C length 000032 .
  types:
    begin of ACESOBJ_KEY,
      COMP type ACE_COMP,
      LOGSYS type ACE_LOGSYS,
      BUKRS type ACE_BUKRS,
      REF_KEY type ACE_OBJ_ID,
      REF_SUBKEY type ACE_SUBOBJ_ID,
    end of ACESOBJ_KEY .
  types:
    ACE_ITEMTYPE type C length 000011 .
  types:
    FINS_LEDGER type C length 000002 .
  types:
    begin of ACESOBJ_ITEM_TIKEY.
    include type ACESOBJ_KEY.
    types:
      ITEMTYPE type ACE_ITEMTYPE,
      RLDNR type FINS_LEDGER,
    end of ACESOBJ_ITEM_TIKEY .
  types:
    begin of ACESOBJ_ITEM_KEY.
    include type ACESOBJ_ITEM_TIKEY.
    types:
      DATE_TO type DATS,
    end of ACESOBJ_ITEM_KEY .
  types:
    ACE_TOTAL_QUANTITY type P length 8  decimals 000003 .
  types:
    ACE_UNIT type C length 000003 .
  types:
    ACEDS_ACRMETHOD type C length 000010 .
  types:
    ACEDS_XOBSOLETE type C length 000001 .
  types:
    begin of ACESOBJ_ITEM_ATTRIBUTES,
      QUANTITY type ACE_TOTAL_QUANTITY,
      UNIT type ACE_UNIT,
      ACRMETHOD type ACEDS_ACRMETHOD,
      LIFE_START_DATE type DATS,
      LIFE_END_DATE type DATS,
      XOBSOLETE type ACEDS_XOBSOLETE,
    end of ACESOBJ_ITEM_ATTRIBUTES .
  types:
    ACE_ACCNT_INCEPTION_OFFSETTING type C length 000010 .
  types:
    ACE_ACCNT_INCEPTION_ACCRUAL type C length 000010 .
  types:
    ACE_ACCNT_PERIODIC_ACCRUAL type C length 000010 .
  types:
    ACE_ACCNT_PERIODIC_OFFSETTING type C length 000010 .
  types:
    ACE_ACCNT_FINAL_ACCRUAL type C length 000010 .
  types:
    ACE_ACCNT_FINAL_OFFSETTING type C length 000010 .
  types:
    begin of ACE_ACCOUNTS,
      INC_OFFSTNG_ACCNT type ACE_ACCNT_INCEPTION_OFFSETTING,
      INC_ACCR_ACCNT type ACE_ACCNT_INCEPTION_ACCRUAL,
      PER_ACCR_ACCNT type ACE_ACCNT_PERIODIC_ACCRUAL,
      PER_OFFSTNG_ACCNT type ACE_ACCNT_PERIODIC_OFFSETTING,
      FIN_ACCR_ACCNT type ACE_ACCNT_FINAL_ACCRUAL,
      FIN_OFFSTNG_ACCNT type ACE_ACCNT_FINAL_OFFSETTING,
    end of ACE_ACCOUNTS .
  types:
    ACEPS_INC_BLART type C length 000002 .
  types:
    ACEPS_PER_BLART type C length 000002 .
  types:
    ACEPS_FIN_BLART type C length 000002 .
  types:
    begin of ACE_DOC_TYPES,
      INC_DOC_TYPE type ACEPS_INC_BLART,
      PER_DOC_TYPE type ACEPS_PER_BLART,
      FIN_DOC_TYPE type ACEPS_FIN_BLART,
    end of ACE_DOC_TYPES .
  types:
    FINS_CURRW type C length 000005 .
  types:
    FINS_CURRH type C length 000005 .
  types:
    FINS_CURRK type C length 000005 .
  types:
    FINS_CURR1 type C length 000005 .
  types:
    FINS_CURR2 type C length 000005 .
  types:
    FINS_CURR3 type C length 000005 .
  types:
    FINS_CURR4 type C length 000005 .
  types:
    FINS_CURR5 type C length 000005 .
  types:
    FINS_CURR6 type C length 000005 .
  types:
    FINS_CURR7 type C length 000005 .
  types:
    FINS_CURR8 type C length 000005 .
  types:
    begin of ACES_CURRKEYS,
      RWCUR type FINS_CURRW,
      RHCUR type FINS_CURRH,
      RKCUR type FINS_CURRK,
      ROCUR type FINS_CURR1,
      RVCUR type FINS_CURR2,
      RBCUR type FINS_CURR3,
      RCCUR type FINS_CURR4,
      RDCUR type FINS_CURR5,
      RECUR type FINS_CURR6,
      RFCUR type FINS_CURR7,
      RGCUR type FINS_CURR8,
    end of ACES_CURRKEYS .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_WCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_HCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_KCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_OCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_VCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_BCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_CCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_DCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_ECURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_FCURR type P length 12  decimals 000002 .
  types:
    ACE_TOTAL_PER_ACCR_AMNT_GCURR type P length 12  decimals 000002 .
  types:
    begin of ACE_TOTAL_ACCR_AMOUNTS,
      TOTAL_ACCR_AMNT_WSL type ACE_TOTAL_PER_ACCR_AMNT_WCURR,
      TOTAL_ACCR_AMNT_HSL type ACE_TOTAL_PER_ACCR_AMNT_HCURR,
      TOTAL_ACCR_AMNT_KSL type ACE_TOTAL_PER_ACCR_AMNT_KCURR,
      TOTAL_ACCR_AMNT_OSL type ACE_TOTAL_PER_ACCR_AMNT_OCURR,
      TOTAL_ACCR_AMNT_VSL type ACE_TOTAL_PER_ACCR_AMNT_VCURR,
      TOTAL_ACCR_AMNT_BSL type ACE_TOTAL_PER_ACCR_AMNT_BCURR,
      TOTAL_ACCR_AMNT_CSL type ACE_TOTAL_PER_ACCR_AMNT_CCURR,
      TOTAL_ACCR_AMNT_DSL type ACE_TOTAL_PER_ACCR_AMNT_DCURR,
      TOTAL_ACCR_AMNT_ESL type ACE_TOTAL_PER_ACCR_AMNT_ECURR,
      TOTAL_ACCR_AMNT_FSL type ACE_TOTAL_PER_ACCR_AMNT_FCURR,
      TOTAL_ACCR_AMNT_GSL type ACE_TOTAL_PER_ACCR_AMNT_GCURR.
    include type ACES_CURRKEYS as TTL106 RENAMING WITH SUFFIX TTL.
    types:
    end of ACE_TOTAL_ACCR_AMOUNTS .
  types:
    MANDT type C length 000003 .
  types:
    ACE_HZSTMP_OBSOLETE type P length 9  decimals 000000 .
  types:
    begin of ACESOBJ_ITEM,
      MANDT type MANDT.
    include type ACESOBJ_ITEM_KEY.
    types:
      DATE_FROM type DATS.
    include type ACESOBJ_ITEM_ATTRIBUTES.
    include type ACE_ACCOUNTS.
    include type ACE_DOC_TYPES.
    include type ACE_TOTAL_ACCR_AMOUNTS.
    types:
      TIMESTMP type ACE_HZSTMP_OBSOLETE,
    end of ACESOBJ_ITEM .
  types:
    ACESOBJ_ITEM_T                 type standard table of ACESOBJ_ITEM                   with non-unique default key .
  types ACE_DATETO type DATS .
endinterface.
