{{ config(materialized='external', format =  target.schema) }}
with 

final as (
  select * from {{ref('base__lemedian_l1')}}
  union
  select * from {{ref('base__apsl1ad')}}
)

select * from final
