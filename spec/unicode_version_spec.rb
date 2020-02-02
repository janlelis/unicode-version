# frozen_string_literal: true

require_relative "../lib/unicode/version"
require "minitest/autorun"

describe Unicode::Version do
  describe ".unicode_version" do
    it "returns current Ruby's Unicode version when no Ruby version given" do
      RUBY_VERSION, original_ruby_version = "2.0.0", RUBY_VERSION

      assert_equal "6.1.0", Unicode::Version.unicode_version

      RUBY_VERSION = original_ruby_version
    end

    it "returns Unicode version of given Ruby" do
      assert_equal "12.0.0", Unicode::Version.unicode_version("2.6.2")
      assert_equal "5.2.0",  Unicode::Version.unicode_version(1.9)
    end

    it "returns nil when Ruby version too old" do
      assert_equal nil, Unicode::Version.unicode_version(1.8)
    end
  end

  describe ".emoji_version" do
    it "returns current Ruby's Emoji version when no Ruby version given" do
      RUBY_VERSION, original_ruby_version = "2.7.0", RUBY_VERSION

      assert_equal "12.1", Unicode::Version.emoji_version

      RUBY_VERSION = original_ruby_version
    end

    it "returns Emoji version of given Ruby" do
      assert_equal "12.0", Unicode::Version.emoji_version("2.6.2")
      assert_equal "5.0",  Unicode::Version.emoji_version(2.5)
    end

    it "returns nil when Ruby version too old" do
      assert_equal nil, Unicode::Version.emoji_version(2.4)
    end
  end
end
