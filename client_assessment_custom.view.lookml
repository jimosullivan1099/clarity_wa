  - dimension: birth_city
    label: "City or County of Birth"
    type: string
    sql:  COLUMN_GET($\{TABLE\}.custom_data,'birth_city' AS CHAR(255))

  - dimension: custom_ethnicity
    label: "Custom Ethnicity"
    type: int
    sql:  COLUMN_GET($\{TABLE\}.custom_data,'custom_ethnicity' AS INTEGER)

- view: client_assessment_custom
  sql_table_name: |
    client_assessment_data
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id


  sets:
      client_assessment_custom_fields:
      

      - custom_ethnicity       
      - birth_city       