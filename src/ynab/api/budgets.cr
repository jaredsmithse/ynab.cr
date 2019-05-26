module YNAB
  module API
    class Budgets
      getter base_url : String
      getter headers

      def initialize
        @base_url = "#{YNAB::Client.settings.base_url}/budgets"

        access_token = YNAB::Client.settings.access_token
        @headers = HTTP::Headers{"Authorization" => "Bearer #{access_token}"}
      end

      def accounts(budget_id)
        YNAB::API::Accounts.new(budget_id)
      end

      def all
        response = HTTP::Client.get(@base_url, headers: @headers)

        YNAB::API::BudgetSummaryWrapper.from_json(response.body, "data").budgets
      end

      def settings(budget_id)
        response = HTTP::Client.get(
          "#{@base_url}/#{budget_id}/settings",
          headers: @headers
        )

        YNAB::API::BudgetSettingsWrapper.from_json(response.body, "data").settings
      end
    end
  end
end
