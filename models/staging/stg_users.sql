WITH stg_users AS (
  SELECT * FROM raw.users
)

SELECT    user_id
        , user_name
        , screen_name
        , user_location
        , description
        , created_timestamp
        , followers_count
FROM      stg_users
