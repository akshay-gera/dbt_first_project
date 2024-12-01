--This macro runs a test on a specified column of a model(table) to check for below than 1 values.
--For eg: in dim_listings we want the minimum_nights column to be greater than 0 always 

{% test positive_value(model, column_name) %}
    SELECT
        *
    FROM {{ model }}
    WHERE {{ column_name}} < 1
{% endtest %}