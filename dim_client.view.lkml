view: dim_client {
  sql_table_name: demo_bi.dim_client ;;

  dimension: client_code {
    type: string
    sql: ${TABLE}.client_code ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
  }

  measure: count {
    type: count
    drill_fields: [client_name]
  }
}
