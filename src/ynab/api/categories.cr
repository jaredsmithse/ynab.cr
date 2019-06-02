module YNAB
  module API
    class Categories
      delegate :host, :headers, to: YNAB::Client

      def initialize(budget_id : UUID)
        @base_url = "#{host}/budgets/#{budget_id}/categories"
      end

      def all
        response = HTTP::Client.get(@base_url, headers: headers)

        YNAB::API::CategoryGroupsWrapper.from_json(response.body, "data").category_groups
      end

      def get(category_id)
        response = HTTP::Client.get("#{@base_url}/#{category_id}", headers: headers)

        YNAB::API::CategoryWrapper.from_json(response.body, "data").category
      end
    end
  end
end
