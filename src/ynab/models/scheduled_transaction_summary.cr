class ScheduledTransactionSummary
  include JSON::Serializable

  property id : UUID

  @[JSON::Field(converter: Time::Format.new("%F"))]
  property date_first : Time

  @[JSON::Field(converter: Time::Format.new("%F"))]
  property date_next : Time

  property cleared : Frequency
  property amount : Int64
  property memo : String?
  property flag_color : FlagColor?
  property account_id : UUID
  property payee_id : UUID?
  property category_id : UUID?
  property transfer_account_id : UUID?
  property deleted : Bool
end
