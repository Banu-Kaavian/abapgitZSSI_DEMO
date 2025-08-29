class ZCL_ZMM_MATERIAL_CREAT_DPC_EXT definition
  public
  inheriting from ZCL_ZMM_MATERIAL_CREAT_DPC
  create public .

public section.
protected section.

  methods MATERIALSET_CREATE_ENTITY
    redefinition .
  methods MATERIALSET_GET_ENTITYSET
    redefinition .
  methods MATERIALSET_GET_ENTITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZMM_MATERIAL_CREAT_DPC_EXT IMPLEMENTATION.


METHOD materialset_create_entity.

DATA: wa_entity TYPE zcl_zmm_material_creat_mpc=>ts_material.
DATA: ls_header TYPE bapimathead.

DATA: ls_mara TYPE bapi_mara,
      ls_marax TYPE bapi_marax.

DATA: ls_lang TYPE bapi_makt,
      lt_lang TYPE STANDARD TABLE OF bapi_makt.

DATA: ls_return TYPE bapiret2.

TRY.
CALL METHOD io_data_provider->read_entry_data
  IMPORTING
    es_data = wa_entity.

*-- Populate the Data
ls_header-material = wa_entity-mat.
ls_header-ind_sector = wa_entity-indsec .
ls_header-matl_type =  wa_entity-mattype.
ls_header-basic_view = 'X'.

ls_mara-base_uom =  wa_entity-uom.
ls_mara-matl_group =  wa_entity-matgrp.

ls_marax-base_uom = 'X'.
ls_marax-matl_group = 'X'.

ls_lang-langu = sy-langu.
ls_lang-matl_desc = wa_entity-desc.
 APPEND ls_lang TO lt_lang.

*-- Call the BAPI
CALL FUNCTION 'BAPI_MATERIAL_SAVEDATA'
  EXPORTING
    headdata = ls_header
    clientdata = ls_mara
    clientdatax = ls_marax
    IMPORTING
    return = ls_return
  TABLES
    materialdescription = lt_lang.

    IF sy-subrc EQ 0.
    COMMIT WORK.
    ENDIF.

    IF ls_return-type = 'E'.
      er_entity-message = 'Material Creation Error in S/4Hana system'.
       er_entity-messagetype = 'E'.
      ELSE.
      er_entity-message = 'Material Successfully Imaged in S/4Hana System'.
      er_entity-messagetype = 'S'.
      ENDIF.

CATCH /iwbep/cx_mgw_tech_exception.
ENDTRY.

  ENDMETHOD.


  method MATERIALSET_GET_ENTITY.
**TRY.
*CALL METHOD SUPER->MATERIALSET_GET_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_request_object       =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**  IMPORTING
**    er_entity               =
**    es_response_context     =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method MATERIALSET_GET_ENTITYSET.

  DATA:
        ls_entity    TYPE ZCL_ZMM_MATERIAL_CREAT_mpc=>ts_material.

  DATA: lt_result TYPE TABLE OF mara,
        ls_result TYPE mara.

  SELECT * FROM mara INTO TABLE lt_result UP TO 10 ROWS.

  LOOP AT lt_result INTO ls_result.
    CLEAR ls_entity.
    ls_entity-Mat = ls_result-matnr.
    ls_entity-IndSec = ls_result-MBRSH.
    ls_entity-MatType = ls_result-meins.
    ls_entity-Plant = ls_result-mtart.
    APPEND ls_entity TO et_entityset.
  ENDLOOP.

  endmethod.
ENDCLASS.
