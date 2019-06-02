class BudgetSummary
  include JSON::Serializable

  property id : UUID
  property name : String
  property last_modified_on : Time
  property date_format : DateFormat
  property currency_format : CurrencyFormat

  @[JSON::Field(converter: Time::Format.new("%F"))]
  property first_month : Time
  @[JSON::Field(converter: Time::Format.new("%F"))]
  property last_month : Time

  def accounts
    YNAB::API::Accounts.new(@id)
  end

  def payees
    YNAB::API::Payees.new(@id)
  end

  def transactions
    YNAB::API::Transactions.new(@id)
  end
end
