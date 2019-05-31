class PayeeLocation
  include JSON::Serializable

  property id : UUID
  property payee_id : UUID
  property latitude : String
  property longitude : String
  property deleted : Bool
end
