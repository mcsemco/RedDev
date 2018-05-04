view: dim_request_status {
  sql_table_name: demo_bi.dim_request_status ;;

  dimension: request_status_code {
    type: number
    sql: ${TABLE}.request_status_code ;;
  }

  dimension: request_status_id {
    type: number
    sql: ${TABLE}.request_status_id ;;
  }

  dimension: request_status_name {
    type: string
    sql: ${TABLE}.request_status_name ;;
  }

  measure: count {
    type: count
    drill_fields: [request_status_name]
  }
}
