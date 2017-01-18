- view: client_notes
  sql_table_name: client_notes
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: added
    hidden: true
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.added_date

  - dimension_group: date
    label:  'Case Note '
    type: time
    timeframes: [date, week, month, year]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension: deleted
    hidden: true
    type: yesno
    sql: ${TABLE}.deleted

  - dimension_group: last_updated
    hidden: true
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: note
    hidden: true
    type: string
    sql: ${TABLE}.note

  - dimension: private
    hidden: true
    type: yesno
    sql: ${TABLE}.private

  - dimension: ref_agency
    hidden: true
    type: number
    sql: ${TABLE}.ref_agency

  - dimension: ref_agency_deleted
    hidden: true
    type: number
    sql: ${TABLE}.ref_agency_deleted

  - dimension: ref_client
    hidden: true
    type: number
    sql: ${TABLE}.ref_client

  - dimension: ref_client_program
    hidden: true
    type: number
    sql: ${TABLE}.ref_client_program

  - dimension: ref_user
    label:  'Staff'
    sql: fn_getUserNameById(${TABLE}.ref_user)

  - dimension: ref_user_updated
    hidden: true
    type: number
    sql: ${TABLE}.ref_user_updated

  - dimension: title
    hidden: true
    type: string
    sql: ${TABLE}.title

  - dimension: tracking_hour
    type: number
    sql: ${TABLE}.tracking_hour

  - dimension: tracking_minute
    type: number
    sql: ${TABLE}.tracking_minute

  - measure: count
    type: count
    drill_fields: [id]

