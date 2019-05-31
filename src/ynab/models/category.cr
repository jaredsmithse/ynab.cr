class Category
  include JSON::Serializable

  property id : UUID
  property category_group_id : UUID
  property name : String
  property hidden : Bool
  property original_category_group_id : UUID?
  property note : String?
  property budgeted : Int64
  property activity : Int64
  property balance : Int64
  # TODO: Turn `#goal_type` into a k -> v enum if possible
  property goal_type : String?
  property goal_creation_month : Time?
  property goal_target : Int64
  property goal_target_month : Time?
  property goal_percentage_complete : Int32?
  property deleted : Bool
end
