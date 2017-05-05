view: orders {
  derived_table: {
    sql: SELECT DISTINCT Id
        , Name AS name
        , Email AS email
        , "Accepts Marketing"
        , "Cancelled at"
        , "Created at"
        , Currency
        , "Discount Amount"
        , "Discount Code"
        , "Financial Status"
        , "Fulfilled at"
        , "Fulfillment Status"
        , "Paid at"
        , Shipping
        , Subtotal
        , Taxes
        , Total
      FROM ecodiva.orders
      WHERE Total <> '' AND Email <> ''
       ;;
    indexes: ["Id", "name"]
    sql_trigger_value: SELECT 1 ;;
  }

  dimension: order_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: order {
    label: "ID"
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: email {
    hidden: yes
    sql: ${TABLE}.Email ;;
  }

  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}."Accepts Marketing" = 'yes';;
  }

  dimension_group: cancelled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Cancelled at" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Created at" ;;
  }

  measure: first_order {
    type: date
    sql: MIN(${TABLE}."Created at") ;;
  }

  measure: last_order {
    type: date
    sql: MAX(${TABLE}."Created at") ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  measure: discount_amount {
    type: sum
    sql: ${TABLE}."Discount Amount" ;;
    value_format: "$#,##0.00"
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}."Discount Code" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."Financial Status" ;;
  }

  dimension_group: fulfilled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Fulfilled at" ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}."Fulfillment Status" ;;
  }

  dimension_group: paid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Paid at" ;;
  }

  measure: shipping {
    type: sum
    sql: ${TABLE}.Shipping ;;
    value_format: "$#,##0.00"
  }

  measure: subtotal {
    type: sum
    sql: ${TABLE}.Subtotal ;;
    value_format: "$#,##0.00"
    drill_fields: [detail*]
  }

  measure: taxes {
    type: sum
    sql: ${TABLE}.Taxes ;;
    value_format: "$#,##0.00"
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      email,
      order,
      created_date,
      currency,
      status,
      discount_code,
      subtotal
    ]
  }
}
