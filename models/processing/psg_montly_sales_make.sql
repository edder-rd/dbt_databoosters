{{
    config(
        materialized = 'table',
        tags = ['processing', 'sales', 'carmake']
    )
}}

SELECT
DATETIME_TRUNC(Date, MONTH) AS Date,
salesperson,
car_make,
SUM(sale_price - commission_earned) AS TotalSale,
SUM(commission_earned) AS TotalCommission
FROM {{ ref("stg_sales_data_202p")}}
GROUP BY DATETIME_TRUNC(Date, MONTH), salesperson, car_make
