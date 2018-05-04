view: dim_project {
  sql_table_name: demo_bi.dim_project ;;

  dimension: project_code {
    type: string
    sql: ${TABLE}.project_code ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name]
  }
}
