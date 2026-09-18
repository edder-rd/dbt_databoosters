SELECT *
FROM {{ref("stg_sales_data_202p")}}
{% if target.name == 'Prod_Databoosters' %}
LIMIT 10
{% endif %}