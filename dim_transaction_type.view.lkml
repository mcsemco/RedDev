view: dim_transaction_type {
  sql_table_name: demo_bi.dim_transaction_type ;;

  dimension: transaction_type_code {
    type: number
    sql: ${TABLE}.transaction_type_code ;;
  }

  dimension: transaction_type_desc {
    type: string
    sql: ${TABLE}.transaction_type_desc ;;
  }

  dimension: transaction_type_id {
    type: number
    sql: ${TABLE}.transaction_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
