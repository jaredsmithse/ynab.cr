class CategoryGroupWithCategories
  include JSON::Serializable

  property id : UUID
  property name : String
  property hidden : Bool
  property deleted : Bool
  property categories : Array(Category)
end
