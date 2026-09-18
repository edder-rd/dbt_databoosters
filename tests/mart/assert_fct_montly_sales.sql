-- Este test PASA si esta consulta devuelve CERO filas.
-- Selecciona cualquier registro de la tabla de hechos donde las metricas clave sean negativas.@@current_job_id()

SELECT
Date,
ID_SALESPERSON,
ID_CARMAKE,
TotalSale,
TotalCommission
FROM {{ ref("fct_montly_sales") }} 
WHERE
TotalSale < 0 OR TotalCommission < 0