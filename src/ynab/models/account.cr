class Account
  include JSON::Serializable

  property id : UUID
  property name : String
  property type : AccountType
  property on_budget : Bool
  property closed : Bool
  property note : String?
  property balance : Int64
  property cleared_balance : Int64
  property uncleared_balance : Int64
  property transfer_payee_id : UUID
  property deleted : Bool
end
