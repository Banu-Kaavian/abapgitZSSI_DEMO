class ZCL_Z_ACCRUAL_ITEM_EXT_DPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_DATA
  abstract
  create public .

public section.

  interfaces /IWBEP/IF_SB_DPC_COMM_SERVICES .
  interfaces /IWBEP/IF_SB_GEN_DPC_INJECTION .

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY
    redefinition .
protected section.

  data mo_injection type ref to /IWBEP/IF_SB_GEN_DPC_INJECTION .

  methods EACCURUALITEMTSE_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_Z_ACCRUAL_ITEM_EXT_MPC=>TS_EACCURUALITEMT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EACCURUALITEMTSE_DELETE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_D optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EACCURUALITEMTSE_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_Z_ACCRUAL_ITEM_EXT_MPC=>TS_EACCURUALITEMT
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EACCURUALITEMTSE_GET_ENTITYSET
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET optional
    exporting
      !ET_ENTITYSET type ZCL_Z_ACCRUAL_ITEM_EXT_MPC=>TT_EACCURUALITEMT
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EACCURUALITEMTSE_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_Z_ACCRUAL_ITEM_EXT_MPC=>TS_EACCURUALITEMT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ZACCRUAL_ITEMSSE_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_Z_ACCRUAL_ITEM_EXT_MPC=>TS_ZACCRUAL_INPUT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ZACCRUAL_ITEMSSE_DELETE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_D optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ZACCRUAL_ITEMSSE_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_Z_ACCRUAL_ITEM_EXT_MPC=>TS_ZACCRUAL_INPUT
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ZACCRUAL_ITEMSSE_GET_ENTITYSET
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET optional
    exporting
      !ET_ENTITYSET type ZCL_Z_ACCRUAL_ITEM_EXT_MPC=>TT_ZACCRUAL_INPUT
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ZACCRUAL_ITEMSSE_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_Z_ACCRUAL_ITEM_EXT_MPC=>TS_ZACCRUAL_INPUT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_Z_ACCRUAL_ITEM_EXT_DPC IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 16.03.2024 22:48:26 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_Z_ACCRUAL_ITEM_EXT_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA eaccurualitemtse_create_entity TYPE zcl_z_accrual_item_ext_mpc=>ts_eaccurualitemt.
 DATA zaccrual_itemsse_create_entity TYPE zcl_z_accrual_item_ext_mpc=>ts_zaccrual_input.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EAccurualItemTSet
*-------------------------------------------------------------------------*
     WHEN 'EAccurualItemTSet'.
*     Call the entity set generated method
    eaccurualitemtse_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = eaccurualitemtse_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = eaccurualitemtse_create_entity
      CHANGING
        cr_data = er_entity
   ).

*-------------------------------------------------------------------------*
*             EntitySet -  zaccrual_inputSet
*-------------------------------------------------------------------------*
     WHEN 'zaccrual_inputSet'.
*     Call the entity set generated method
    zaccrual_itemsse_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = zaccrual_itemsse_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = zaccrual_itemsse_create_entity
      CHANGING
        cr_data = er_entity
   ).

  when others.
    super->/iwbep/if_mgw_appl_srv_runtime~create_entity(
       EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         io_data_provider   = io_data_provider
         it_key_tab = it_key_tab
         it_navigation_path = it_navigation_path
      IMPORTING
        er_entity = er_entity
  ).
ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_DEL_ENTITY_BASE
*&* This class has been generated on 16.03.2024 22:48:26 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_Z_ACCRUAL_ITEM_EXT_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EAccurualItemTSet
*-------------------------------------------------------------------------*
      when 'EAccurualItemTSet'.
*     Call the entity set generated method
     eaccurualitemtse_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

*-------------------------------------------------------------------------*
*             EntitySet -  zaccrual_inputSet
*-------------------------------------------------------------------------*
      when 'zaccrual_inputSet'.
