{{ config(tags = ['dash_sales_bi'])}}

SELECT 
    {{generate_id('car_make')}} AS ID_CARMAKE,
    car_make
FROM {{ ref("psg_montly_sales_make") }}
GROUP BY car_make