-- Active: 1727696637650@@data-analytics-course-2.c8g8r1deus2v.eu-central-1.rds.amazonaws.com@5432@hh_analytics_24_2@s_somapasumarthy
WITH raw_data AS (
    SELECT 
         country_code
        , indicator_code
        , extracted_data AS data
    FROM api_data_digi_sa_work
),
flattened_data AS (
    SELECT
        country_code
        , indicator_code
        , JSON_ARRAY_ELEMENTS(data -> 1) AS json_data
    FROM raw_data
)
SELECT
      country_code
    , indicator_code
    , json_data -> 'indicator' ->> 'id' AS indicator_id
    , json_data -> 'indicator' ->> 'id' AS indicator_id
    , json_data -> 'indicator' ->> 'value' AS indicator_value
    , json_data -> 'country' ->> 'id' AS country_id
    , json_data -> 'country' ->> 'value' AS country_name
    , json_data ->> 'countryiso3code' AS country_iso3
    , json_data ->> 'date' AS date
    , json_data ->> 'value' AS value
    , json_data ->> 'unit' AS unit
    , json_data ->> 'obs_status' AS obs_status
    , json_data ->> 'decimal' AS decimal
FROM flattened_data;