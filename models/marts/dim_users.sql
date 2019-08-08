SELECT    user_id
        , user_name
        , screen_name
        , user_location
        , description
FROM      {{ref('stg_users')}}
