module YNAB
  module API
    class BudgetDetailWrapper
      JSON.mapping(
        budget: BudgetDetail,
        server_knowledge: Int64,
      )
    end
  end
end
