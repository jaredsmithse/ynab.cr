class TransactionDetail
  include JSON::Serializable

  property id : String

  @[JSON::Field(converter: Time::Format.new("%F"))]
  property date : Time

  property amount : Int64
  property memo :	String?
  property cleared :	String
  property approved :	Bool
  property flag_color :	String?
  property account_id :	String
  property payee_id :	String?
  property category_id : String?
  property transfer_account_id : String?
  property transfer_transaction_id : String?
  property matched_transaction_id : String?
  property import_id : String?
  property deleted : Bool
  property account_name : String
  property payee_name : String?
  property category_name : String?
  property subtransactions : Array(SubTransaction)
end
