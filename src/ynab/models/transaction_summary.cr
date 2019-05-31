# TODO: Make a subset of/combine with `TransactionSummary`
class TransactionSummary
  include JSON::Serializable

  property id : UUID

  @[JSON::Field(converter: Time::Format.new("%F"))]
  property date : Time

  property amount : Int64
  property memo :	String?
  property cleared :	ClearedStatus
  property approved :	Bool
  property flag_color :	FlagColor?
  property account_id :	UUID
  property payee_id :	UUID?
  property category_id : UUID?
  property transfer_account_id : UUID?
  property transfer_transaction_id : UUID?
  property matched_transaction_id : UUID?
  property import_id : String?
  property deleted : Bool
end
