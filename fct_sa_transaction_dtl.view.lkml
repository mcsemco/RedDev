view: fct_sa_transaction_dtl {
  sql_table_name: demo_bi.fct_sa_transaction_dtl ;;

  dimension: cache_tb_sa_trans_dtl_1_row_id_ref {
    type: string
    sql: ${TABLE}.cache_tb_sa_trans_dtl_1_row_id_ref ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: hcp_address_id {
    type: number
    sql: ${TABLE}.hcp_address_id ;;
  }

  dimension: hcp_id {
    type: number
    sql: ${TABLE}.hcp_id ;;
  }

  dimension: hcp_license_id {
    type: number
    sql: ${TABLE}.hcp_license_id ;;
  }

  dimension: product_family_id {
    type: number
    sql: ${TABLE}.product_family_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_qty {
    type: number
    sql: ${TABLE}.product_qty ;;
  }

  dimension: product_type_id {
    type: number
    sql: ${TABLE}.product_type_id ;;
  }

  dimension: representative_id {
    type: number
    sql: ${TABLE}.representative_id ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }

  dimension: sa_transaction_code {
    type: string
    sql: ${TABLE}.sa_transaction_code ;;
  }

  dimension_group: sa_transaction {
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
    sql: ${TABLE}.sa_transaction_date ;;
  }

  dimension: sa_transaction_dtl_id {
    type: number
    sql: ${TABLE}.sa_transaction_dtl_id ;;
  }

  dimension: sa_transaction_guid {
    type: string
    sql: ${TABLE}.sa_transaction_guid ;;
  }

  dimension: sa_transaction_id {
    type: number
    sql: ${TABLE}.sa_transaction_id ;;
  }

  dimension: sa_transaction_ref_code {
    type: string
    sql: ${TABLE}.sa_transaction_ref_code ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: transaction_type_id {
    type: number
    sql: ${TABLE}.transaction_type_id ;;
  }

  measure: count_transactions_dtl {
    type: count_distinct
    drill_fields: [client_id, hcp_address_id,hcp_id,source_id,representative_id,project_id,sa_transaction_code,transaction_type_id,sa_transaction_date,product_family_id]
    sql: ${TABLE}.sa_transaction_dtl_id ;;
  }

  measure: count_transactions {
    label: "Count of SA Transactions"
    type: count_distinct
    drill_fields: [client_id, hcp_address_id,hcp_id,source_id,representative_id,project_id,sa_transaction_code,transaction_type_id,sa_transaction_date,product_family_id]
    sql: ${TABLE}.sa_transaction_id ;;
  }

  measure: count_products {
    type: count_distinct
    drill_fields: [client_id, hcp_address_id,hcp_id,source_id,representative_id,project_id,sa_transaction_code,transaction_type_id,sa_transaction_date,product_family_id]
    sql: ${TABLE}.product_id ;;
  }

  measure: sum_product_qty {
    label: "Ordered Q-ty"
    type: sum
    value_format: "#,##0"
    drill_fields: [client_id, hcp_address_id,hcp_id,source_id,representative_id,project_id,sa_transaction_code,transaction_type_id,sa_transaction_date,product_family_id]
    sql: ${TABLE}.product_qty ;;
  }

  measure: count_products_w_ordered_qty {
    type: count_distinct
    drill_fields: [client_id, hcp_address_id,hcp_id,source_id,representative_id,project_id,sa_transaction_code,transaction_type_id,sa_transaction_date,product_family_id]
    sql: ${TABLE}.product_id ;;

    html: <span style="font-weight:normal;line-height:2.4;">Count of Products:</span> {{count_products._rendered_value}}
          <br>
          <span style="font-weight:normal">Ordered Q-ty:</span> {{sum_product_qty._rendered_value}} <br>  ;;
  }


}
