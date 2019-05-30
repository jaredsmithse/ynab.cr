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

    def self.budgets
      YNAB::API::Budgets.new
    end

    def self.user
      YNAB::UserApi.new
    end
  end
end
