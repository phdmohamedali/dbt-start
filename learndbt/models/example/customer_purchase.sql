{{ config(materialized='view',alias="atif_elboob", schema='eshta_ya') }}

select c.c_custkey c_custkey, c.c_name, sum(o.O_TOTALPRICE) tot
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
left join 
"SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o
on c.c_custkey = o.o_custkey
group by c.c_custkey, c.c_name