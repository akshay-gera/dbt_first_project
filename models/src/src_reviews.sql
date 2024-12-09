WITH raw_reviews AS (SELECT * FROM {{ source('airbnb', 'reviews')}}
)

SELECT
    LISTING_ID AS listing_id,
    DATE AS review_date,
    REVIEWER_NAME,
    Comments AS review_text,
    SENTIMENT AS review_sentiment
FROM raw_reviews

