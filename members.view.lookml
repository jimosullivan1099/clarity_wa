- view: members
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: auto_suggest
    type: yesno
    sql: ${TABLE}.auto_suggest

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension: force_password_change
    type: int
    sql: ${TABLE}.force_password_change

  - dimension: has_image
    type: yesno
    sql: ${TABLE}.has_image

  - dimension: is_warning
    type: int
    sql: ${TABLE}.is_warning

  - dimension: last_name
    sql: ${TABLE}.last_name

  - dimension_group: last_password_change
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_password_change_date

  - dimension: phone_number
    sql: ${TABLE}.phone_number

  - dimension: recent_services
    type: yesno
    sql: ${TABLE}.recent_services

  - dimension: ref_agency
    type: int
    sql: ${TABLE}.ref_agency

  - dimension: ref_file
    type: int
    sql: ${TABLE}.ref_file

  - dimension: ref_module
    type: int
    sql: ${TABLE}.ref_module

  - dimension: ref_profile_screen
    type: int
    sql: ${TABLE}.ref_profile_screen

  - dimension: ref_user
    type: int
    sql: ${TABLE}.ref_user

  - dimension: warning_days
    type: int
    sql: ${TABLE}.warning_days

  - measure: count
    type: count
    drill_fields: [id, first_name, last_name]

