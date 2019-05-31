module YNAB
  module API
    class Budgets
      delegate :host, :headers, to: YNAB::Client

      def initialize
        @base_url = "#{host}/budgets"
      end

      def accounts(budget_id)
        YNAB::API::Accounts.new(budget_id)
      end

      def all
        response = HTTP::Client.get(@base_url, headers: headers)

        YNAB::API::BudgetSummaryWrapper.from_json(response.body, "data").budgets
      end

      def get(budget_id)
        response = HTTP::Client.get("#{@base_url}/#{budget_id}", headers: headers)

        YNAB::API::BudgetDetailWrapper.from_json(response.body, "data").budget
      end

      def settings(budget_id)
        response = HTTP::Client.get("#{@base_url}/#{budget_id}/settings", headers: headers)

        YNAB::API::BudgetSettingsWrapper.from_json(response.body, "data").settings
      end
    end
  end
end
