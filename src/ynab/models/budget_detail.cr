class BudgetDetail
  include JSON::Serializable

  property id : UUID
  property name : String
  property last_modified_on : Time

  @[JSON::Field(converter: Time::Format.new("%F"))]
  property first_month : Time
  @[JSON::Field(converter: Time::Format.new("%F"))]
  property last_month : Time

  property date_format : DateFormat
  property currency_format : CurrencyFormat
  property accounts : Array(Account)
  property payees : Array(Payee)
  property payee_locations : Array(PayeeLocation)
  property category_groups : Array(CategoryGroup)
  property categories : Array(Category)
  property months : Array(MonthDetail)
  property transactions : Array(TransactionSummary)
  property subtransactions : Array(SubTransaction)
  property scheduled_transactions : Array(ScheduledTransactionSummary)
  property scheduled_subtransactions : Array(ScheduledSubTransaction)

  def transactions
    YNAB::API::Transactions.new(@id)
  end
end
