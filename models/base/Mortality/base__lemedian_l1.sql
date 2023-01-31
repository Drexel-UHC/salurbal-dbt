{{ config(materialized='external', format =  target.schema) }}
SELECT
  *
FROM {{ source('Mortality', 'LEMEDIAN_L1') }}

{{ limit_data_in_dev() }}