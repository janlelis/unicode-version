# Unicode::Version.unicode_version [![[version]](https://badge.fury.io/rb/unicode-version.svg)](https://badge.fury.io/rb/unicode-version)  [![[ci]](https://github.com/janlelis/unicode-version/workflows/Test/badge.svg)](https://github.com/janlelis/unicode-version/actions?query=workflow%3ATest)

Makes it easy to check for Unicode and Emoji support of your current Ruby (and older Rubies)

## Setup

Add to your `Gemfile`:

```ruby
gem "unicode-version"
```

## Usage

```ruby
# Returns current Unicode version (example with Ruby 3.1.0)
Unicode::Version.unicode_version # => 13.0.0

# Returns Unicode version of older Rubies
Unicode::Version.unicode_version "2.6.2" # => 12.0.0
Unicode::Version.unicode_version 1.9 # => 5.2.0

# Returns nil when Ruby version too old (before 1.9)
Unicode::Version.unicode_version 1.8 # => nil

# Returns current Emoji version (example with Ruby 3.1.0)
Unicode::Version.emoji_version # => 13.1

# Returns Emoji version of older Rubies
Unicode::Version.emoji_version "2.6.2" # => 12.0
Unicode::Version.emoji_version 2.5 # => 5.0

# Returns nil when Ruby version too old (before 2.5)
Unicode::Version.emoji_version 2.4 # => nil
```

## MIT License

Copyright (C) 2020-2025 Jan Lelis <https://janlelis.com>. Released under the MIT license.
