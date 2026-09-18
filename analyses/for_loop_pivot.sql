{% set target_makes = ['Toyota', 'Ford', 'Chevrolet', 'Honda', 'Nissan'] %}

SELECT
DATETIME_TRUNC(Date, MONTH) AS Date,
salesperson,
{%  for make in target_makes %}
SUM(CASE WHEN car_make = '{{make}}' THEN TotalSale ELSE 0 END) AS sales_{{make|lower}} {% if not loop.last %}, {% endif %}
{% endfor %}
FROM {{ ref("psg_montly_sales_make")}}
GROUP BY DATETIME_TRUNC(Date, MONTH), salesperson