*     Call the entity set generated method
     zaccrual_itemsse_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

   when others.
     super->/iwbep/if_mgw_appl_srv_runtime~delete_entity(
        EXPORTING
          iv_entity_name = iv_entity_name
          iv_entity_set_name = iv_entity_set_name
          iv_source_name = iv_source_name
          it_key_tab = it_key_tab
          it_navigation_path = it_navigation_path
 ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY.
*&-----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_GETENTITY_BASE
*&* This class has been generated  on 16.03.2024 22:48:26 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_Z_ACCRUAL_ITEM_EXT_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA eaccurualitemtse_get_entity TYPE zcl_z_accrual_item_ext_mpc=>ts_eaccurualitemt.
 DATA zaccrual_itemsse_get_entity TYPE zcl_z_accrual_item_ext_mpc=>ts_zaccrual_input.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EAccurualItemTSet
*-------------------------------------------------------------------------*
      WHEN 'EAccurualItemTSet'.
*     Call the entity set generated method
          eaccurualitemtse_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = eaccurualitemtse_get_entity
                         es_response_context = es_response_context
          ).

        IF eaccurualitemtse_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = eaccurualitemtse_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  zaccrual_inputSet
*-------------------------------------------------------------------------*
      WHEN 'zaccrual_inputSet'.
*     Call the entity set generated method
          zaccrual_itemsse_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = zaccrual_itemsse_get_entity
                         es_response_context = es_response_context
          ).

        IF zaccrual_itemsse_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = zaccrual_itemsse_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.

      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~get_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TMP_ENTITYSET_BASE
*&* This class has been generated on 16.03.2024 22:48:26 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_Z_ACCRUAL_ITEM_EXT_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA eaccurualitemtse_get_entityset TYPE zcl_z_accrual_item_ext_mpc=>tt_eaccurualitemt.
 DATA zaccrual_itemsse_get_entityset TYPE zcl_z_accrual_item_ext_mpc=>tt_zaccrual_input.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EAccurualItemTSet
*-------------------------------------------------------------------------*
   WHEN 'EAccurualItemTSet'.
