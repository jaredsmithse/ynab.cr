module YNAB
  module API
    class BudgetSettingsWrapper
      JSON.mapping(
        settings: BudgetSettings
      )
    end
  end
end
