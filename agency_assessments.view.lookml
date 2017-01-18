- view: agency_assessments
  sql_table_name: agency_assessments
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: ref_agency
    type: number
    sql: ${TABLE}.ref_agency

  - dimension: ref_assessment
    type: number
    sql: ${TABLE}.ref_assessment

  - measure: count
    type: count
    drill_fields: [id]

