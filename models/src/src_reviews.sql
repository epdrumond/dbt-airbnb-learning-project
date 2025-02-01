select 
  listing_id,
  id as review_id,
  review_date,
  reviewer_id,
  reviewer_name,
  comments as review_comments
from dbt-learn-project-edilson-01.raw.raw_porto_reviews