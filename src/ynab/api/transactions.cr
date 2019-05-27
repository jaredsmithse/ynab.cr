module YNAB
  module API
    class Transactions
      getter base_url : String
      getter headers

      def initialize(@budget_id : UUID)
        @base_url = "#{YNAB::Client.settings.base_url}/budgets/#{@budget_id}/transactions"

        access_token = YNAB::Client.settings.access_token
        @headers = HTTP::Headers{"Authorization" => "Bearer #{access_token}"}
      end

      def all
        response = HTTP::Client.get(@base_url, headers: @headers)

        YNAB::API::TransactionsWrapper.from_json(response.body, "data").transactions
      end
    end
  end
end
