view: fct_dtp_request_line {
  sql_table_name: demo_bi.fct_dtp_request_line ;;

  dimension: cache_tb_dtp_req_line_1_row_id_ref {
    type: string
    sql: ${TABLE}.cache_tb_dtp_req_line_1_row_id_ref ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.create_date ;;
  }

  dimension: dtp_request_line_id {
    type: number
    sql: ${TABLE}.dtp_request_line_id ;;
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

  dimension: hcp_speciality_id {
    type: number
    sql: ${TABLE}.hcp_speciality_id ;;
  }

 # dimension: ordered_qty {
 #   type: number
 #   sql: ${TABLE}.ordered_qty ;;
 # }

  dimension: product_family_id {
    type: number
    sql: ${TABLE}.product_family_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_type_id {
    type: number
    sql: ${TABLE}.product_type_id ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }

  dimension: representative_id {
    type: number
    sql: ${TABLE}.representative_id ;;
  }

  dimension: request_code {
    type: string
    sql: ${TABLE}.request_code ;;
  }

  dimension_group: request {
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
    sql: ${TABLE}.request_date ;;
  }

  dimension: request_status_id {
    type: number
    sql: ${TABLE}.request_status_id ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}.ship_date ;;
  }

  dimension: shipment_id_code {
    type: string
    sql: ${TABLE}.shipment_id_code ;;
  }

  dimension: shipped_qty {
    type: number
    sql: ${TABLE}.shipped_qty ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: tracking_num_code {
    type: string
    sql: ${TABLE}.tracking_num_code ;;
  }

  measure: count {
    label: "Count of Transactions"
    type: count_distinct
    drill_fields: []
    sql:${TABLE}.dtp_request_line_id  ;;
  }

  measure: count_products {
    label: "Count of Products"
    type: count_distinct
    drill_fields: [client_id, hcp_address_id,hcp_id,source_id,representative_id,request_status_id,project_id,product_family_id,product_id]
    sql: ${TABLE}.product_id ;;
  }

  measure: ordered_qty {
    label: "Ordered Q-ty"
    type: sum
    drill_fields: [client_id, hcp_address_id,hcp_id,source_id,representative_id,request_status_id,project_id,product_family_id,product_id]
    value_format: "#,##0"
    sql: ${TABLE}.ordered_qty ;;
  }

  measure: count_products_w_ordered_qty {
    label: "Count of Products"
    type: count_distinct
    drill_fields: [client_id, hcp_address_id,hcp_id,source_id,representative_id,request_status_id,project_id,product_family_id,product_id]
    sql: ${TABLE}.product_id ;;

    html: <span style="font-weight:normal;line-height:2.4;">Count of Products:</span> {{count_products._rendered_value}}
          <br>
          <span style="font-weight:normal">Ordered Q-ty:</span> {{ordered_qty._rendered_value}} <br>  ;;
  }
}
