- view: referral_history
  sql_table_name: referral_history
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_type
    sql: ${TABLE}.activity_type
    sql: fn_getPicklistValueName('referral_history_activity_types',${TABLE}.activity_type)     

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: in_progress
    type: yesno
    sql: ${TABLE}.in_progress

  - dimension: ref_original
    type: number
    sql: ${TABLE}.ref_original

  - dimension: ref_program
    hidden: true
    type: number
    sql: ${TABLE}.ref_program

  - dimension: ref_referral
    hidden: true
    type: number
    sql: ${TABLE}.ref_referral

  - dimension: user
    sql: fn_getUserNameById(${TABLE}.ref_user)

  - measure: count
    type: count
    drill_fields: [id]

