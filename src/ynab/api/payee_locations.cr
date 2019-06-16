module YNAB
  module API
    class PayeeLocations
      delegate :host, :headers, to: YNAB::Client

      def initialize(budget_id : UUID)
        @base_url = "#{host}/budgets/#{budget_id}/payee_locations"
      end

      def get_all
        response = HTTP::Client.get(@base_url, headers: headers)

        YNAB::API::PayeeLocationsWrapper.from_json(response.body, "data").payee_locations
      end

      def get(payee_location_id)
        response = HTTP::Client.get("#{@base_url}/#{payee_location_id}", headers: headers)

        YNAB::API::PayeeLocationWrapper.from_json(response.body, "data").payee_location
      end
    end
  end
end
