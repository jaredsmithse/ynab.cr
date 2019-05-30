class CategoryGroup
  include JSON::Serializable

  property id : UUID
  property name : String
  property hidden : Bool
  property deleted : Int32
end
