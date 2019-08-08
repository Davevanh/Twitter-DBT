WITH tweet_data AS (
  SELECT * FROM raw.tweets
)

SELECT    tweet_id
        , created_timestamp
        , tweet_text
        , hashtags AS hashtags_array
        , retweet_count
        , favorite_count
        , is_retweeted
        , has_hashtags
        , tweet_user_id
        , retweet_user_id
FROM      tweet_data
