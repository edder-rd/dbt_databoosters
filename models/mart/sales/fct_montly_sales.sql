{{ config(tags=["dash_sales_bi"]) }}

SELECT Date, ID_SALESPERSON, ID_CARMAKE, TotalSale, TotalCommission
FROM {{ ref("psg_montly_sales_make") }} as psgm
left join {{ ref("dim_carmake") }} as dimcm on psgm.car_make = dimcm.car_make
left join {{ ref("dim_salesperson") }} as dimsp on psgm.salesperson = dimsp.salesperson