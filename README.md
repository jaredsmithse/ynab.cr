# ynab
[![Build Status](https://travis-ci.org/jaredsmithse/ynab.svg?branch=master)](https://travis-ci.org/jaredsmithse/ynab)
[![GitHub license](https://img.shields.io/github/license/c910335/mass-spec.svg)](https://github.com/c910335/mass-spec/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/jaredsmithse/ynab.svg)](https://github.com/jaredsmithse/ynab/releases)

This is an API client for YNAB. It is still in development and there is a lot to do!

## TODO
- [ ] OAuth
- [ ] Errors
- [ ] Delta Requests
- [ ] Caching
- [ ] Docs
  - [ ] For Usage in README
  - [ ] For each attribute (comments)
  - [ ] For each class
  - [ ] Hosted
- [ ] Query Options
- [ ] API Status Check
- [ ] All Endpoints
  - [ ] GET
  - [ ] POST
  - [ ] PUT
  - [ ] DELETE

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  ynab:
    github: jaredsmithse/ynab
```

## Usage

```crystal
require "ynab"
```

TODO: Write usage instructions here

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
