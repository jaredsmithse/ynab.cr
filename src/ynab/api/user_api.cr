module YNAB
  class UserApi
    delegate :host, :headers, to: YNAB::Client

    def initialize
      @base_url = "#{host}/user"
    end

    def fetch
      response = HTTP::Client.get(@base_url, headers: headers)

      YNAB::API::UserWrapper.from_json(response.body, "data").user
    end
  end
end
