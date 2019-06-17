# ynab
[![Build Status](https://travis-ci.org/jaredsmithse/ynab.cr.svg?branch=master)](https://travis-ci.org/jaredsmithse/ynab.cr)
[![GitHub license](https://img.shields.io/github/license/c910335/mass-spec.svg)](https://github.com/c910335/mass-spec/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/jaredsmithse/ynab.svg)](https://github.com/jaredsmithse/ynab/releases)

This is an API client for YNAB. It has most of the basic operations for fetching your data from YNAB. See the issues for this project for missing functionality. The primary functionality that still needs implementation is Delta Requests.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  ynab:
    github: jaredsmithse/ynab
```

## Usage
The YNAB API has two base objects, `Budget` and `User`. `User` has no other nested resources, while every other resource is nested under `Budget`. If you have a `budget_id` you can initialize the resource you want directly. All available resources are in the `./src/api/` folder.

### Examples
#### Configuration
Instructions for obtaining your own API token can be found on the YNAB website [here](https://api.youneedabudget.com).
```crystal
require "ynab"

YNAB::Client.configure do |settings|
  settings.access_token = ynab_api_token
  settings.base_url = "https://api.youneedabudget.com/v1/"
end
client = YNAB::Client
```

#### Getting All Budgets For An Account
```crystal
client = YNAB::Client
budgets = client.budgets.get_all.each do |budget|
  puts budget.name
end
```

#### Working With Resources For A Budget
```crystal
client = YNAB::Client
# Get a list of accounts with a pre-fetched budget_id
budgets = client.budgets.get_all

# you can alternatively do budgets.first.accounts.get_all
accounts = client.accounts(budgets.first.id).get_all
accounts.each { |account| "#{account.name}: $#{account.balance / 100}" }

# Find how many times you use Lyft every month
transactions = budgets.first.transactions.get_all
transactions.
  select { |txn| txn.payee_name == "Lyft" }.
  group_by { |txn| "#{txn.date.year}-#{txn.date.month}" }.
  transform_values(&.size)
```

## Development

For development, you will need a personal access token from YNAB. You can find instructions on how to get one for your account [here](https://api.youneedabudget.com).

## Contributing

1. Fork it (<https://github.com/your-github-user/ynab/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [@jaredsmithse](https://github.com/jaredsmithse) Jared Smith - creator, maintainer
