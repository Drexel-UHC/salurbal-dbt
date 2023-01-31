
with 

final as (
  select * from "main"."csv"."base__lemedian_l1"
  union
  select * from "main"."csv"."base__apsl1ad"
)

select * from final