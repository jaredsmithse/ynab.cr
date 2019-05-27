module YNAB
  module API
    class Accounts
      getter base_url : String
      getter headers

      def initialize(@budget_id : UUID)
        @base_url = "#{YNAB::Client.settings.base_url}/budgets/#{@budget_id}/accounts"

        access_token = YNAB::Client.settings.access_token
        @headers = HTTP::Headers{"Authorization" => "Bearer #{access_token}"}
      end

      def all
        response = HTTP::Client.get(@base_url, headers: @headers)

        YNAB::API::AccountsWrapper.from_json(response.body, "data").accounts
      end

      def get(account_id)
        response = HTTP::Client.get("#{@base_url}/#{account_id}", headers: @headers)

        YNAB::API::AccountWrapper.from_json(response.body, "data").account
      end
    end
  end
end
