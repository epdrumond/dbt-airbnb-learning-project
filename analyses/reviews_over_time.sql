with fact_reviews as (
    select *
    from {{ ref("fact_reviews") }}
)
select 
  timestamp_trunc(review_date, month) as review_month,
  count(distinct review_id) as total_reviews,
  count(distinct case when review_sentiment = 'negative' then review_id end) as negative_reviews,
  count(distinct case when review_sentiment = 'neutral' then review_id end) as neutral_reviews,
  count(distinct case when review_sentiment = 'positive' then review_id end) as positive_reviews
from fact_reviews
group by 1
order by 1