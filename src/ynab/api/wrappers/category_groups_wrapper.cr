module YNAB
  module API
    class CategoryGroupsWrapper
      JSON.mapping(
        category_groups: Array(CategoryGroupWithCategories),
        server_knowledge: Int64,
      )
    end
  end
end
