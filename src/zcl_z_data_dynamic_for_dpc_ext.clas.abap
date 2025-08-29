class ZCL_Z_DATA_DYNAMIC_FOR_DPC_EXT definition
  public
  inheriting from ZCL_Z_DATA_DYNAMIC_FOR_DPC
  create public .

public section.
protected section.

  methods Z_DATA_TABLESET_CREATE_ENTITY
    redefinition .
  methods Z_DATA_TABLESET_DELETE_ENTITY
    redefinition .
  methods Z_DATA_TABLESET_GET_ENTITY
    redefinition .
  methods Z_DATA_TABLESET_GET_ENTITYSET
    redefinition .
  methods Z_DATA_TABLESET_UPDATE_ENTITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_Z_DATA_DYNAMIC_FOR_DPC_EXT IMPLEMENTATION.


  METHOD z_data_tableset_create_entity.

* Create a record
    DATA : wa_osuerdata TYPE zcl_z_data_dynamic_for_mpc=>ts_z_data_table.

* Read the data from Request body
    io_data_provider->read_entry_data(
      IMPORTING
        es_data = wa_osuerdata
    ).

    MOVE-CORRESPONDING wa_osuerdata TO er_entity.
    MODIFY ztest_dty FROM wa_osuerdata.

  ENDMETHOD.


  METHOD z_data_tableset_delete_entity.

    DATA : ls TYPE  /iwbep/s_mgw_name_value_pair.

    "READING TABLE "
    READ TABLE it_key_tab INTO ls WITH KEY name = 'SerialNo'.

    "DELETING THE RECORD"

    DELETE FROM ztest_dty WHERE serial_no = ls-value.

  ENDMETHOD.


  METHOD z_data_tableset_get_entity.

* Fetch Single record based on the key in the URI
    DATA : wa_key TYPE /iwbep/s_mgw_name_value_pair.
* Read the Key from URI
    READ TABLE it_key_tab INTO wa_key WITH KEY name = 'SerialNo'.
    IF sy-subrc EQ 0.

      SELECT SINGLE *
      FROM ztest_dty
      INTO CORRESPONDING FIELDS OF er_entity
        WHERE serial_no EQ wa_key-value.

    ENDIF.

  ENDMETHOD.


  METHOD z_data_tableset_get_entityset.

    SELECT * FROM ztest_dty INTO TABLE et_entityset.

  ENDMETHOD.


  METHOD z_data_tableset_update_entity.

    DATA : ls TYPE zcl_z_data_dynamic_for_mpc=>ts_z_data_table.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls
    ).

    UPDATE ztest_dty FROM ls.

  ENDMETHOD.
ENDCLASS.
