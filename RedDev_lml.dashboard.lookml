- dashboard: reddev_dashboard
  title: RedDev Dashboard
  layout: newspaper
  elements:
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
      Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 0
    col: 0
    width: 3
    height: 3
  - name: Us Map Count of Transactions
    title: Us Map Count of Transactions
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
    show_view_names: true
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
    listen:
      Date Range: fct_sa_transaction.sa_transaction_date
      Client: dim_client.client_code
      Status: fct_sa_transaction.sa_transaction_status_code
      HCP Full Name: dim_hcp.hcp_full_name
    row: 0
    col: 3
    width: 13
    height: 9
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
      Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 3
    col: 0
    width: 3
    height: 3
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
      Date Range: fct_sa_transaction.sa_transaction_date
      Client: dim_client.client_code
      Status: fct_sa_transaction.sa_transaction_status_code
      HCP Full Name: dim_hcp.hcp_full_name
    row: 6
    col: 0
    width: 3
    height: 3
  - name: Count of Transactions by Projects
    title: Count of Transactions by Projects
    model: reddevbi
    explore: fct_sa_transaction
    type: looker_column
    fields:
    - fct_sa_transaction.count_transactions
    - dim_project.project_name
    sorts:
    - fct_sa_transaction.count_transactions desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    title_color: "#ffaa90"
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
      Date Range: fct_sa_transaction.sa_transaction_date
      Client: dim_client.client_code
      Status: fct_sa_transaction.sa_transaction_status_code
      HCP Full Name: dim_hcp.hcp_full_name
    row: 9
    col: 0
    width: 8
    height: 6
  - name: Count of Transactions by Order Source
    title: Count of Transactions by Order Source
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
      Date Range: fct_sa_transaction.sa_transaction_date
      Client: dim_client.client_code
      Status: fct_sa_transaction.sa_transaction_status_code
      HCP Full Name: dim_hcp.hcp_full_name
    row: 9
    col: 8
    width: 8
    height: 6
  - name: Count of Products by Year-Month and Status
    title: Count of Products by Year-Month and Status
    model: reddevbi
    explore: fct_dtp_request_line
    type: looker_column
    fields:
    - fct_dtp_request_line.request_month
    - dim_request_status.request_status_name
    - fct_dtp_request_line.count_products
    pivots:
    - dim_request_status.request_status_name
    fill_fields:
    - fct_dtp_request_line.request_month
    sorts:
    - fct_dtp_request_line.count_products desc 0
    - fct_dtp_request_line.request_month
    - dim_request_status.request_status_name
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
    x_axis_datetime_label: "%Y%m"
    listen:
      Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 15
    col: 0
    width: 8
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
    - fct_dtp_request_line.request_month desc
    - dim_request_status.request_status_name
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
    x_axis_datetime_label: "%Y%m"
    listen:
      Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 15
    col: 8
    width: 8
    height: 6
  - name: Table
    title: Table
    model: reddevbi
    explore: fct_dtp_request_line
    type: table
    fields:
    - dim_client.client_code
    - dim_hcp.hcp_full_name
    - dim_representative.representative_full_name
    - dim_product.product_desc
    - fct_dtp_request_line.create_date
    - fct_dtp_request_line.request_date
    - fct_dtp_request_line.ship_date
    - fct_dtp_request_line.ordered_qty
    sorts:
    - fct_dtp_request_line.request_date desc
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - dim_client.client_code
    listen:
      Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 21
    col: 0
    width: 16
    height: 6
  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/04/20
    allow_multiple_values: true
    required: false
  - name: Client
    title: Client
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: reddevbi
    explore: dim_client
    listens_to_filters:
    - HCP Full Name
    - Status
    field: dim_client.client_code
  - name: Status
    title: Status
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
    - Status
    - Client
    field: dim_hcp.hcp_full_name
