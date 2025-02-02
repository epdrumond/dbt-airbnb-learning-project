{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}
with src_reviews as (
    select *
    from {{ ref('src_reviews') }}
)

select
    listing_id,
    review_date,
    reviewer_name,
    review_comments,
    review_sentiment
from src_reviews
where true
    and review_comments is not null
{% if is_incremental() %}
    and review_date > (select max(review_date) from {{ this }})
{% endif %}