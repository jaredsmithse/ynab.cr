module YNAB
  module API
    class CategoryWrapper
      JSON.mapping(
        category: Category,
      )
    end
  end
end
