module YNAB
  module API
    class Payees
      delegate :host, :headers, to: YNAB::Client

      def initialize(budget_id : UUID)
        @base_url = "#{host}/budgets/#{budget_id}/payees"
      end

      def get_all
        response = HTTP::Client.get(@base_url, headers: headers)

        YNAB::API::PayeesWrapper.from_json(response.body, "data").payees
      end

      def get(payee_id)
        response = HTTP::Client.get("#{@base_url}/#{payee_id}", headers: headers)

        YNAB::API::PayeeWrapper.from_json(response.body, "data").payee
      end
    end
  end
end
