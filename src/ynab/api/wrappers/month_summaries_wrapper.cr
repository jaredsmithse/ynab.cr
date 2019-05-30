module YNAB
  module API
    class MonthSummariesWrapper
      JSON.mapping(
        months: Array(MonthSummary),
        server_knowledge: Int64
      )
    end
  end
end
