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
    {{ dbt_utils.generate_surrogate_key(['listing_id', 'review_date', 'reviewer_name', 'review_comments'])}} as review_id,
    listing_id,
    review_date,
    reviewer_name,
    review_comments,
    review_sentiment
from src_reviews
where true
    and review_comments is not null
{% if is_incremental() %}
    {% if var("start_date", False) and var("end_date", False) %}
        {{ log("Loading " ~ this ~ " incrementally (start_date: " ~ var("start_date") ~ " | end_date: " ~ var("end_date") ~ ")", info=True) }}
        and review_date >= '{{ var("start_date") }}'
        and review_date >= '{{ var("end_date") }}'
    {% else %}
        {{ log("Loading " ~ this ~ " incrementally (all missing dates)", info=True) }}
        and review_date > (select max(review_date) from {{ this }})
    {% endif %}
{% endif %}