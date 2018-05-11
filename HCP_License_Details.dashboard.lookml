- dashboard: hcp_license_by_details
  title: HCP License by Details
  layout: newspaper
  elements:
  - name: Map Count of Expired License by State
    title: Map Count of Expired License by State
    model: reddevbi
    explore: dim_hcp
    type: looker_geo_choropleth
    fields:
    - dim_hcp_license.hcp_license_state_code_map
    - dim_hcp_license.count
    sorts:
    - dim_hcp_license.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    map: usa
    map_projection: ''
    show_view_names: true
    quantize_colors: false
    series_types: {}
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      Speciality: dim_hcp_speciality.hcp_speciality_code
      License State: dim_hcp_license.hcp_license_state_code
    row: 0
    col: 10
    width: 11
    height: 9
  - name: Count of Expired License  by State in Current Month
    title: Count of Expired License  by State in Current Month
    model: reddevbi
    explore: dim_hcp
    type: looker_column
    fields:
    - dim_hcp_license.count
    - dim_hcp_license.hcp_license_expiration_month
    - dim_hcp_license.hcp_license_state_code
    pivots:
    - dim_hcp_license.hcp_license_state_code
    fill_fields:
    - dim_hcp_license.hcp_license_expiration_month
    sorts:
    - dim_hcp_license.hcp_license_expiration_month
    - dim_hcp_license.hcp_license_state_code 0
    limit: 500
    filter_expression: trunc_months(${dim_hcp_license.hcp_license_expiration_month})
      = trunc_months(now())
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map: usa
    map_projection: ''
    quantize_colors: false
    series_types: {}
    x_axis_datetime_label: "%Y-%m"
    listen:
      HCP Full Name: dim_hcp.hcp_full_name
      Speciality: dim_hcp_speciality.hcp_speciality_code
      License State: dim_hcp_license.hcp_license_state_code
    row: 9
    col: 0
    width: 21
    height: 8
  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2018/05/11 to 2018/05/11
    allow_multiple_values: true
    required: false
  - name: HCP Full Name
    title: HCP Full Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_hcp
    listens_to_filters: []
    field: dim_hcp.hcp_full_name
  - name: License Status
    title: License Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_hcp_license
    listens_to_filters: []
    field: dim_hcp_license.hcp_license_status
  - name: License State
    title: License State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_hcp_license
    listens_to_filters: []
    field: dim_hcp_license.hcp_license_state_code
  - name: Speciality
    title: Speciality
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_hcp_speciality
    listens_to_filters: []
    field: dim_hcp_speciality.hcp_speciality_code
