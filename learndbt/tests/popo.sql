select count(*) from {{ ref('my_first_dbt_model') }}