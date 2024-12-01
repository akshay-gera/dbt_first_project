WITH raw_hosts AS (SELECT * FROM {{ source('airbnb', 'hosts')}} 
)

SELECT
ID AS host_id,
NAME AS host_name,
is_superhost,
CREATED_AT,
updated_at
FROM raw_hosts


