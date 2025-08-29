FUNCTION z_accrual_item_data_extract.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_REF_KEY) TYPE  ACE_OBJ_ID OPTIONAL
*"  EXPORTING
*"     VALUE(E_ACCURUAL_ITEM_T) TYPE  ZACESOBJ_ITEM_PER_T
*"----------------------------------------------------------------------

  DATA : lv_life_start_date TYPE ace_life_start_date,
         lv_life_end_date   TYPE ace_life_end_date,
         ls_obj             TYPE zace_obj_id,
         lt_obj             TYPE zace_obj_id_t,
         ls_comp            TYPE ace_comp_range,
         lt_comp            TYPE ace_comp_range_t,
         ls_date            TYPE acr_s_fdate,
         lt_date            TYPE acr_t_fdate,
         ls_bukrs           TYPE acc_s_ra_bukrs,
         lt_bukrs           TYPE ACC_t_RA_BUKRS.

  DATA: va_jobname  TYPE tbtco-jobname,
        vn_jobcount TYPE tbtco-jobcount.

  SELECT life_start_date
         life_end_date
    FROM acesobj_item
      UP TO 1 ROWS
    INTO ( lv_life_start_date,
           lv_life_end_date )
   WHERE ref_key = i_ref_key.
  ENDSELECT.

  ls_comp-low  = 'ACAC'.
  APPEND ls_comp TO lt_comp.

  ls_bukrs-low = '1710'.
  APPEND ls_bukrs TO lt_bukrs.

  ls_obj-low   = i_ref_key.
  APPEND ls_obj TO lt_obj.

  CONCATENATE 'ACEPROPOSALRUN'
              '_'
              sy-datum
              '_'
              sy-uzeit
         INTO va_jobname.

  CALL FUNCTION 'Z_PROPOSAL_DATE_CALCULATOR'
    EXPORTING
      i_start_date = lv_life_start_date
      i_end_date   = lv_life_end_date
    IMPORTING
      et_date      = lt_date.

  LOOP AT lt_date INTO ls_date.

* Open job
    CALL FUNCTION 'JOB_OPEN'
      EXPORTING
        jobname          = va_jobname
      IMPORTING
        jobcount         = vn_jobcount
      EXCEPTIONS
        cant_create_job  = 1
        invalid_job_data = 2
        jobname_missing  = 3
        OTHERS           = 4.
    CASE sy-subrc.
      WHEN 0.
      WHEN OTHERS.
        MESSAGE e208(00) WITH 'Error'.
    ENDCASE.

* Call report
    SUBMIT ace_proposal_run
      USER sy-uname
       VIA JOB va_jobname
    NUMBER vn_jobcount
      WITH so_comp   IN lt_comp
      WITH so_bukrs  IN lt_bukrs
      WITH pa_keydt   = ls_date-item
      WITH so_obj    IN lt_obj
      WITH pa_test    = abap_false
    AND RETURN.

* Close job
    CALL FUNCTION 'JOB_CLOSE'
      EXPORTING
        jobcount             = vn_jobcount
        jobname              = va_jobname
        strtimmed            = 'X'  " start immediatly
      EXCEPTIONS
        cant_start_immediate = 1
        invalid_startdate    = 2
        jobname_missing      = 3
        job_close_failed     = 4
        job_nosteps          = 5
        job_notex            = 6
        lock_failed          = 7
        OTHERS               = 8.
    IF sy-subrc <> 0.
* Implement suitable error handling here
    ENDIF.

  ENDLOOP.

  WAIT UP TO 30 SECONDS.

  SELECT *
    FROM acesobj_item_per
    INTO TABLE e_accurual_item_t
   WHERE ref_key    = i_ref_key.

ENDFUNCTION.
