WITH unnested_hashtags AS (
	SELECT   unnest(hashtags_array) AS hashtag_text
	FROM     {{ref('stg_tweets')}}
)

SELECT    row_number () OVER (ORDER BY hashtag_text) AS hashtag_id
        , hashtag_text
FROM      unnested_hashtags
