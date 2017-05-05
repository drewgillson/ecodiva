connection: "mssql"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: items {

  join: orders {
    foreign_key: items.id
    relationship: many_to_one
  }

  join: customers {
    foreign_key: orders.email
    relationship: many_to_one
    required_joins: [orders]
  }

  join: words {
    sql_on: ${items.product_name} LIKE '%' + ${words.word} + '%' ;;
    relationship: many_to_one
  }
}
