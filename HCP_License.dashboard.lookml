- dashboard: hcp_license
  title: HCP License
  layout: newspaper
  elements:
  - name: Count of Expired License by Year-Month
    title: Count of Expired License by Year-Month
    model: reddevbi
    explore: dim_hcp
    type: looker_column
    fields:
    - dim_hcp_license.count
    - dim_hcp_license.hcp_license_expiration_month
    sorts:
    - dim_hcp_license.hcp_license_expiration_month
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
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      License State: dim_hcp_license.hcp_license_state_code
      Speciality: dim_hcp_speciality.hcp_speciality_code
    row: 0
    col: 0
    width: 10
    height: 9
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
      License State: dim_hcp_license.hcp_license_state_code
      Speciality: dim_hcp_speciality.hcp_speciality_code
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
      License State: dim_hcp_license.hcp_license_state_code
      Speciality: dim_hcp_speciality.hcp_speciality_code
    row: 9
    col: 0
    width: 21
    height: 8
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
    font_size: ''
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
      HCP Full Name: dim_hcp.hcp_full_name
      License State: dim_hcp_license.hcp_license_state_code
      Speciality: dim_hcp_speciality.hcp_speciality_code
    row: 17
    col: 0
    width: 11
    height: 8
  - name: HCPs License Information
    title: HCPs License Information
    model: reddevbi
    explore: dim_hcp
    type: table
    fields:
    - dim_hcp.hcp_full_name_for_license
    - dim_hcp_license.hcp_license_code
    - dim_hcp_license.hcp_license_expiration_date
    - dim_hcp_license.hcp_license_state_code
    - dim_hcp_license.hcp_license_status
    sorts:
    - dim_hcp_license.hcp_license_expiration_date desc
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
    value_labels: labels
    label_type: labPer
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
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    font_size: '12'
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    conditional_formatting:
    - type: equal to
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields: []
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
    row: 25
    col: 0
    width: 21
    height: 7
  - name: Count of HCP Speciality by Speciality Code (Best 50)
    title: Count of HCP Speciality by Speciality Code (Best 50)
    model: reddevbi
    explore: dim_hcp
    type: looker_pie
    fields:
    - dim_hcp_license.count
    - dim_hcp_speciality.hcp_speciality_code
    sorts:
    - dim_hcp_license.count desc
    limit: 50
    query_timezone: America/Los_Angeles
    value_labels: labels
    label_type: labPer
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    font_size: '12'
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_date
    row: 17
    col: 11
    width: 10
    height: 8
  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/05/31
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
