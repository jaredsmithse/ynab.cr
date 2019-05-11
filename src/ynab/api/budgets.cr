module YNAB
  module API
    class Budgets
      def initialize(@client : YNAB::Client)
        @base_url = "#{YNAB::Constants::BASE_URL}/budgets"
      end

      def accounts(budget_id)
        YNAB::API::Accounts.new(@client, budget_id)
      end

      def all
        response = HTTP::Client.get(
          @base_url,
          headers: HTTP::Headers{"Authorization" => "Bearer #{@client.access_token}"}
        )

        YNAB::API::BudgetSummaryWrapper.from_json(response.body, "data").budgets
      end

      def settings(budget_id)
        response = HTTP::Client.get(
          "#{@base_url}/#{budget_id}/settings",
          headers: HTTP::Headers{"Authorization" => "Bearer #{@client.access_token}"}
        )

        YNAB::API::BudgetSettingsWrapper.from_json(response.body, "data").settings
      end
    end
  end
end
