class CurrencyFormat
  JSON.mapping(
    iso_code: String,
    example_format: String,
    decimal_digits: Int8,
    decimal_separator: String,
    symbol_first: Bool,
    group_separator: String,
    currency_symbol: String,
    display_symbol: Bool,
  )
end
