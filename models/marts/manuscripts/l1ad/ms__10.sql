{{ config(materialized='external', format =  target.schema) }}
SELECT * 
FROM {{ref('master_table')}}
WHERE var_name IN ('LEALE', 'APSNO2MEAN', 'APSPM25MEAN')
AND geo = 'L1AD';