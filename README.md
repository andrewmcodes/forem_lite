<div align="center">
  <h1>ForemLite</h1>
  <p>
    <a href="LICENSE" target="_blank">
      <img alt="License: MIT" src="https://img.shields.io/github/license/andrewmcodes/forem_lite" />
    </a>
    <a href="https://badge.fury.io/rb/forem_lite"><img src="https://badge.fury.io/rb/forem_lite.svg" alt="Gem Version" height="18"></a>
    <a href="https://depfu.com"><img src="https://badges.depfu.com/badges/9cf174e17d58cbd60ea040722701e652/status.svg" alt="Depfu"></a>
    <a href="https://depfu.com/github/andrewmcodes/forem_lite?project_id=14214"><img src="https://badges.depfu.com/badges/9cf174e17d58cbd60ea040722701e652/count.svg" alt="Depfu"></a>
    <a href="https://codeclimate.com/github/andrewmcodes/forem_lite/maintainability"><img src="https://api.codeclimate.com/v1/badges/999e4e19ff915c1d4c8a/maintainability" /></a>
    <a href="https://www.codacy.com/manual/andrewmcodes/forem_lite?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=andrewmcodes/forem_lite&amp;utm_campaign=Badge_Grade"><img src="https://app.codacy.com/project/badge/Grade/4954986dea2e4732add795399a3c8c9d"/></a>
    <a href='https://coveralls.io/github/andrewmcodes/forem_lite?branch=main'><img src='https://coveralls.io/repos/github/andrewmcodes/forem_lite/badge.svg?branch=main' alt='Coverage Status' /></a>
    <img alt="inch ci" src="http://inch-ci.org/github/andrewmcodes/forem_lite.svg?branch=main&style=shields">
    <img alt="Tests" src="https://github.com/andrewmcodes/forem_lite/workflows/Tests/badge.svg" />
    <img alt="Linters" src="https://github.com/andrewmcodes/forem_lite/workflows/Linters/badge.svg" />
    <img alt="Changelog" src="https://github.com/andrewmcodes/forem_lite/workflows/Changelog/badge.svg" />
  </p>
</div>

A simple tool to help you get articles from Forem/Dev.to.

The patterns laid out in this gem could easily be used to finish building out the rest of the API, but I only needed articles so I am leaving the rest up to contributors or for when I eventually need to use it as well.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "forem_lite"
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install forem_lite
```

## Usage

```rb
require "forem_lite"

c = ForemLite::Client.new

# https://docs.dev.to/api/#operation/getArticles
articles = c.articles
articles.first.title # => "How do you keep notes?"

# https://docs.dev.to/api/#operation/getArticleById
article = c.article(279134)
article.title # => "A11Y in Rails: Automated Linting with AccessLint🎉"
article.url # => "https://dev.to/andrewmcodes/a11y-in-rails-automated-linting-with-accesslint-1618"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andrewmcodes/forem_liteent. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/andrewmcodes/forem_liteent/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DevApi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/andrewmcodes/forem_liteent/blob/master/CODE_OF_CONDUCT.md).
