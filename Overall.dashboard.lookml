- dashboard: overall
  title: Overall
  layout: newspaper
  elements:
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
      DTP Date Range: fct_dtp_request_line.request_date
      DTP Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 0
    col: 0
    width: 3
    height: 2
  - name: Count of SA Transactions by Order Source
    title: Count of SA Transactions by Order Source
    model: reddevbi
    explore: fct_sa_transaction
    type: looker_column
    fields:
    - dim_source.source_name
    - fct_sa_transaction.count_transactions
    sorts:
    - dim_source.source_name
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
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      DTP Status: fct_sa_transaction.sa_transaction_status_code
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 0
    col: 3
    width: 7
    height: 6
  - name: Count of DTP Transactions by Order Source
    title: Count of DTP Transactions by Order Source
    model: reddevbi
    explore: fct_dtp_request_line
    type: looker_column
    fields:
    - fct_dtp_request_line.count
    - dim_source.source_name
    sorts:
    - dim_source.source_name
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
    listen:
      DTP Date Range: fct_dtp_request_line.request_date
      DTP Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 0
    col: 10
    width: 7
    height: 6
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
      DTP Date Range: fct_dtp_request_line.request_date
      DTP Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 2
    col: 0
    width: 3
    height: 2
  - name: Count of SA Transactions
    title: Count of SA Transactions
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
    single_value_title: Count of SA Transactions
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      DTP Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 4
    col: 0
    width: 3
    height: 2
  - name: Count of SA Transactions by Year-Month
    title: Count of SA Transactions by Year-Month
    model: reddevbi
    explore: fct_sa_transaction
    type: looker_column
    fields:
    - fct_sa_transaction.count_transactions
    - fct_sa_transaction.sa_transaction_month
    fill_fields:
    - fct_sa_transaction.sa_transaction_month
    sorts:
    - fct_sa_transaction.count_transactions desc
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
    x_axis_datetime_label: "%m-%Y"
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      DTP Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 6
    col: 0
    width: 8
    height: 6
  - name: Count of Transactions by HCP State
    title: Count of Transactions by HCP State
    model: reddevbi
    explore: dim_hcp
    type: looker_column
    fields:
    - dim_hcp_address.hcp_state_code
    - fct_dtp_request_line.count
    - fct_sa_transaction.count_transactions
    sorts:
    - dim_hcp_address.hcp_state_code
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
    series_types: {}
    show_dropoff: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    listen:
      DTP Date Range: fct_dtp_request_line.request_date
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 12
    col: 0
    width: 17
    height: 6
  - name: Ordered Quantity by Year-Month and Status
    title: Ordered Quantity by Year-Month and Status
    model: reddevbi
    explore: fct_dtp_request_line
    type: looker_column
    fields:
    - fct_dtp_request_line.ordered_qty
    - dim_request_status.request_status_name
    - fct_dtp_request_line.request_month
    pivots:
    - dim_request_status.request_status_name
    fill_fields:
    - fct_dtp_request_line.request_month
    sorts:
    - fct_dtp_request_line.request_month
    - dim_request_status.request_status_name 0
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    x_axis_datetime_label: "%Y-%m"
    font_size: 6px
    label_rotation: 0
    listen:
      DTP Date Range: fct_dtp_request_line.request_date
      DTP Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 6
    col: 8
    width: 9
    height: 6
  - name: Map US Count of SA Transactions
    title: Map US Count of SA Transactions
    model: reddevbi
    explore: fct_sa_transaction
    type: looker_geo_choropleth
    fields:
    - fct_sa_transaction.count_transactions
    - dim_hcp_address.hcp_state_map
    sorts:
    - fct_sa_transaction.count_transactions desc
    query_timezone: America/Los_Angeles
    map: usa
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    colors: []
    empty_color: ''
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      DTP Status: fct_sa_transaction.sa_transaction_status_code
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 0
    col: 17
    width: 7
    height: 12
  filters:
  - name: DTP Date Range
    title: DTP Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/12/31
    allow_multiple_values: true
    required: false
  - name: SA Date Range
    title: SA Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/12/31
    allow_multiple_values: true
    required: false
  - name: DTP Status
    title: DTP Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_request_status
    listens_to_filters:
    - HCP Full Name
    - Client
    field: dim_request_status.request_status_name
  - name: HCP Full Name
    title: HCP Full Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_hcp
    listens_to_filters:
    - Client
    - DTP Status
    field: dim_hcp.hcp_full_name
  - name: Client
    title: Client
    type: field_filter
    default_value: CL^_L1
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_client
    listens_to_filters:
    - HCP Full Name
    - DTP Status
    field: dim_client.client_code
