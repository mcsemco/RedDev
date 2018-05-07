- dashboard: hcp_license_info
  title: HCP License Info
  layout: newspaper
  elements:
  - name: Count of Transactions
    title: Count of Transactions
    model: reddevbi
    explore: fct_sa_transaction
    type: single_value
    fields:
    - fct_sa_transaction.count_transactions
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    series_types: {}
    single_value_title: Count of Transactions
    listen:
      HCP Full Name: dim_hcp.hcp_full_name
      Date Range: fct_sa_transaction.sa_transaction_date
      Status: dim_request_status.request_status_name
      Client: dim_client.client_code
      State: dim_hcp_license.hcp_license_state_code
    row: 0
    col: 0
    width: 3
    height: 3
  - name: Count of DTP Transactions
    title: Count of DTP Transactions
    model: reddevbi
    explore: fct_dtp_request_line
    type: single_value
    fields:
    - fct_dtp_request_line.count
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    series_types: {}
    listen:
      HCP Full Name: dim_hcp.hcp_full_name
      Date Range: fct_dtp_request_line.request_date
      Status: dim_request_status.request_status_name
      Client: dim_client.client_code
      State: dim_hcp_license.hcp_license_state_code
    row: 6
    col: 0
    width: 3
    height: 3
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
      HCP Full Name: dim_hcp.hcp_full_name
      Date Range: dim_hcp_license.hcp_license_expiration_date
      State: dim_hcp_license.hcp_license_state_code
    row: 9
    col: 0
    width: 11
    height: 7
  - name: Ordered Quantity
    title: Ordered Quantity
    model: reddevbi
    explore: fct_dtp_request_line
    type: single_value
    fields:
    - fct_dtp_request_line.ordered_qty
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    series_types: {}
    single_value_title: Ordered Quantity
    listen:
      HCP Full Name: dim_hcp.hcp_full_name
      Date Range: fct_dtp_request_line.request_date
      Status: dim_request_status.request_status_name
      Client: dim_client.client_code
      State: dim_hcp_license.hcp_license_state_code
    row: 3
    col: 0
    width: 3
    height: 3
  - name: Count of Expired License by Year-Month and State
    title: Count of Expired License by Year-Month and State
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
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
      Date Range: dim_hcp_license.hcp_license_expiration_date
      State: dim_hcp_license.hcp_license_state_code
    row: 0
    col: 3
    width: 19
    height: 9
  - name: Count of Expired License by Year-Month
    title: Count of Expired License by Year-Month
    model: reddevbi
    explore: dim_hcp
    type: looker_column
    fields:
    - dim_hcp_license.count
    - dim_hcp_license.hcp_license_expiration_month
    fill_fields:
    - dim_hcp_license.hcp_license_expiration_month
    sorts:
    - dim_hcp_license.hcp_license_expiration_month
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
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
    column_spacing_ratio:
    column_group_spacing_ratio:
    listen:
      HCP Full Name: dim_hcp.hcp_full_name
      Date Range: dim_hcp_license.hcp_license_expiration_date
      State: dim_hcp_license.hcp_license_state_code
    row: 9
    col: 11
    width: 11
    height: 7
  - name: Count of License by Expiration Date
    title: Count of License by Expiration Date
    model: reddevbi
    explore: dim_hcp
    type: looker_column
    fields:
    - dim_hcp_license.count
    - dim_hcp_license.hcp_license_month_to_expire
    sorts:
    - dim_hcp_license.hcp_license_month_to_expire
    limit: 500
    filter_expression: |-
      ${dim_hcp_license.hcp_license_month_to_expire} >= 0 AND
      ${dim_hcp_license.hcp_license_month_to_expire}  <= 100
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
    x_axis_datetime_label: ''
    column_spacing_ratio:
    column_group_spacing_ratio:
    font_size: '7'
    listen:
      HCP Full Name: dim_hcp.hcp_full_name
      Date Range: dim_hcp_license.hcp_license_expiration_date
      State: dim_hcp_license.hcp_license_state_code
    row: 16
    col: 0
    width: 11
    height: 6
  filters:
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
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/04/24
    allow_multiple_values: true
    required: false
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_request_status
    listens_to_filters: []
    field: dim_request_status.request_status_name
  - name: Client
    title: Client
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_client
    listens_to_filters: []
    field: dim_client.client_code
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_hcp_license
    listens_to_filters: []
    field: dim_hcp_license.hcp_license_state_code
