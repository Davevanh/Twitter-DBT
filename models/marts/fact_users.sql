SELECT    user_id
        , created_timestamp
        , followers_count
FROM      {{ref('stg_users')}}
