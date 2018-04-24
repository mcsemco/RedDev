view: dim_product_family {
  sql_table_name: qpharma_bi.dim_product_family ;;

  dimension: product_family_id {
    type: number
    sql: ${TABLE}.product_family_id ;;
  }

  dimension: product_family_name {
    type: string
    sql: ${TABLE}.product_family_name ;;
  }

  measure: count {
    type: count
    drill_fields: [product_family_name]
  }
}
