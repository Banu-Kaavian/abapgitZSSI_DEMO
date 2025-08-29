interface ZIF_Z_ACCRUAL_ITEM_DATA_EXTR2
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
    ACE_REFOBJ_ID type C length 000050 .
  types:
    begin of ACESOBJ_ITEM_PER_TIKEY.
    include type ACESOBJ_ITEM_TIKEY.
    types:
      REFOBJ_KEY type ACE_REFOBJ_ID,
    end of ACESOBJ_ITEM_PER_TIKEY .
  types:
    begin of ACESOBJ_ITEM_PER_KEY.
    include type ACESOBJ_ITEM_PER_TIKEY.
    types:
      PERIOD_END_DATE type DATS,
    end of ACESOBJ_ITEM_PER_KEY .
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
    ACE_PERIOD_AMNT_WCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_HCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_KCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_OCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_VCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_BCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_CCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_DCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_ECURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_FCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_AMNT_GCURR type P length 12  decimals 000002 .
  types:
    ACE_PERIOD_MSL type P length 8  decimals 000003 .
  types:
    MEINS type C length 000003 .
  types:
    begin of ACE_PERIOD_AMOUNTS,
      PERIOD_AMNT_WSL type ACE_PERIOD_AMNT_WCURR,
      PERIOD_AMNT_HSL type ACE_PERIOD_AMNT_HCURR,
      PERIOD_AMNT_KSL type ACE_PERIOD_AMNT_KCURR,
      PERIOD_AMNT_OSL type ACE_PERIOD_AMNT_OCURR,
      PERIOD_AMNT_VSL type ACE_PERIOD_AMNT_VCURR,
      PERIOD_AMNT_BSL type ACE_PERIOD_AMNT_BCURR,
      PERIOD_AMNT_CSL type ACE_PERIOD_AMNT_CCURR,
      PERIOD_AMNT_DSL type ACE_PERIOD_AMNT_DCURR,
      PERIOD_AMNT_ESL type ACE_PERIOD_AMNT_ECURR,
      PERIOD_AMNT_FSL type ACE_PERIOD_AMNT_FCURR,
      PERIOD_AMNT_GSL type ACE_PERIOD_AMNT_GCURR.
    include type ACES_CURRKEYS as PER80 RENAMING WITH SUFFIX PER.
    types:
      PERIOD_MSL type ACE_PERIOD_MSL,
      PERIOD_UNIT type MEINS,
    end of ACE_PERIOD_AMOUNTS .
  types:
    ACE_PERIOD_AMNT_SOURCE type C length 000001 .
  types:
    ACE_PER_AMNT_CHANGED_BY_UNAME type C length 000012 .
  types ACE_PER_AMNT_CHANGED_AT_TIME type T .
  types:
    begin of ACESOBJ_ITEM_PER_ATTR,
      PERIOD_AMNT_SOURCE type ACE_PERIOD_AMNT_SOURCE,
      PERIOD_AMNT_CHANGED_BY type ACE_PER_AMNT_CHANGED_BY_UNAME,
      PERIOD_AMNT_CHANGED_ON type DATS,
      PERIOD_AMNT_CHANGED_AT type ACE_PER_AMNT_CHANGED_AT_TIME.
    include type ACE_PERIOD_AMOUNTS.
    types:
    end of ACESOBJ_ITEM_PER_ATTR .
  types:
    ACE_ADJUSTED_PER_AMNT_WCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_HCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_KCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_OCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_VCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_BCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_CCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_DCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_ECURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_FCURR type P length 12  decimals 000002 .
  types:
    ACE_ADJUSTED_PER_AMNT_GCURR type P length 12  decimals 000002 .
  types:
    ACE_ACCR_AMNT_MSL_ADJSTD type P length 8  decimals 000003 .
  types:
    begin of ACE_ADJUSTED_PERIODIC_AMOUNTS,
      ADJUSTED_PER_AMNT_WSL type ACE_ADJUSTED_PER_AMNT_WCURR,
      ADJUSTED_PER_AMNT_HSL type ACE_ADJUSTED_PER_AMNT_HCURR,
      ADJUSTED_PER_AMNT_KSL type ACE_ADJUSTED_PER_AMNT_KCURR,
      ADJUSTED_PER_AMNT_OSL type ACE_ADJUSTED_PER_AMNT_OCURR,
      ADJUSTED_PER_AMNT_VSL type ACE_ADJUSTED_PER_AMNT_VCURR,
      ADJUSTED_PER_AMNT_BSL type ACE_ADJUSTED_PER_AMNT_BCURR,
      ADJUSTED_PER_AMNT_CSL type ACE_ADJUSTED_PER_AMNT_CCURR,
      ADJUSTED_PER_AMNT_DSL type ACE_ADJUSTED_PER_AMNT_DCURR,
      ADJUSTED_PER_AMNT_ESL type ACE_ADJUSTED_PER_AMNT_ECURR,
      ADJUSTED_PER_AMNT_FSL type ACE_ADJUSTED_PER_AMNT_FCURR,
      ADJUSTED_PER_AMNT_GSL type ACE_ADJUSTED_PER_AMNT_GCURR,
      ADJUSTED_PER_MSL type ACE_ACCR_AMNT_MSL_ADJSTD,
    end of ACE_ADJUSTED_PERIODIC_AMOUNTS .
  types:
    ACE_DS_ADJSTMNT_REASON_CODE type C length 000002 .
  types:
    ACE_DS_ADJSTMNT_COMMENT type C length 000100 .
  types:
    ACE_DS_PACCR_ADJUSTEDBY_UNAME type C length 000012 .
  types ACE_DS_ADJUSTED_AT_TIME type T .
  types:
    ACEDS_RVW_STATUS type C length 000001 .
  types:
    ACE_DS_REVIEW_TYPE type C length 000001 .
  types:
    ACE_DS_PACCR_REVIEWER_UNAME type C length 000012 .
  types ACE_DS_REVIEWED_AT_TIME type T .
  types:
    ACEDS_APRVL_STATUS type C length 000001 .
  types:
    ACE_DS_APPROVAL_TYPE type C length 000001 .
  types:
    ACE_DS_PACCR_APPROVER_UNAME type C length 000012 .
  types ACE_DS_APPROVED_AT_TIME type T .
  types:
    begin of ACESOBJ_ITEM_PER_RA_ADMIN,
      ADJSTMNT_REASON type ACE_DS_ADJSTMNT_REASON_CODE,
      ADJSTMNT_COMMENT type ACE_DS_ADJSTMNT_COMMENT,
      ADJUSTED_BY type ACE_DS_PACCR_ADJUSTEDBY_UNAME,
      ADJUSTED_ON type DATS,
      ADJUSTED_AT type ACE_DS_ADJUSTED_AT_TIME,
      REVIEW_STATUS type ACEDS_RVW_STATUS,
      REVIEW_TYPE type ACE_DS_REVIEW_TYPE,
      REVIEWED_BY type ACE_DS_PACCR_REVIEWER_UNAME,
      REVIEWED_ON type DATS,
      REVIEWED_AT type ACE_DS_REVIEWED_AT_TIME,
      APPROVAL_STATUS type ACEDS_APRVL_STATUS,
      APPROVAL_TYPE type ACE_DS_APPROVAL_TYPE,
      APPROVED_BY type ACE_DS_PACCR_APPROVER_UNAME,
      APPROVED_ON type DATS,
      APPROVED_AT type ACE_DS_APPROVED_AT_TIME,
    end of ACESOBJ_ITEM_PER_RA_ADMIN .
  types:
    ACE_XASSISTED_BY_ML type C length 000001 .
  types:
    ACE_ML_CONFIDENCE_LEVEL type P length 3  decimals 000002 .
  types:
    begin of ACESOBJ_ITEM_PER_RA_ML,
      XASSISTED_BY_ML type ACE_XASSISTED_BY_ML,
      ML_CONF_LEVEL type ACE_ML_CONFIDENCE_LEVEL,
    end of ACESOBJ_ITEM_PER_RA_ML .
  types:
    begin of ACESOBJ_ITEM_PER_RA_ATTR.
    include type ACE_ADJUSTED_PERIODIC_AMOUNTS.
    include type ACESOBJ_ITEM_PER_RA_ADMIN.
    include type ACESOBJ_ITEM_PER_RA_ML.
    types:
    end of ACESOBJ_ITEM_PER_RA_ATTR .
  types:
    MANDT type C length 000003 .
  types:
    begin of ACESOBJ_ITEM_PER,
      MANDT type MANDT.
    include type ACESOBJ_ITEM_PER_KEY.
    types:
      PERIOD_START_DATE type DATS.
    include type ACESOBJ_ITEM_PER_ATTR.
    include type ACESOBJ_ITEM_PER_RA_ATTR.
    types:
    end of ACESOBJ_ITEM_PER .
  types:
    ZACESOBJ_ITEM_PER_T            type standard table of ACESOBJ_ITEM_PER               with non-unique default key .
endinterface.
