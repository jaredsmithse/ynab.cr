module YNAB
  class Client
    getter access_token : String

    def initialize(@access_token)
    end

    def budgets
      YNAB::API::Budgets.new(self)
    end
  end
end