*     Call the entity set generated method
      eaccurualitemtse_get_entityset(
        EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         it_filter_select_options = it_filter_select_options
         it_order = it_order
         is_paging = is_paging
         it_navigation_path = it_navigation_path
         it_key_tab = it_key_tab
         iv_filter_string = iv_filter_string
         iv_search_string = iv_search_string
         io_tech_request_context = io_tech_request_context
       IMPORTING
         et_entityset = eaccurualitemtse_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = eaccurualitemtse_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

*-------------------------------------------------------------------------*
*             EntitySet -  zaccrual_inputSet
*-------------------------------------------------------------------------*
   WHEN 'zaccrual_inputSet'.
*     Call the entity set generated method
      zaccrual_itemsse_get_entityset(
        EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         it_filter_select_options = it_filter_select_options
         it_order = it_order
         is_paging = is_paging
         it_navigation_path = it_navigation_path
         it_key_tab = it_key_tab
         iv_filter_string = iv_filter_string
         iv_search_string = iv_search_string
         io_tech_request_context = io_tech_request_context
       IMPORTING
         et_entityset = zaccrual_itemsse_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = zaccrual_itemsse_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

    WHEN OTHERS.
      super->/iwbep/if_mgw_appl_srv_runtime~get_entityset(
        EXPORTING
          iv_entity_name = iv_entity_name
          iv_entity_set_name = iv_entity_set_name
          iv_source_name = iv_source_name
          it_filter_select_options = it_filter_select_options
          it_order = it_order
          is_paging = is_paging
          it_navigation_path = it_navigation_path
          it_key_tab = it_key_tab
          iv_filter_string = iv_filter_string
          iv_search_string = iv_search_string
          io_tech_request_context = io_tech_request_context
       IMPORTING
         er_entityset = er_entityset ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_UPD_ENTITY_BASE
*&* This class has been generated on 16.03.2024 22:48:26 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_Z_ACCRUAL_ITEM_EXT_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA eaccurualitemtse_update_entity TYPE zcl_z_accrual_item_ext_mpc=>ts_eaccurualitemt.
 DATA zaccrual_itemsse_update_entity TYPE zcl_z_accrual_item_ext_mpc=>ts_zaccrual_input.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data. "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EAccurualItemTSet
*-------------------------------------------------------------------------*
      WHEN 'EAccurualItemTSet'.
*     Call the entity set generated method
          eaccurualitemtse_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = eaccurualitemtse_update_entity
          ).
       IF eaccurualitemtse_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = eaccurualitemtse_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  zaccrual_inputSet
*-------------------------------------------------------------------------*
      WHEN 'zaccrual_inputSet'.
*     Call the entity set generated method
          zaccrual_itemsse_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = zaccrual_itemsse_update_entity
          ).
       IF zaccrual_itemsse_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = zaccrual_itemsse_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~update_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             io_data_provider   = io_data_provider
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~COMMIT_WORK.
* Call RFC commit work functionality
DATA lt_message      TYPE bapiret2. "#EC NEEDED
DATA lv_message_text TYPE BAPI_MSG.
DATA lo_logger       TYPE REF TO /iwbep/cl_cos_logger.
DATA lv_subrc        TYPE syst-subrc.

lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).

  IF iv_rfc_dest IS INITIAL OR iv_rfc_dest EQ 'NONE'.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      EXPORTING
      wait   = abap_true
    IMPORTING
      return = lt_message.
  ELSE.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      DESTINATION iv_rfc_dest
    EXPORTING
      wait                  = abap_true
    IMPORTING
      return                = lt_message
    EXCEPTIONS
      communication_failure = 1000 MESSAGE lv_message_text
      system_failure        = 1001 MESSAGE lv_message_text
      OTHERS                = 1002.

  IF sy-subrc <> 0.
    lv_subrc = sy-subrc.
    /iwbep/cl_sb_gen_dpc_rt_util=>rfc_exception_handling(
        EXPORTING
          iv_subrc            = lv_subrc
          iv_exp_message_text = lv_message_text
          io_logger           = lo_logger ).
  ENDIF.
  ENDIF.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~GET_GENERATION_STRATEGY.
* Get generation strategy
  rv_generation_strategy = '1'.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~LOG_MESSAGE.
* Log message in the application log
DATA lo_logger TYPE REF TO /iwbep/cl_cos_logger.
DATA lv_text TYPE /iwbep/sup_msg_longtext.

  MESSAGE ID iv_msg_id TYPE iv_msg_type NUMBER iv_msg_number
    WITH iv_msg_v1 iv_msg_v2 iv_msg_v3 iv_msg_v4 INTO lv_text.

  lo_logger = mo_context->get_logger( ).
  lo_logger->log_message(
    EXPORTING
     iv_msg_type   = iv_msg_type
     iv_msg_id     = iv_msg_id
     iv_msg_number = iv_msg_number
     iv_msg_text   = lv_text
     iv_msg_v1     = iv_msg_v1
     iv_msg_v2     = iv_msg_v2
     iv_msg_v3     = iv_msg_v3
     iv_msg_v4     = iv_msg_v4
     iv_agent      = 'DPC' ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_EXCEPTION_HANDLING.
* RFC call exception handling
DATA lo_logger  TYPE REF TO /iwbep/cl_cos_logger.

lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).

