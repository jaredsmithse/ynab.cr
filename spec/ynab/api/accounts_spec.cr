require "../../spec_helper"
require "file_utils"

describe YNAB::API::Accounts do
  describe "#get" do
    it "parses the response and returns the right model" do
      fixture = YAML.parse(File.read("spec/fixtures/api_response/accounts/get.yml"))
      client = YNAB::Client.new("api_key")

      WebMock.
        stub(:get, fixture["endpoint"].to_s).
        to_return(body: fixture["response"].to_json)

      client.
        budgets.
        accounts(fixture["budget_id"].to_s).
        get(fixture["account_id"].to_s).
        class.
        should eq Account
    end
  end
end
