{{ config(materialized='incremental', unique_key='d_date', schema='eshta_ya') }}

select * 
from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."DATE_DIM"

{% if is_incremental() %}
    where d_date > (select max(d_date) from {{this}})
{% endif %}