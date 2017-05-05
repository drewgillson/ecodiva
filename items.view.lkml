view: items {
  derived_table: {
    sql: SELECT ROW_NUMBER() OVER (ORDER BY id) AS row
        , id
        , "Lineitem compare at price" AS compare_at_price
        , "Lineitem discount" AS discount
        , "Lineitem fulfillment status" AS fulfillment_status
        , "Lineitem name" AS product_name
        , "Lineitem price" AS price
        , "Lineitem quantity" AS quantity
        , "Lineitem requires shipping" AS shipping
        , "Lineitem sku" AS sku
        , "Lineitem taxable" AS taxable
        , Name AS name
        , Vendor AS vendor
      FROM ecodiva.orders
      WHERE "Lineitem sku" <> ''
       ;;
    indexes: ["id", "sku", "name", "vendor", "product_name"]
    sql_trigger_value: SELECT 1 ;;
  }

  dimension: row {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.row ;;
  }

  dimension: id {
    hidden: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: compare_at_price {
    type: number
    sql: ${TABLE}.compare_at_price ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }

  measure: sales_total {
    description: "Total sold in dollars before order discounts and tax"
    type: sum
    sql: ${TABLE}.price ;;
    value_format: "$#,##0.00"
    drill_fields: [items*]
  }

  measure: quantity_total {
    type: sum
    sql: ${TABLE}.quantity ;;
    value_format: "#,##0"
    drill_fields: [items*]
  }

  dimension: requires_shipping {
    type: string
    sql: ${TABLE}.requires_shipping ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: taxable {
    type: string
    sql: ${TABLE}.taxable ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  # ----- Sets of fields for drilling ------
  set: items {
    fields: [
      product_name,
      sku,
      sales_total,
      quantity_total
    ]
  }
}
