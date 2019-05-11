module YNAB
  module API
    class Budgets
      def initialize(@client : YNAB::Client)
      end

      def all
        response = HTTP::Client.get("#{YNAB::Constants::BASE_URL}/budgets",
          headers: HTTP::Headers{"Authorization" => "Bearer #{@client.access_token}"}
        )

        YNAB::API::BudgetSummaryWrapper.from_json(response.body, "data").budgets
      end
    end
  end
end
