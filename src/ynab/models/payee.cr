class Payee
  include JSON::Serializable

  property id : UUID
  property name : String
  property transfer_account_id : UUID?
  property deleted : Bool
end
