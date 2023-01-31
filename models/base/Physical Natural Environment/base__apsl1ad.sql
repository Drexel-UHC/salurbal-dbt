{{ config(materialized='external', format =  target.schema) }}
SELECT
  *
FROM {{ source('Physical Natural Environment', 'APSL1AD') }}

{{ limit_data_in_dev() }}