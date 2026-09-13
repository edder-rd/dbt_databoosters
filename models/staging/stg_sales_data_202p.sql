SELECT
    CAST(Date AS DATE) AS date,
    Salesperson        AS salesperson,
    `Customer Name`    AS customer_name,
    `Car Make`         AS car_make,
    `Car Model`        AS car_model,
    `Car Year`         AS car_year,
    `Sale Price`       AS sale_price,
    `Commission Rate`  AS commission_rate,
    `Commission Earned` AS commission_earned
FROM {{ source('raw_car_sales', 'car_sales') }}
WHERE CAST(Date AS DATE) >= '2020-01-01'