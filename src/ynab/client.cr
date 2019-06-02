module YNAB
  class Client
    Habitat.create do
      setting access_token : String
      setting base_url : String
    end

    def self.headers
      @@headers ||= HTTP::Headers{"Authorization" => "Bearer #{settings.access_token}"}
    end

    def self.host
      settings.base_url
    end

    def self.accounts(budget_id)
      YNAB::API::Accounts.new(budget_id)
    end

    def self.budgets
      YNAB::API::Budgets.new
    end

    def self.payees(budget_id)
      YNAB::API::Payees.new(budget_id)
    end

    def self.transactions(budget_id)
      YNAB::API::Transactions.new(budget_id)
    end

    def self.user
      YNAB::UserApi.new
    end
  end
end
