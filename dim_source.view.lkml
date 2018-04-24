view: dim_source {
  sql_table_name: qpharma_bi.dim_source ;;

  dimension: source_code {
    type: number
    sql: ${TABLE}.source_code ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  measure: count {
    type: count
    drill_fields: [source_name]
  }
}
