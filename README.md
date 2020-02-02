# unicode-version [![[version]](https://badge.fury.io/rb/unicode-version.svg)](https://badge.fury.io/rb/unicode-version)  [![[travis]](https://travis-ci.org/janlelis/unicode-version.svg)](https://travis-ci.org/janlelis/unicode-version)

Makes it easy to check for Unicode and Emoji support of your current Ruby (and older Rubies)

## Setup

Add to your `Gemfile`:

```ruby
gem "unicode-version"
```

## Usage

```ruby
# Returns current Unicode version (example with Ruby 2.7.0)
Unicode::Version.unicode_version # => 12.1

# Returns Unicode version of older Rubies
Unicode::Version.unicode_version "2.6.2" # => 12.0.0
Unicode::Version.unicode_version 1.9 # => 5.2.0

# Returns nil when Ruby version too old (before 1.9)
Unicode::Version.unicode_version 1.8 # => nil

# Returns current Emoji version (example with Ruby 2.7.0)
Unicode::Version.emoji_version # => 12.1

# Returns Emoji version of older Rubies
Unicode::Version.emoji_version "2.6.2" # => 12.0
Unicode::Version.emoji_version 2.5 # => 5.0

# Returns nil when Ruby version too old (before 2.5)
Unicode::Version.emoji_version 2.4 # => nil
```

## MIT License

Copyright (C) 2020 Jan Lelis <https://janlelis.com>. Released under the MIT license.