/iwbep/cl_sb_gen_dpc_rt_util=>rfc_exception_handling(
  EXPORTING
    iv_subrc            = iv_subrc
    iv_exp_message_text = iv_exp_message_text
    io_logger           = lo_logger ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_SAVE_LOG.
  DATA lo_logger  TYPE REF TO /iwbep/cl_cos_logger.
  DATA lo_message_container TYPE REF TO /iwbep/if_message_container.

  lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).
  lo_message_container = /iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

  " Save the RFC call log in the application log
  /iwbep/cl_sb_gen_dpc_rt_util=>rfc_save_log(
    EXPORTING
      is_return            = is_return
      iv_entity_type       = iv_entity_type
      it_return            = it_return
      it_key_tab           = it_key_tab
      io_logger            = lo_logger
      io_message_container = lo_message_container ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~SET_INJECTION.
* Unit test injection
  IF io_unit IS BOUND.
    mo_injection = io_unit.
  ELSE.
    mo_injection = me.
  ENDIF.
  endmethod.


  method CHECK_SUBSCRIPTION_AUTHORITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'CHECK_SUBSCRIPTION_AUTHORITY'.
  endmethod.


  method EACCURUALITEMTSE_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'EACCURUALITEMTSE_CREATE_ENTITY'.
  endmethod.


  method EACCURUALITEMTSE_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'EACCURUALITEMTSE_DELETE_ENTITY'.
  endmethod.


  method EACCURUALITEMTSE_GET_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'EACCURUALITEMTSE_GET_ENTITY'.
  endmethod.


  method EACCURUALITEMTSE_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_bukrs TYPE zif_z_accrual_item_data_extrac=>ace_bukrs.
 DATA i_comp TYPE zif_z_accrual_item_data_extrac=>ace_comp.
 DATA i_date_to TYPE zif_z_accrual_item_data_extrac=>ace_dateto.
 DATA i_itemtype TYPE zif_z_accrual_item_data_extrac=>ace_itemtype.
 DATA i_logsys TYPE zif_z_accrual_item_data_extrac=>ace_logsys.
 DATA i_ref_key TYPE zif_z_accrual_item_data_extrac=>ace_obj_id.
 DATA i_ref_subkey TYPE zif_z_accrual_item_data_extrac=>ace_subobj_id.
 DATA i_rldnr TYPE zif_z_accrual_item_data_extrac=>fins_ledger.
 DATA e_accurual_item_t  TYPE zif_z_accrual_item_data_extrac=>acesobj_item_t.
 DATA ls_e_accurual_item_t  TYPE LINE OF zif_z_accrual_item_data_extrac=>acesobj_item_t.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
 DATA lo_filter TYPE  REF TO /iwbep/if_mgw_req_filter.
 DATA lt_filter_select_options TYPE /iwbep/t_mgw_select_option.
 DATA lv_filter_str TYPE string.
 DATA ls_paging TYPE /iwbep/s_mgw_paging.
 DATA ls_converted_keys LIKE LINE OF et_entityset.
 DATA ls_filter TYPE /iwbep/s_mgw_select_option.
 DATA ls_filter_range TYPE /iwbep/s_cod_select_option.
 DATA lr_COMP LIKE RANGE OF ls_converted_keys-comp.
 DATA ls_COMP LIKE LINE OF lr_COMP.
 DATA lr_LOGSYS LIKE RANGE OF ls_converted_keys-logsys.
 DATA ls_LOGSYS LIKE LINE OF lr_LOGSYS.
 DATA lr_BUKRS LIKE RANGE OF ls_converted_keys-bukrs.
 DATA ls_BUKRS LIKE LINE OF lr_BUKRS.
 DATA lr_REF_KEY LIKE RANGE OF ls_converted_keys-ref_key.
 DATA ls_REF_KEY LIKE LINE OF lr_REF_KEY.
 DATA lr_REF_SUBKEY LIKE RANGE OF ls_converted_keys-ref_subkey.
 DATA ls_REF_SUBKEY LIKE LINE OF lr_REF_SUBKEY.
 DATA lr_ITEMTYPE LIKE RANGE OF ls_converted_keys-itemtype.
 DATA ls_ITEMTYPE LIKE LINE OF lr_ITEMTYPE.
 DATA lr_RLDNR LIKE RANGE OF ls_converted_keys-rldnr.
 DATA ls_RLDNR LIKE LINE OF lr_RLDNR.
 DATA lr_DATE_TO LIKE RANGE OF ls_converted_keys-date_to.
 DATA ls_DATE_TO LIKE LINE OF lr_DATE_TO.
 DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
 DATA ls_gw_e_accurual_item_t LIKE LINE OF et_entityset.
 DATA lv_skip     TYPE int4.
 DATA lv_top      TYPE int4.

*-------------------------------------------------------------
*  Map the runtime request to the RFC - Only mapped attributes
*-------------------------------------------------------------
* Get all input information from the technical request context object
* Since DPC works with internal property names and runtime API interface holds external property names
* the process needs to get the all needed input information from the technical request context object
* Get filter or select option information
 lo_filter = io_tech_request_context->get_filter( ).
 lt_filter_select_options = lo_filter->get_filter_select_options( ).
 lv_filter_str = lo_filter->get_filter_string( ).

* Check if the supplied filter is supported by standard gateway runtime process
 IF  lv_filter_str            IS NOT INITIAL
 AND lt_filter_select_options IS INITIAL.
   " If the string of the Filter System Query Option is not automatically converted into
   " filter option table (lt_filter_select_options), then the filtering combination is not supported
   " Log message in the application log
   me->/iwbep/if_sb_dpc_comm_services~log_message(
     EXPORTING
       iv_msg_type   = 'E'
       iv_msg_id     = '/IWBEP/MC_SB_DPC_ADM'
       iv_msg_number = 025 ).
   " Raise Exception
   RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
     EXPORTING
       textid = /iwbep/cx_mgw_tech_exception=>internal_error.
 ENDIF.

* Get key table information
 io_tech_request_context->get_converted_source_keys(
   IMPORTING
     es_key_values = ls_converted_keys ).

 ls_paging-top = io_tech_request_context->get_top( ).
 ls_paging-skip = io_tech_request_context->get_skip( ).

* Maps filter table lines to function module parameters
 LOOP AT lt_filter_select_options INTO ls_filter.

   LOOP AT ls_filter-select_options INTO ls_filter_range.
     CASE ls_filter-property.
       WHEN 'COMP'.
         lo_filter->convert_select_option(
           EXPORTING
             is_select_option = ls_filter
           IMPORTING
             et_select_option = lr_COMP ).

         READ TABLE lr_COMP INTO ls_COMP INDEX 1.
         IF sy-subrc = 0.
           i_comp = ls_COMP-low.
         ENDIF.
       WHEN 'LOGSYS'.
         lo_filter->convert_select_option(
           EXPORTING
             is_select_option = ls_filter
           IMPORTING
             et_select_option = lr_LOGSYS ).

         READ TABLE lr_LOGSYS INTO ls_LOGSYS INDEX 1.
         IF sy-subrc = 0.
           i_logsys = ls_LOGSYS-low.
         ENDIF.
       WHEN 'BUKRS'.
         lo_filter->convert_select_option(
           EXPORTING
             is_select_option = ls_filter
           IMPORTING
             et_select_option = lr_BUKRS ).

         READ TABLE lr_BUKRS INTO ls_BUKRS INDEX 1.
         IF sy-subrc = 0.
           i_bukrs = ls_BUKRS-low.
         ENDIF.
       WHEN 'REF_KEY'.
         lo_filter->convert_select_option(
           EXPORTING
             is_select_option = ls_filter
           IMPORTING
             et_select_option = lr_REF_KEY ).

         READ TABLE lr_REF_KEY INTO ls_REF_KEY INDEX 1.
         IF sy-subrc = 0.
           i_ref_key = ls_REF_KEY-low.
         ENDIF.
       WHEN 'REF_SUBKEY'.
         lo_filter->convert_select_option(
           EXPORTING
             is_select_option = ls_filter
           IMPORTING
             et_select_option = lr_REF_SUBKEY ).

         READ TABLE lr_REF_SUBKEY INTO ls_REF_SUBKEY INDEX 1.
         IF sy-subrc = 0.
           i_ref_subkey = ls_REF_SUBKEY-low.
         ENDIF.
       WHEN 'ITEMTYPE'.
         lo_filter->convert_select_option(
           EXPORTING
             is_select_option = ls_filter
           IMPORTING
             et_select_option = lr_ITEMTYPE ).

         READ TABLE lr_ITEMTYPE INTO ls_ITEMTYPE INDEX 1.
         IF sy-subrc = 0.
           i_itemtype = ls_ITEMTYPE-low.
         ENDIF.
       WHEN 'RLDNR'.
         lo_filter->convert_select_option(
           EXPORTING
             is_select_option = ls_filter
           IMPORTING
             et_select_option = lr_RLDNR ).

         READ TABLE lr_RLDNR INTO ls_RLDNR INDEX 1.
         IF sy-subrc = 0.
           i_rldnr = ls_RLDNR-low.
         ENDIF.
       WHEN 'DATE_TO'.
         lo_filter->convert_select_option(
           EXPORTING
             is_select_option = ls_filter
           IMPORTING
             et_select_option = lr_DATE_TO ).

         READ TABLE lr_DATE_TO INTO ls_DATE_TO INDEX 1.
         IF sy-subrc = 0.
           i_date_to = ls_DATE_TO-low.
         ENDIF.
       WHEN OTHERS.
         " Log message in the application log
         me->/iwbep/if_sb_dpc_comm_services~log_message(
           EXPORTING
             iv_msg_type   = 'E'
             iv_msg_id     = '/IWBEP/MC_SB_DPC_ADM'
             iv_msg_number = 020
             iv_msg_v1     = ls_filter-property ).
         " Raise Exception
         RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
           EXPORTING
             textid = /iwbep/cx_mgw_tech_exception=>internal_error.
     ENDCASE.
   ENDLOOP.

 ENDLOOP.

* Get RFC destination
 lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
 lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
 lv_rfc_name = 'Z_ACCRUAL_ITEM_DATA_EXTRACT'.

 IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

   TRY.
       CALL FUNCTION lv_rfc_name
         EXPORTING
           i_comp            = i_comp
           i_logsys          = i_logsys
           i_bukrs           = i_bukrs
           i_ref_key         = i_ref_key
           i_ref_subkey      = i_ref_subkey
           i_itemtype        = i_itemtype
           i_rldnr           = i_rldnr
           i_date_to         = i_date_to
         IMPORTING
           e_accurual_item_t = e_accurual_item_t
         EXCEPTIONS
           system_failure    = 1000 message lv_exc_msg
           OTHERS            = 1002.

       lv_subrc = sy-subrc.
*in case of co-deployment the exception is raised and needs to be caught
     CATCH cx_root INTO lx_root.
       lv_subrc = 1001.
       lv_exc_msg = lx_root->if_message~get_text( ).
   ENDTRY.

 ELSE.

   CALL FUNCTION lv_rfc_name DESTINATION lv_destination
     EXPORTING
       i_comp                = i_comp
       i_logsys              = i_logsys
       i_bukrs               = i_bukrs
       i_ref_key             = i_ref_key
       i_ref_subkey          = i_ref_subkey
       i_itemtype            = i_itemtype
       i_rldnr               = i_rldnr
       i_date_to             = i_date_to
     IMPORTING
       e_accurual_item_t     = e_accurual_item_t
     EXCEPTIONS
       system_failure        = 1000 MESSAGE lv_exc_msg
       communication_failure = 1001 MESSAGE lv_exc_msg
       OTHERS                = 1002.

   lv_subrc = sy-subrc.

 ENDIF.

*-------------------------------------------------------------
*  Map the RFC response to the caller interface - Only mapped attributes
*-------------------------------------------------------------
*-------------------------------------------------------------
* Error and exception handling
*-------------------------------------------------------------
 IF lv_subrc <> 0.
* Execute the RFC exception handling process
   me->/iwbep/if_sb_dpc_comm_services~rfc_exception_handling(
     EXPORTING
       iv_subrc            = lv_subrc
       iv_exp_message_text = lv_exc_msg ).
 ENDIF.

*-------------------------------------------------------------------------*
*             - Post Backend Call -
*-------------------------------------------------------------------------*
 IF ls_paging-skip IS NOT INITIAL.
*  If the Skip value was requested at runtime
*  the response table will provide backend entries from skip + 1, meaning start from skip +1
*  for example: skip=5 means to start get results from the 6th row
   lv_skip = ls_paging-skip + 1.
 ENDIF.
*  The Top value was requested at runtime but was not handled as part of the function interface
 IF  ls_paging-top <> 0
 AND lv_skip IS NOT INITIAL.
*  if lv_skip > 0 retrieve the entries from lv_skip + Top - 1
*  for example: skip=5 and top=2 means to start get results from the 6th row and end in row number 7
   lv_top = ls_paging-top + lv_skip - 1.
 ELSEIF ls_paging-top <> 0
 AND    lv_skip IS INITIAL.
   lv_top = ls_paging-top.
 ELSE.
   lv_top = lines( e_accurual_item_t ).
 ENDIF.

*  - Map properties from the backend to the Gateway output response table -

 LOOP AT e_accurual_item_t INTO ls_e_accurual_item_t
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
      FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
   ls_gw_e_accurual_item_t-date_to = ls_e_accurual_item_t-date_to.
   ls_gw_e_accurual_item_t-rldnr = ls_e_accurual_item_t-rldnr.
   ls_gw_e_accurual_item_t-itemtype = ls_e_accurual_item_t-itemtype.
   ls_gw_e_accurual_item_t-ref_subkey = ls_e_accurual_item_t-ref_subkey.
   ls_gw_e_accurual_item_t-ref_key = ls_e_accurual_item_t-ref_key.
   ls_gw_e_accurual_item_t-bukrs = ls_e_accurual_item_t-bukrs.
   ls_gw_e_accurual_item_t-logsys = ls_e_accurual_item_t-logsys.
   ls_gw_e_accurual_item_t-comp = ls_e_accurual_item_t-comp.
   ls_gw_e_accurual_item_t-mandt = ls_e_accurual_item_t-mandt.
   ls_gw_e_accurual_item_t-date_from = ls_e_accurual_item_t-date_from.
   ls_gw_e_accurual_item_t-quantity = ls_e_accurual_item_t-quantity.
   ls_gw_e_accurual_item_t-unit = ls_e_accurual_item_t-unit.
   ls_gw_e_accurual_item_t-acrmethod = ls_e_accurual_item_t-acrmethod.
   ls_gw_e_accurual_item_t-life_start_date = ls_e_accurual_item_t-life_start_date.
   ls_gw_e_accurual_item_t-life_end_date = ls_e_accurual_item_t-life_end_date.
   ls_gw_e_accurual_item_t-xobsolete = ls_e_accurual_item_t-xobsolete.
   ls_gw_e_accurual_item_t-inc_offstng_accnt = ls_e_accurual_item_t-inc_offstng_accnt.
   ls_gw_e_accurual_item_t-inc_accr_accnt = ls_e_accurual_item_t-inc_accr_accnt.
   ls_gw_e_accurual_item_t-per_accr_accnt = ls_e_accurual_item_t-per_accr_accnt.
   ls_gw_e_accurual_item_t-per_offstng_accnt = ls_e_accurual_item_t-per_offstng_accnt.
   ls_gw_e_accurual_item_t-fin_accr_accnt = ls_e_accurual_item_t-fin_accr_accnt.
   ls_gw_e_accurual_item_t-fin_offstng_accnt = ls_e_accurual_item_t-fin_offstng_accnt.
   ls_gw_e_accurual_item_t-inc_doc_type = ls_e_accurual_item_t-inc_doc_type.
   ls_gw_e_accurual_item_t-timestmp = ls_e_accurual_item_t-timestmp.
   ls_gw_e_accurual_item_t-per_doc_type = ls_e_accurual_item_t-per_doc_type.
   ls_gw_e_accurual_item_t-rgcurttl = ls_e_accurual_item_t-rgcurttl.
   ls_gw_e_accurual_item_t-fin_doc_type = ls_e_accurual_item_t-fin_doc_type.
   ls_gw_e_accurual_item_t-total_accr_amnt_wsl = ls_e_accurual_item_t-total_accr_amnt_wsl.
   ls_gw_e_accurual_item_t-rfcurttl = ls_e_accurual_item_t-rfcurttl.
   ls_gw_e_accurual_item_t-total_accr_amnt_hsl = ls_e_accurual_item_t-total_accr_amnt_hsl.
   ls_gw_e_accurual_item_t-recurttl = ls_e_accurual_item_t-recurttl.
   ls_gw_e_accurual_item_t-total_accr_amnt_ksl = ls_e_accurual_item_t-total_accr_amnt_ksl.
   ls_gw_e_accurual_item_t-total_accr_amnt_osl = ls_e_accurual_item_t-total_accr_amnt_osl.
   ls_gw_e_accurual_item_t-rdcurttl = ls_e_accurual_item_t-rdcurttl.
   ls_gw_e_accurual_item_t-total_accr_amnt_vsl = ls_e_accurual_item_t-total_accr_amnt_vsl.
   ls_gw_e_accurual_item_t-rccurttl = ls_e_accurual_item_t-rccurttl.
   ls_gw_e_accurual_item_t-total_accr_amnt_bsl = ls_e_accurual_item_t-total_accr_amnt_bsl.
   ls_gw_e_accurual_item_t-total_accr_amnt_csl = ls_e_accurual_item_t-total_accr_amnt_csl.
   ls_gw_e_accurual_item_t-rbcurttl = ls_e_accurual_item_t-rbcurttl.
   ls_gw_e_accurual_item_t-total_accr_amnt_dsl = ls_e_accurual_item_t-total_accr_amnt_dsl.
   ls_gw_e_accurual_item_t-rvcurttl = ls_e_accurual_item_t-rvcurttl.
   ls_gw_e_accurual_item_t-total_accr_amnt_esl = ls_e_accurual_item_t-total_accr_amnt_esl.
   ls_gw_e_accurual_item_t-total_accr_amnt_fsl = ls_e_accurual_item_t-total_accr_amnt_fsl.
   ls_gw_e_accurual_item_t-rocurttl = ls_e_accurual_item_t-rocurttl.
   ls_gw_e_accurual_item_t-total_accr_amnt_gsl = ls_e_accurual_item_t-total_accr_amnt_gsl.
   ls_gw_e_accurual_item_t-rkcurttl = ls_e_accurual_item_t-rkcurttl.
   ls_gw_e_accurual_item_t-rwcurttl = ls_e_accurual_item_t-rwcurttl.
   ls_gw_e_accurual_item_t-rhcurttl = ls_e_accurual_item_t-rhcurttl.
   APPEND ls_gw_e_accurual_item_t TO et_entityset.
   CLEAR ls_gw_e_accurual_item_t.
 ENDLOOP.

  endmethod.


  method EACCURUALITEMTSE_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'EACCURUALITEMTSE_UPDATE_ENTITY'.
  endmethod.


  method ZACCRUAL_ITEMSSE_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ZACCRUAL_ITEMSSE_CREATE_ENTITY'.
  endmethod.


  method ZACCRUAL_ITEMSSE_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ZACCRUAL_ITEMSSE_DELETE_ENTITY'.
  endmethod.


  method ZACCRUAL_ITEMSSE_GET_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ZACCRUAL_ITEMSSE_GET_ENTITY'.
  endmethod.


  method ZACCRUAL_ITEMSSE_GET_ENTITYSET.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ZACCRUAL_ITEMSSE_GET_ENTITYSET'.
  endmethod.


  method ZACCRUAL_ITEMSSE_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ZACCRUAL_ITEMSSE_UPDATE_ENTITY'.
  endmethod.
ENDCLASS.
