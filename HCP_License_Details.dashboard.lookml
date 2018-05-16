- dashboard: hcp_license_by_details
  title: HCP License Details
  layout: newspaper
  elements:
  - name: HCP Speciality Information
    title: HCP Speciality Information
    model: reddevbi
    explore: dim_hcp
    type: looker_single_record
    fields:
    - dim_hcp.hcp_last_name
    - dim_hcp.hcp_first_name
    - dim_hcp_speciality.hcp_speciality_code
    sorts:
    - dim_hcp.hcp_last_name
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 0
    col: 0
    width: 8
    height: 3
  - name: HCP License Expiration Info
    title: HCP License Expiration Info
    model: reddevbi
    explore: dim_hcp
    type: table
    fields:
    - dim_hcp_license.hcp_license_code
    - dim_hcp_license.hcp_license_days_to_expire
    sorts:
    - dim_hcp_license.hcp_license_days_to_expire
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    point_style: circle
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map: auto
    map_projection: ''
    quantize_colors: false
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: White to Green
        colors:
        - "#FFFFFF"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 0
    col: 8
    width: 9
    height: 3
  - name: Count of DTP Transactions by HCP Lisence Code and HCP License State
    title: Count of DTP Transactions by HCP Lisence Code and HCP License State
    model: reddevbi
    explore: fct_dtp_request_line
    type: looker_column
    fields:
    - dim_hcp_license.hcp_license_state_code
    - dim_hcp_license.hcp_license_code
    - fct_dtp_request_line.count
    pivots:
    - dim_hcp_license.hcp_license_state_code
    sorts:
    - fct_dtp_request_line.count desc 0
    - dim_hcp_license.hcp_license_state_code
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 0
    col: 17
    width: 7
    height: 7
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
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 3
    col: 8
    width: 9
    height: 11
  - name: HCP License Info
    title: HCP License Info
    model: reddevbi
    explore: dim_hcp
    type: table
    fields:
    - dim_hcp_license.hcp_license_code
    - dim_hcp_license.hcp_license_state_code
    - dim_hcp_license.hcp_license_expiration_date
    - dim_hcp_license.hcp_license_status
    - dim_hcp_license.hcp_license_days_to_expire
    sorts:
    - dim_hcp_license.hcp_license_expiration_date
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: White to Green
        colors:
        - "#FFFFFF"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 3
    col: 0
    width: 8
    height: 6
  - name: Count of SA Transactions by HCP Lisence Code and HCP License State
    title: Count of SA Transactions by HCP Lisence Code and HCP License State
    model: reddevbi
    explore: fct_sa_transaction
    type: looker_column
    fields:
    - fct_sa_transaction.count_transactions
    - dim_hcp_license.hcp_license_code
    - dim_hcp_license.hcp_license_state_code
    pivots:
    - dim_hcp_license.hcp_license_state_code
    sorts:
    - fct_sa_transaction.count_transactions desc 0
    - dim_hcp_license.hcp_license_state_code
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 7
    col: 17
    width: 7
    height: 7
  - name: HCP Address Information
    title: HCP Address Information
    model: reddevbi
    explore: dim_hcp
    type: table
    fields:
    - dim_hcp_address.hcp_state_code
    - dim_hcp_address.hcp_street1
    - dim_hcp_address.hcp_zip_code
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    point_style: circle
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map: auto
    map_projection: ''
    quantize_colors: false
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: White to Green
        colors:
        - "#FFFFFF"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 9
    col: 0
    width: 8
    height: 5
  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/05/11
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
    default_value: ACTIVE
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
