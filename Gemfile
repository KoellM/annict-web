# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

gem "rails", "~> 6.0.0"

gem "active_decorator"
gem "active_link_to"
gem "activerecord-session_store"
gem "acts_as_list"
gem "addressable"
gem "aws-sdk-s3" # Using in Shrine
gem "browser", require: "browser/browser"
gem "by_star"
gem "cld"
gem "commonmarker" # Using github-markup
gem "counter_culture"
gem "delayed_job_active_record"
gem "devise"
gem "discord-notifier"
gem "doorkeeper"
gem "dotenv-rails"
gem "down"
gem "dry-struct"
gem "email_validator"
gem "enumerize"
gem "flutie"
gem "github-markup"
gem "gon"
gem "graphql", ">= 1.10.0.pre3" # https://github.com/rmosolgo/graphql-ruby/pull/2640
gem "graphql-batch"
gem "graphql-fragment_cache"
gem "groupdate"
gem "hashdiff"
gem "hiredis"
gem "http_accept_language"
gem "httparty"
gem "image_processing"
gem "imgix-rails"
gem "jb"
gem "kaminari"
gem "koala"
gem "memory_profiler" # Used by rack-mini-profiler
gem "meta-tags"
gem "mini_magick"
gem "miro"
gem "mjml-rails"
gem "moji"
gem "nokogiri"
gem "omniauth-facebook"
gem "omniauth-gumroad"
gem "omniauth-twitter"
gem "pg"
gem "puma"
gem "puma_worker_killer"
gem "pundit"
gem "rack-attack"
gem "rack-cors", require: "rack/cors"
gem "rack-mini-profiler"
gem "rack-rewrite"
gem "rails_autolink"
gem "rails-html-sanitizer"
gem "rails-i18n"
gem "ransack"
gem "redis"
gem "sentry-raven"
gem "shrine"
gem "slim"
gem "syoboi_calendar"
gem "twitter"
gem "validate_url"
gem "view_component"
gem "virtus"
gem "wilson_score"

group :development, :test do
  gem "awesome_print"
  gem "factory_bot_rails"
  gem "pry-rails"
  gem "rspec-mocks"
  gem "rspec-rails"
end

group :development do
  gem "active_record_query_trace"
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller" # Using better_errors
  gem "bullet"
  gem "derailed_benchmarks"
  gem "graphql-docs"
  gem "i18n-tasks"
  gem "listen" # Using with `rails s` since Rails 5
  gem "meta_request"
  gem "rubocop"
  gem "ruby_identicon"
  gem "scss_lint", require: false
  gem "solargraph"
  gem "spring"
  gem "spring-commands-rspec", require: false
  gem "squasher"
  gem "stackprof"
  gem "traceroute"
end

group :test do
  # Use < 0.18 until the following issue will be resolved.
  # https://github.com/codeclimate/test-reporter/issues/418
  gem "simplecov", "< 0.18", require: false
  gem "timecop"
end

group :production do
  gem "lograge"
end
