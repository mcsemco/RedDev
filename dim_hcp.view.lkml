view: dim_hcp {
  sql_table_name: demo_bi.dim_hcp ;;

  dimension: hcp_first_name {
    type: string
    sql: ${TABLE}.hcp_first_name ;;
  }

  dimension: hcp_id {
    type: number
    sql: ${TABLE}.hcp_id ;;
  }

  dimension: hcp_last_name {
    type: string
    sql: ${TABLE}.hcp_last_name ;;
  }

  dimension: hcp_mid_name {
    type: string
    sql: ${TABLE}.hcp_mid_name ;;
  }

  dimension: hcp_full_name {
    type: string
    sql:  ${TABLE}.hcp_first_name || ' ' || ${TABLE}.hcp_last_name ;;
    link: {
      label: "View by HCP"
      url: "/dashboards/reddevbi::view_by_hcp?HCP%20Full%20Name={{ value }}"
      icon_url: "https://www.google.com/s2/favicons?domain=www.looker.com"
    }
    link: {
      label: "RedirectTest Page "
      url: "http://10.10.2.34:8084/Home/RedirectTest"
      icon_url: "https://www.google.com/s2/favicons?domain=www.looker.com"
    }
  }

  dimension: hcp_speciality_id {
    type: number
    sql: ${TABLE}.hcp_speciality_id ;;
  }

  dimension: mstr_hcp_ref {
    type: number
    sql: ${TABLE}.mstr_hcp_ref ;;
  }

  measure: count {
    type: count
    drill_fields: [hcp_full_name]
  }
}
