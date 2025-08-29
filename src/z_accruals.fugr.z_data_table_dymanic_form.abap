FUNCTION z_data_table_dymanic_form.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IT_TABLE) TYPE  ZTEST_DTY_TT OPTIONAL
*"     VALUE(IV_SERIAL_NO) TYPE  NUM16 OPTIONAL
*"  EXPORTING
*"     VALUE(ET_TABLE) TYPE  ZTEST_DTY_TT
*"     VALUE(RETURN_TAB) TYPE  BAPIRET2_T
*"----------------------------------------------------------------------

  DATA: ls_return TYPE bapiret2.

*INSERT
  IF it_table IS NOT INITIAL.

    MODIFY ztest_dty FROM TABLE it_table.
    IF sy-subrc = 0.
      ls_return-message = 'Records Uploaded Successfully'.
      APPEND ls_return TO return_tab.
    ENDIF.

  ENDIF.

*READ

  IF iv_serial_no IS NOT INITIAL.

    SELECT *
      FROM ztest_dty
      INTO TABLE et_table
     WHERE serial_no = iv_serial_no.
    IF sy-subrc = 0.
      ls_return-message = 'Record fetched Successfully'.
      APPEND ls_return TO return_tab.
    ENDIF.

  ELSE.

    SELECT *
      FROM ztest_dty
      INTO TABLE et_table.
    IF sy-subrc = 0.
      ls_return-message = 'Records fetched Successfully'.
      APPEND ls_return TO return_tab.
    ENDIF.

  ENDIF.

ENDFUNCTION.
