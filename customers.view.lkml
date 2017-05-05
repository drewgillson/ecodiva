view: customers {
  derived_table: {
    sql: SELECT Email AS email
      , MIN([Billing Name]) AS billing_name
      , MIN([Billing City]) AS billing_city
      , MIN([Billing Province]) AS billing_region
      , MIN(REPLACE([Billing Zip],'''','')) AS billing_zip
      , MIN([Shipping Name]) AS shipping_name
      , MIN([Shipping City]) AS shipping_city
      , MIN([Shipping Province]) AS shipping_region
      , MIN(REPLACE([Shipping Zip],'''','')) AS shipping_zip
      FROM ecodiva.orders
      WHERE [Billing Name] <> ''
      GROUP BY Email
       ;;
    indexes: ["email"]
    sql_trigger_value: SELECT 1 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: email {
    type: string
    primary_key: yes
    sql: ${TABLE}.email ;;
  }

  dimension: billing_name {
    type: string
    sql: ${TABLE}.billing_name ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}.billing_city ;;
  }

  dimension: billing_region {
    type: string
    sql: ${TABLE}.billing_region ;;
  }

  dimension: billing_zip {
    type: string
    sql: ${TABLE}.billing_zip ;;
  }

  dimension: shipping_name {
    type: string
    sql: ${TABLE}.shipping_name ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }

  dimension: shipping_region {
    type: string
    sql: ${TABLE}.shipping_region ;;
  }

  dimension: shipping_zip {
    type: string
    sql: ${TABLE}.shipping_zip ;;
  }

  set: detail {
    fields: [
      email,
      billing_name,
      billing_city,
      billing_region,
      billing_zip,
      shipping_name,
      shipping_city,
      shipping_region,
      shipping_zip
    ]
  }
}
