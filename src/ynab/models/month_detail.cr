class MonthDetail
  include JSON::Serializable

  property month : String
  property note : String?
  property income : Int64
  property budgeted : Int64
  property activity : Int64
  property to_be_budgeted : Int64
  property age_of_money : Int32?
  property deleted : Bool
  property categories : Array(Category)
end
