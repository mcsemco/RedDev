view: dim_representative {
  sql_table_name: demo_bi.dim_representative ;;

  dimension: representative_code {
    type: string
    sql: ${TABLE}.representative_code ;;
  }

  dimension: representative_email {
    type: string
    sql: ${TABLE}.representative_email ;;
  }

  dimension: representative_first_name {
    type: string
    sql: ${TABLE}.representative_firts_name ;;
  }

  dimension: representative_id {
    type: number
    sql: ${TABLE}.representative_id ;;
  }

  dimension: representative_last_name {
    type: string
    sql: ${TABLE}.representative_last_name ;;
  }

  dimension: representative_full_name {
    type: string
    sql:  ${TABLE}.representative_first_name || ' ' || ${TABLE}.representative_last_name ;;
    link: {
      label: "View by Rep"
      url: "/dashboards/reddevbi::view_by_rep?Rep%20Full%20Name={{ value }}"
      icon_url: "https://www.google.com/s2/favicons?domain=www.looker.com"
    }
  }

  measure: count {
    type: count
    drill_fields: [representative_first_name, representative_last_name]
  }
}
