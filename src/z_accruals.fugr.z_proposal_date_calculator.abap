FUNCTION z_proposal_date_calculator.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_START_DATE) TYPE  ACE_LIFE_START_DATE
*"     VALUE(I_END_DATE) TYPE  ACE_LIFE_END_DATE
*"  EXPORTING
*"     VALUE(ET_DATE) TYPE  ACR_T_FDATE
*"----------------------------------------------------------------------

  DATA: i_execute     TYPE c,
        lv_date       TYPE sydatum,
        lv_begin_date TYPE sy-datum,
        lv_end_date   TYPE sy-datum,
        ls_date       TYPE acr_s_fdate.

  i_execute = abap_true.
  lv_date   = i_start_date.

  WHILE i_execute = abap_true.

    CALL FUNCTION 'HR_JP_MONTH_BEGIN_END_DATE'
      EXPORTING
        iv_date             = lv_date
      IMPORTING
        ev_month_begin_date = lv_begin_date
        ev_month_end_date   = lv_end_date.

    ls_date-item = lv_end_date.
    lv_date      = lv_end_date.
    APPEND ls_date TO et_date.

    CALL FUNCTION 'BKK_ADD_MONTH_TO_DATE'
      EXPORTING
        months  = '1'
        olddate = lv_date
      IMPORTING
        newdate = lv_date.

    IF lv_date >= i_end_date.
      ls_date-item = lv_date.
      APPEND ls_date TO et_date.
      EXIT.
    ENDIF.

  ENDWHILE.

ENDFUNCTION.
