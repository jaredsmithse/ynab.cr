module YNAB
  module API
    class Transactions
      delegate :host, :headers, to: YNAB::Client

      def initialize(budget_id)
        @base_url = "#{host}/budgets/#{budget_id}/transactions"
      end

      def all
        response = HTTP::Client.get(@base_url, headers: headers)

        YNAB::API::TransactionsWrapper.from_json(response.body, "data").transactions
      end
    end
  end
end
