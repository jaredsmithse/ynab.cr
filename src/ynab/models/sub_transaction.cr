class SubTransaction
  include JSON::Serializable

  property id : String
  property transaction_id : String
  property amount : Int64
  property memo : String?
  property payee_id : String?
  property category_id : String?
  property transfer_account_id : String?
  property deleted : Bool
end
