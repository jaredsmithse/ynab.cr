class BudgetSettings
  include JSON::Serializable

  property date_format : DateFormat
  property currency_format : CurrencyFormat
end
