class SubTransaction
  include JSON::Serializable

  property id : UUID
  property transaction_id : String
  property amount : Int64
  property memo : String?
  property payee_id : UUID?
  property category_id : UUID?
  property transfer_account_id : UUID?
  property deleted : Bool
end
