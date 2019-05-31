class TransactionDetail
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
  property account_name : String
  property payee_name : String?
  property category_name : String?
  property subtransactions : Array(SubTransaction)
end
