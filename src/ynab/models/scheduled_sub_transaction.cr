# TODO: merge with `SubTransaction`
class ScheduledSubTransaction
  include JSON::Serializable

  property id : UUID
  property scheduled_transaction_id : UUID
  property amount : Int64
  property memo : String?
  property payee_id : UUID?
  property category_id : UUID?
  property transfer_account_id : UUID?
  property deleted : Bool
end
