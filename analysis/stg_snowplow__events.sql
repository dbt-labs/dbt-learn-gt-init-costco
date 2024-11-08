with 

source as (

    select * from {{ source('snowplow', 'events') }}

),

renamed as (

    select
        event_id,
        user_id,
        app_id,
        geo_country	geo_region,
        geo_city,
        sequence_number,
        user_ipaddress,
        platform,
        se_category,
        se_action,
        se_label,
        useragent,
        dvce_tstamp,
        dvce_sent_tstamp,
        collector_tstamp,
        _fivetran_synced
     

    from source

)

select * from renamed
