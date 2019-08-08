--Ensure that bridge table tweet_id is foreign key to the fact_tweets table
WITH fact_tweet_id AS (
  SELECT  tweet_id
  FROM    {{ref('fact_tweets')}}
),

unnested_hashtags_by_tweet AS (
  SELECT  f.tweet_id
        , unnest(hashtags_array) AS hashtag_text
  FROM    fact_tweet_id AS f
  JOIN    {{ref('stg_tweets')}} AS r ON f.tweet_id = r.tweet_id
)

SELECT    tweet_id, hashtag_id
FROM      unnested_hashtags_by_tweet AS u
JOIN      {{ref('dim_hashtags')}} AS f ON u.hashtag_text = f.hashtag_text
