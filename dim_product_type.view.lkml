view: dim_product_type {
  sql_table_name: demo_bi.dim_product_type ;;

  dimension: product_type_id {
    type: number
    sql: ${TABLE}.product_type_id ;;
  }

  dimension: product_type_name {
    type: string
    sql: ${TABLE}.product_type_name ;;
  }

  measure: count {
    type: count
    drill_fields: [product_type_name]
  }
}
