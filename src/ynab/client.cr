module YNAB
  class Client
    Habitat.create do
      setting access_token : String
      setting base_url : String
    end

    def self.budgets
      YNAB::API::Budgets.new
    end
  end
end
