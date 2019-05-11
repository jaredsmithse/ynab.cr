module YNAB
  module API
    class BudgetSummaryWrapper
      JSON.mapping(
        budgets: Array(BudgetSummary)
      )
    end
  end
end
