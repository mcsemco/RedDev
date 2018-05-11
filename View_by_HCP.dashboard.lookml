- dashboard: view_by_hcp
  title: VIew by HCP
  layout: newspaper
  elements:
  - name: HCP Information
    title: HCP Information
    model: reddevbi
    explore: dim_hcp
    type: looker_single_record
    fields:
    - dim_hcp.hcp_first_name
    - dim_hcp.hcp_last_name
    - dim_hcp_license.hcp_license_code
    - dim_hcp_address.hcp_zip_code
    - dim_hcp_license.hcp_license_expiration_date
    - dim_hcp_license.hcp_license_month_to_exp_str
    - dim_hcp_speciality.hcp_speciality_code
    - dim_hcp_address.hcp_country_code
    - dim_hcp_address.hcp_state_code
    - dim_hcp_address.hcp_city
    - dim_hcp_address.hcp_street1
    - dim_hcp_license.hcp_license_month_to_expire
    sorts:
    - dim_hcp.hcp_first_name
    limit: 500
    dynamic_fields:
    - table_calculation: months_to_license_expiration
      label: Months to License Expiration
      expression: if(${dim_hcp_license.hcp_license_month_to_expire}<0,"Expired",${dim_hcp_license.hcp_license_month_to_exp_str})
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
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
    hidden_fields:
    - dim_hcp_license.hcp_license_month_to_expire
    - dim_hcp_license.hcp_license_month_to_exp_str
    - dim_hcp_license.hcp_license_expiration_date
    listen:
      DTP Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      HCP Full Name: dim_hcp.hcp_full_name
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
    row: 0
    col: 0
    width: 5
    height: 6
  - name: Count of DTP Transactions by Projects
    title: Count of DTP Transactions by Projects
    model: reddevbi
    explore: fct_dtp_request_line
    type: looker_column
    fields:
    - dim_project.project_name
    - fct_dtp_request_line.count
    sorts:
    - fct_dtp_request_line.count desc
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
      DTP Date Range: fct_dtp_request_line.ship_date
      Client: dim_client.client_code
      HCP Full Name: dim_hcp.hcp_full_name
    row: 0
    col: 5
    width: 8
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
      Client: dim_client.client_code
      HCP Full Name: dim_hcp.hcp_full_name
      SA Date Range: fct_sa_transaction.sa_transaction_date
    row: 0
    col: 13
    width: 9
    height: 6
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
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 6
    col: 0
    width: 4
    height: 2
  - name: Count of Products by Year-Month and Status
    title: Count of Products by Year-Month and Status
    model: reddevbi
    explore: fct_dtp_request_line
    type: looker_column
    fields:
    - fct_dtp_request_line.count_products
    - fct_dtp_request_line.request_month
    - dim_request_status.request_status_name
    pivots:
    - dim_request_status.request_status_name
    fill_fields:
    - fct_dtp_request_line.request_month
    sorts:
    - fct_dtp_request_line.request_month
    - dim_request_status.request_status_name 0
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
    font_size: 6px
    label_rotation: 0
    listen:
      DTP Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 6
    col: 4
    width: 18
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
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 10
    col: 0
    width: 4
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
      Client: dim_client.client_code
      HCP Full Name: dim_hcp.hcp_full_name
      SA Date Range: fct_sa_transaction.sa_transaction_date
    row: 8
    col: 0
    width: 4
    height: 2
  - name: Count of DTP Transactions by Rep Full Name
    title: Count of DTP Transactions by Rep Full Name
    model: reddevbi
    explore: fct_dtp_request_line
    type: looker_column
    fields:
    - dim_representative.representative_full_name
    - fct_dtp_request_line.count
    sorts:
    - fct_dtp_request_line.count desc
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
    font_size: 6px
    label_rotation: 0
    listen:
      DTP Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 12
    col: 0
    width: 22
    height: 6
  - name: DTP Transactions List
    title: DTP Transactions List
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
      DTP Date Range: fct_dtp_request_line.request_date
      Client: dim_client.client_code
      Status: dim_request_status.request_status_name
      HCP Full Name: dim_hcp.hcp_full_name
    row: 18
    col: 0
    width: 22
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
      Client: dim_client.client_code
      HCP Full Name: dim_hcp.hcp_full_name
      SA Date Range: fct_sa_transaction_dtl.sa_transaction_date
    row: 24
    col: 0
    width: 22
    height: 5
  filters:
  - name: DTP Date Range
    title: DTP Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/12/31
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
    listens_to_filters: []
    field: dim_client.client_code
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
  - name: SA Date Range
    title: SA Date Range
    type: date_filter
    default_value: 2018/01/01 to 2018/12/31
    allow_multiple_values: true
    required: false
