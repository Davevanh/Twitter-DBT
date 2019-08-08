SELECT    tweet_id
        , tweet_text
FROM      {{ref('stg_tweets')}}
