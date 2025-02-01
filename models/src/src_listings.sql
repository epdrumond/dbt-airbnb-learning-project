select 
  id as listing_id, 
  listing_url, 
  name as listing_name, 
  description as listing_description,  
  neighborhood_overview, 
  picture_url, 
  host_id, 
  host_url, 
  host_name, 
  host_since, 
  host_location, 
  host_about, 
  host_response_time, 
  host_response_rate, 
  host_acceptance_rate, 
  host_is_superhost, 
  host_thumbnail_url, 
  host_picture_url, 
  host_neighbourhood, 
  host_listings_count, 
  host_total_listings_count, 
  host_has_profile_pic, 
  host_identity_verified, 
  neighbourhood, 
  neighbourhood_cleansed, 
  neighbourhood_group_cleansed, 
  latitude, 
  longitude, 
  property_type, 
  room_type, 
  accommodates, 
  bathrooms, 
  bathrooms_text,
  bedrooms, 
  beds, 
  amenities as amenities_array, 
  price as price_str, 
  minimum_nights, 
  maximum_nights, 
  calendar_updated, 
  has_availability, 
  availability_30, 
  availability_60, 
  availability_90, 
  availability_365, 
  calendar_last_scraped, 
  number_of_reviews, 
  number_of_reviews_ltm, 
  number_of_reviews_l30d, 
  first_review, 
  last_review, 
  review_scores_rating, 
  review_scores_accuracy, 
  review_scores_cleanliness, 
  review_scores_checkin, 
  review_scores_communication, 
  review_scores_location, 
  review_scores_value, 
  license, 
  instant_bookable, 
  calculated_host_listings_count, 
  calculated_host_listings_count_entire_homes, 
  calculated_host_listings_count_private_rooms, 
  calculated_host_listings_count_shared_rooms
  reviews_per_month
from dbt-learn-project-edilson-01.raw.raw_porto_listings