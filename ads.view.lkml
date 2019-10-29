view: ads_core {
  sql_table_name: facebook_data.facebook_ads_101441173373823 ;;
  # API documentation here: https://developers.facebook.com/docs/marketing-api/reference/adgroup

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}.adset_id ;;
  }

  dimension: creative_id {
    type: string
    sql: ${TABLE}.creative__id ;;

  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_time ;;
  }

  dimension: effective_status {
    type: string
    sql: ${TABLE}.effective_status ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}