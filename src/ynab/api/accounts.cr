module YNAB
  module API
    class Accounts
      delegate :host, :headers, to: YNAB::Client

      def initialize(budget_id : UUID)
        @base_url = "#{host}/budgets/#{budget_id}/accounts"
      end

      def all
        response = HTTP::Client.get(@base_url, headers: headers)

        YNAB::API::AccountsWrapper.from_json(response.body, "data").accounts
      end

      def get(account_id)
        response = HTTP::Client.get("#{@base_url}/#{account_id}", headers: headers)

        YNAB::API::AccountWrapper.from_json(response.body, "data").account
      end
    end
  end
end
