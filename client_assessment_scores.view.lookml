- view: client_assessment_scores
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: detail
    hidden: true
    sql: ${TABLE}.detail

  - dimension: ref_assessment
    hidden: true
    type: int
    sql: ${TABLE}.ref_assessment

  - dimension: score
    type: int
    sql: ${TABLE}.score
    
  - dimension: score_type
    sql: ${TABLE}.score_type

  - measure: count
    type: count
    drill_fields: [id]

