require "spec"
require "yaml"
require "webmock"

require "../src/ynab"

YNAB::Client.configure do |settings|
  settings.access_token = "api_key"
  settings.base_url = "https://api.youneedabudget.com/v1/"
end
