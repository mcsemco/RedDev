view: dim_hcp_address {
  sql_table_name: qpharma_bi.dim_hcp_address ;;

  dimension: hcp_address_id {
    type: number
    sql: ${TABLE}.hcp_address_id ;;
  }

  dimension: hcp_city {
    type: string
    sql: ${TABLE}.hcp_city ;;
  }

  dimension: hcp_country_code {
    type: string
    sql: ${TABLE}.hcp_country_code ;;
  }

  dimension: hcp_id {
    type: number
    sql: ${TABLE}.hcp_id ;;
  }

  dimension: hcp_state_code {
    type: string
    sql: ${TABLE}.hcp_state_code ;;
  }
  dimension: hcp_state_map {
    map_layer_name: us_states
    sql: ${TABLE}.hcp_state_code;;
  }

  dimension: hcp_street1 {
    type: string
    sql: ${TABLE}.hcp_street1 ;;
  }

  dimension: hcp_street2 {
    type: string
    sql: ${TABLE}.hcp_street2 ;;
  }

  dimension: hcp_zip_code {
    type: string
    sql: ${TABLE}.hcp_zip_code ;;
  }

  dimension: mstr_hcp_addrs_ref {
    type: number
    sql: ${TABLE}.mstr_hcp_addrs_ref ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
