- dashboard: hcp_license_by_years
  title: HCP License by Years
  layout: newspaper
  description: HCP License by Years
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
      Date Range: dim_hcp_license.hcp_license_expiration_year
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 0
    col: 10
    width: 11
    height: 8
  - name: Count of HCP Licenses by Speciality Top 10
    title: Count of HCP Licenses by Speciality Top 10
    model: reddevbi
    explore: dim_hcp
    type: looker_pie
    fields:
    - dim_hcp_license.count
    - dim_hcp_speciality.hcp_speciality_code
    sorts:
    - dim_hcp_license.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    value_labels: labels
    label_type: labVal
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
      Date Range: dim_hcp_license.hcp_license_expiration_year
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 0
    col: 0
    width: 10
    height: 8
  - name: Count of Expired License by Year and State
    title: Count of Expired License by Year and State
    model: reddevbi
    explore: dim_hcp
    type: looker_column
    fields:
    - dim_hcp_license.hcp_license_expiration_year
    - dim_hcp_license.count
    fill_fields:
    - dim_hcp_license.hcp_license_expiration_year
    filters:
      dim_hcp_speciality.hcp_speciality_code: ''
    sorts:
    - dim_hcp_license.count
    limit: 500
    column_limit: 50
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
    x_axis_datetime_label: "%Y"
    hidden_fields: []
    column_spacing_ratio:
    column_group_spacing_ratio:
    listen:
      Date Range: dim_hcp_license.hcp_license_expiration_year
      License Status: dim_hcp_license.hcp_license_status
      License State: dim_hcp_license.hcp_license_state_code
    row: 8
    col: 0
    width: 21
    height: 8
  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2016/01/01 to 2020/05/31
    allow_multiple_values: true
    required: false
  - name: License Status
    title: License Status
    type: field_filter
    default_value: ACTIVE
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_hcp_license
    listens_to_filters:
    - HCP Full Name
    field: dim_hcp_license.hcp_license_status
  - name: License State
    title: License State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_hcp_license
    listens_to_filters:
    - HCP Full Name
    field: dim_hcp_license.hcp_license_state_code
