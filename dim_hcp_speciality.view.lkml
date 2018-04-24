view: dim_hcp_speciality {
  sql_table_name: qpharma_bi.dim_hcp_speciality ;;

  dimension: hcp_speciality_code {
    type: string
    sql: ${TABLE}.hcp_speciality_code ;;
  }

  dimension: hcp_speciality_id {
    type: number
    sql: ${TABLE}.hcp_speciality_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
