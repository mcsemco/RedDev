- dashboard: overall_by_sa
  title: Overall by SA
  layout: newspaper
  elements:
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
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 0
    col: 0
    width: 4
    height: 6
  - name: SA Transactions List
    title: SA Transactions List
    model: reddevbi
    explore: fct_sa_transaction_dtl
    type: table
    fields:
    - dim_client.client_code
    - dim_hcp.hcp_full_name
    - dim_representative.representative_full_name
    - dim_product.product_desc
    - fct_sa_transaction_dtl.sa_transaction_date
    - fct_sa_transaction_dtl.sum_product_qty
    sorts:
    - fct_sa_transaction_dtl.sa_transaction_date desc
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
    hidden_fields:
    - dim_client.client_code
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 18
    col: 0
    width: 19
    height: 6
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
    font_size: ''
    label_rotation: 0
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 0
    col: 12
    width: 7
    height: 6
  - name: Ordered Quantity by Year-Month (SA)
    title: Ordered Quantity by Year-Month (SA)
    model: reddevbi
    explore: fct_sa_transaction_dtl
    type: looker_column
    fields:
    - fct_sa_transaction_dtl.sa_transaction_month
    - fct_sa_transaction_dtl.sum_product_qty
    sorts:
    - fct_sa_transaction_dtl.sa_transaction_month desc
    limit: 500
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
    hide_legend: false
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 12
    col: 9
    width: 10
    height: 6
  - name: Count of Products and Ordered Quantity by Year-Month (SA)
    title: Count of Products and Ordered Quantity by Year-Month (SA)
    model: reddevbi
    explore: fct_sa_transaction_dtl
    type: looker_column
    fields:
    - fct_sa_transaction_dtl.sa_transaction_month
    - fct_sa_transaction_dtl.count_products_w_ordered_qty
    sorts:
    - fct_sa_transaction_dtl.sa_transaction_month desc
    limit: 500
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
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 12
    col: 0
    width: 9
    height: 6
  - name: Count of SA Transactions by Projects
    title: Count of SA Transactions by Projects
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
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 0
    col: 4
    width: 8
    height: 6
  - name: Count of SA Transactions by HCP State
    title: Count of SA Transactions by HCP State
    model: reddevbi
    explore: dim_hcp
    type: looker_column
    fields:
    - dim_hcp_address.hcp_state_code
    - fct_sa_transaction.count_transactions
    sorts:
    - dim_hcp_address.hcp_state_code
    limit: 500
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
    series_types: {}
    show_dropoff: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    listen:
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
      HCP Full Name: dim_hcp.hcp_full_name
      Client: dim_client.client_code
    row: 6
    col: 0
    width: 19
    height: 6
  filters:
  - name: SA Date Range
    title: SA Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/12/31
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
