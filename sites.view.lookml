- view: sites
  sql_table_name: sites
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

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: coc
    type: string
    sql: ${TABLE}.coc

  - dimension: deleted
    hidden: true
    type: yesno
    sql: ${TABLE}.deleted

  - dimension: geocode
    type: string
    sql: ${TABLE}.geocode

  - dimension_group: last_updated
    hidden: true
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: location
    label:  'Location Manager'
    type: string
    sql: ${TABLE}.location

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: phone
    type: string
    sql: ${TABLE}.phone

  - dimension: ref_agency
    hidden: true
    type: number
    sql: ${TABLE}.ref_agency

  - dimension: ref_agency_deleted
    hidden: true
    type: number
    sql: ${TABLE}.ref_agency_deleted

  - dimension: ref_user_updated
    hidden: true
    type: number
    sql: ${TABLE}.ref_user_updated

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: status
    sql_case:
         Active: ${TABLE}.status = 1
         Inactive: ${TABLE}.status = 2  

  - dimension: zip
    type: string
    sql: ${TABLE}.zip

  - measure: count
    type: count
    drill_fields: [id, name]

