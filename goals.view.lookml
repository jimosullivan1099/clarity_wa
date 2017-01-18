- view: goals
  sql_table_name: goals
  fields:

    - dimension: id
      primary_key: true
      type: number
      sql: ${TABLE}.id

    - dimension: description
      type: string
      sql: ${TABLE}.description

    - dimension: name
      type: string
      sql: ${TABLE}.name

    - dimension: status
      type: yesno
      sql: ${TABLE}.status

    - measure: count
      type: count
      drill_fields: [id, name]

