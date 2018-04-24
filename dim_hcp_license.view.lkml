view: dim_hcp_license {
  sql_table_name: qpharma_bi.dim_hcp_license ;;

  dimension: hcp_id {
    type: number
    sql: ${TABLE}.hcp_id ;;
  }

  dimension: hcp_license_code {
    type: string
    sql: ${TABLE}.hcp_license_code ;;
  }

  dimension_group: hcp_license_expiration {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hcp_license_expiration_date ;;
  }

  dimension: hcp_license_id {
    type: number
    sql: ${TABLE}.hcp_license_id ;;
  }

  dimension: hcp_license_state_code {
    type: string
    sql: ${TABLE}.hcp_license_state_code ;;
  }

  dimension: hcp_license_state_code_map {
    map_layer_name: us_states
    sql: ${TABLE}.hcp_license_state_code;;
  }

  dimension: hcp_license_status {
    type: string
    sql: ${TABLE}.hcp_license_status ;;
  }

  dimension: mstr_hcp_stlic_seqid_ref {
    type: number
    sql: ${TABLE}.mstr_hcp_stlic_seqid_ref ;;
  }

  dimension: hcp_license_month_to_expire {
    type: number
    sql: datediff(month, getDate(), hcp_license_expiration_date) ;;
  }

  measure: count {
    type: count_distinct
    drill_fields: [hcp_license_code,hcp_license_expiration_month,hcp_license_expiration_date,hcp_license_status,hcp_license_state_code]
    sql: ${TABLE}.hcp_license_id ;;
  }
}
