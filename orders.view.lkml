view: orders {
  sql_table_name: ecodiva.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: accepts_marketing {
    type: string
    sql: ${TABLE}."Accepts Marketing" ;;
  }

  dimension: billing_address1 {
    type: string
    sql: ${TABLE}."Billing Address1" ;;
  }

  dimension: billing_address2 {
    type: string
    sql: ${TABLE}."Billing Address2" ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}."Billing City" ;;
  }

  dimension: billing_company {
    type: string
    sql: ${TABLE}."Billing Company" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."Billing Country" ;;
  }

  dimension: billing_name {
    type: string
    sql: ${TABLE}."Billing Name" ;;
  }

  dimension: billing_phone {
    type: string
    sql: ${TABLE}."Billing Phone" ;;
  }

  dimension: billing_province {
    type: string
    sql: ${TABLE}."Billing Province" ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}."Billing Street" ;;
  }

  dimension: billing_zip {
    type: string
    sql: ${TABLE}."Billing Zip" ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}."Device ID" ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}."Discount Amount" ;;
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}."Discount Code" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: employee {
    type: string
    sql: ${TABLE}.Employee ;;
  }

  dimension: financial_status {
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

  dimension: lineitem_compare_at_price {
    type: number
    sql: ${TABLE}."Lineitem compare at price" ;;
  }

  dimension: lineitem_discount {
    type: number
    sql: ${TABLE}."Lineitem discount" ;;
  }

  dimension: lineitem_fulfillment_status {
    type: string
    sql: ${TABLE}."Lineitem fulfillment status" ;;
  }

  dimension: lineitem_name {
    type: string
    sql: ${TABLE}."Lineitem name" ;;
  }

  dimension: lineitem_price {
    type: number
    sql: ${TABLE}."Lineitem price" ;;
  }

  dimension: lineitem_quantity {
    type: number
    sql: ${TABLE}."Lineitem quantity" ;;
  }

  dimension: lineitem_requires_shipping {
    type: string
    sql: ${TABLE}."Lineitem requires shipping" ;;
  }

  dimension: lineitem_sku {
    type: string
    sql: ${TABLE}."Lineitem sku" ;;
  }

  dimension: lineitem_taxable {
    type: string
    sql: ${TABLE}."Lineitem taxable" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: note_attributes {
    type: string
    sql: ${TABLE}."Note Attributes" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: outstanding_balance {
    type: number
    sql: ${TABLE}."Outstanding Balance" ;;
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

  dimension: payment_method {
    type: string
    sql: ${TABLE}."Payment Method" ;;
  }

  dimension: payment_reference {
    type: string
    sql: ${TABLE}."Payment Reference" ;;
  }

  dimension: refunded_amount {
    type: number
    sql: ${TABLE}."Refunded Amount" ;;
  }

  dimension: risk_level {
    type: string
    sql: ${TABLE}."Risk Level" ;;
  }

  dimension: shipping {
    type: number
    sql: ${TABLE}.Shipping ;;
  }

  dimension: shipping_address1 {
    type: string
    sql: ${TABLE}."Shipping Address1" ;;
  }

  dimension: shipping_address2 {
    type: string
    sql: ${TABLE}."Shipping Address2" ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}."Shipping City" ;;
  }

  dimension: shipping_company {
    type: string
    sql: ${TABLE}."Shipping Company" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."Shipping Country" ;;
  }

  dimension: shipping_method {
    type: string
    sql: ${TABLE}."Shipping Method" ;;
  }

  dimension: shipping_name {
    type: string
    sql: ${TABLE}."Shipping Name" ;;
  }

  dimension: shipping_phone {
    type: string
    sql: ${TABLE}."Shipping Phone" ;;
  }

  dimension: shipping_province {
    type: string
    sql: ${TABLE}."Shipping Province" ;;
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}."Shipping Street" ;;
  }

  dimension: shipping_zip {
    type: string
    sql: ${TABLE}."Shipping Zip" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.Subtotal ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Tags ;;
  }

  dimension: tax_1_name {
    type: string
    sql: ${TABLE}."Tax 1 Name" ;;
  }

  dimension: tax_1_value {
    type: number
    sql: ${TABLE}."Tax 1 Value" ;;
  }

  dimension: tax_2_name {
    type: string
    sql: ${TABLE}."Tax 2 Name" ;;
  }

  dimension: tax_2_value {
    type: number
    sql: ${TABLE}."Tax 2 Value" ;;
  }

  dimension: tax_3_name {
    type: string
    sql: ${TABLE}."Tax 3 Name" ;;
  }

  dimension: tax_3_value {
    type: string
    sql: ${TABLE}."Tax 3 Value" ;;
  }

  dimension: tax_4_name {
    type: string
    sql: ${TABLE}."Tax 4 Name" ;;
  }

  dimension: tax_4_value {
    type: string
    sql: ${TABLE}."Tax 4 Value" ;;
  }

  dimension: tax_5_name {
    type: string
    sql: ${TABLE}."Tax 5 Name" ;;
  }

  dimension: tax_5_value {
    type: string
    sql: ${TABLE}."Tax 5 Value" ;;
  }

  dimension: taxes {
    type: number
    sql: ${TABLE}.Taxes ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      lineitem_name,
      billing_name,
      shipping_name,
      tax_1_name,
      tax_2_name,
      tax_3_name,
      tax_4_name,
      tax_5_name
    ]
  }
}
