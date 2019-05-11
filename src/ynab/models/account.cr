class Account
  include JSON::Serializable

  property id : String
  property name : String
  property type : String
  property on_budget : Bool
  property closed : Bool
  property note : String?
  property balance : Int64
  property cleared_balance : Int64
  property uncleared_balance : Int64
  property transfer_payee_id : String
  property deleted : Bool
end
