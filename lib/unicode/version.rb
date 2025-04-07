# frozen_string_literal: true

require_relative "version/version"

module Unicode
  module Version
    RB_CONFIG_UNICODE_AVAILABLE = "2.4.0"
    RB_CONFIG_EMOJI_AVAILABLE = "2.6.0"

    RUBY_UNICODE_VERSIONS = {
      3.4 => "15.0.0",
      3.3 => "15.0.0",
      3.2 => "15.0.0",
      3.1 => "13.0.0",
      3.0 => "12.1.0",
      2.7 => "12.1.0",
      2.6 => "12.1.0",
      "2.6.2" => "12.0.0",
      "2.6.1" => "11.0.0",
      "2.6.0" => "11.0.0",
      2.5 => "10.0.0",
      2.4 => "9.0.0",
      2.3 => "8.0.0",
      2.2 => "7.0.0",
      2.1 => "6.1.0",
      2.0 => "6.1.0",
      1.9 => "5.2.0",
    }.freeze

    RUBY_EMOJI_VERSIONS = {
      3.4 => "15.0",
      3.3 => "15.0",
      3.2 => "15.0",
      3.1 => "13.1",
      3.0 => "12.1",
      2.7 => "12.1",
      2.6 => "12.0",
      "2.6.1" => "11.0",
      "2.6.0" => "11.0",
      2.5 => "5.0",
    }.freeze

    def self.unicode_version(ruby_version = RUBY_VERSION)
      if ruby_version == RUBY_VERSION && ruby_version >= RB_CONFIG_UNICODE_AVAILABLE
        RbConfig::CONFIG["UNICODE_VERSION"]
      else
        RUBY_UNICODE_VERSIONS[ruby_version] || RUBY_UNICODE_VERSIONS[ruby_version.to_f]
      end
    end

    def self.emoji_version(ruby_version = RUBY_VERSION)
      if ruby_version == RUBY_VERSION && ruby_version >= RB_CONFIG_EMOJI_AVAILABLE
        RbConfig::CONFIG["UNICODE_EMOJI_VERSION"]
      else
        RUBY_EMOJI_VERSIONS[ruby_version] || RUBY_EMOJI_VERSIONS[ruby_version.to_f]
      end
    end
  end
end

