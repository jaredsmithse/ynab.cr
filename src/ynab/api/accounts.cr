module YNAB
  module API
    class Accounts
      def initialize(@client : YNAB::Client, @budget_id : String)
        @base_url = "#{YNAB::Constants::BASE_URL}/budgets/#{@budget_id}/accounts"
      end

      def all
        response = HTTP::Client.get(
          @base_url,
          headers: HTTP::Headers{"Authorization" => "Bearer #{@client.access_token}"}
        )

        YNAB::API::AccountsWrapper.from_json(response.body, "data").accounts
      end
    end
  end
end
