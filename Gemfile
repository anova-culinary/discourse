source 'https://rubygems.org'
# if there is a super emergency and rubygems is playing up, try
#source 'http://production.cf.rubygems.org'

# does not install in linux ATM, so hack this for now
gem 'bootsnap', require: false

def rails_master?
  ENV["RAILS_MASTER"] == '1'
end

if rails_master?
  gem 'arel', git: 'https://github.com/rails/arel.git'
  gem 'rails', git: 'https://github.com/rails/rails.git'
  gem 'seed-fu', git: 'https://github.com/SamSaffron/seed-fu.git', branch: 'discourse'
else
  # Rails 5 is going to ship with Action Cable, we have no use for it as
  # we already ship MessageBus, AC introduces dependencies on Event Machine,
  # Celluloid and Faye Web Sockets.
  #
  # Note this means upgrading Rails is more annoying, to do so, comment out the
  # explicit dependencies, and add gem 'rails', bundle update rails and then
  # comment back the explicit dependencies. Leaving this in a comment till we
  # upgrade to Rails 5
  #
  # gem 'activesupport'
  # gem 'actionpack'
  # gem 'activerecord'
  # gem 'actionmailer'
  # gem 'activejob'
  # gem 'railties'
  # gem 'sprockets-rails'
  gem 'rails', '~> 4.2.0'
  gem 'seed-fu', '~> 2.3.0'
end

gem 'mail'
gem 'mime-types', '~> 2.99.0', require: 'mime/types/columnar'

gem 'hiredis', '~> 0.6.0'
gem 'redis', require:  ["redis", "redis/connection/hiredis"]
gem 'redis-namespace', '~> 1.5.0'

gem 'active_model_serializers', '~> 0.8'

gem 'onebox'

gem 'http_accept_language', '~> 2.0', require: false

gem 'ember-rails', '~> 0.18.0'
gem 'ember-source', '~> 2.10.0'
gem 'ember-handlebars-template', '~> 0.7.0'
gem 'barber', '~> 0.11.0'
gem 'babel-transpiler', '0.7.0'

gem 'message_bus', '~> 2.0'

gem 'rails_multisite', '~> 1.0'

gem 'fast_xs', '~> 0.8.0'

gem 'fast_xor', '~> 1.1.0'

gem 'fastimage', '~> 2.1.0'
gem 'aws-sdk', '~> 2.5.0', require: false
gem 'excon', '~> 0.55.0', require: false
gem 'unf', '~> 0.1.0', require: false

gem 'email_reply_trimmer', '~> 0.1.0'

# TODO Use official image_optim gem once https://github.com/toy/image_optim/pull/149
# is merged.
gem 'discourse_image_optim', '~> 0.24', require: 'image_optim'
gem 'multi_json', '~> 1.12'
gem 'mustache', '~> 1'
gem 'nokogiri', '~> 1.8'

gem 'omniauth', '~> 1.6'
gem 'omniauth-openid', '~> 1'
gem 'openid-redis-store'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-instagram'
gem 'omniauth-github', require: 'omniauth-github'
gem 'omniauth-oauth2', require: false
gem 'omniauth-google-oauth2'

gem 'oj', '~> 3.0'
gem 'pg', '~> 0.0'
gem 'pry-rails', '~> 0.3.0', require: false
gem 'r2', '~> 0.2.0', require: false
gem 'rake', '~> 11.3.0'

gem 'thor', '~> 0.19.0', require: false
gem 'rest-client', '~> 1.8.0'
gem 'rinku', '~> 2.0'
gem 'sanitize', '~> 4.4.0'
gem 'sidekiq', '~> 4.2.0'

# for sidekiq web
gem 'sinatra', '~> 1.4.0', require: false
gem 'execjs', '~> 2.7.0', require: false
gem 'mini_racer', '~> 0.1.0'
gem 'highline', '~> 1.7.0', require: false
gem 'rack-protection', '~> 1.5.0' # security

# Gems used only for assets and not required
# in production environments by default.
# allow everywhere for now cause we are allowing asset debugging in prd
group :assets do
  gem 'uglifier', '~> 3.0'
  gem 'rtlit', '~> 0.0', require: false # for css rtling
end

group :test do
  gem 'webmock', '~> 3.0', require: false
  gem 'fakeweb', '~> 1.3.0', require: false
  gem 'minitest', '~> 5.10.0', require: false
  gem 'timecop', '~> 0.8.0'
  # TODO: Remove once we upgrade to Rails 5.
  gem 'test_after_commit', '~> 1.1.0'
end

group :test, :development do
  gem 'rspec', '~> 3.4.0'
  gem 'mock_redis', '~> 0.15.0'
  gem 'listen', require: false
  gem 'certified', '~> 1.0', require: false
  # later appears to break Fabricate(:topic, category: category)
  gem 'fabrication', '~> 2.9.0', require: false
  gem 'discourse-qunit-rails', '~> 0.0', require: 'qunit-rails'
  gem 'mocha', '~> 1.1.0', require: false
  gem 'rb-fsevent', '~> 0.9.0', require: RUBY_PLATFORM =~ /darwin/i ? 'rb-fsevent' : false
  gem 'rb-inotify', '~> 0.9.0', require: RUBY_PLATFORM =~ /linux/i ? 'rb-inotify' : false
  gem 'rspec-rails', '~> 3.4.0', require: false
  gem 'shoulda', '~> 3.5.0', require: false
  gem 'rspec-html-matchers', '~> 0.7.0'
  gem 'spork-rails', '~> 4.0'
  gem 'pry-nav', '~> 0.2.0'
  gem 'byebug', '~> 9.0', require: ENV['RM_INFO'].nil?
end

group :development do
  gem 'bullet', '~> 5.4.0', require: !!ENV['BULLET']
  gem 'better_errors', '~> 2.1.0'
  gem 'binding_of_caller', '~> 0.7.0'
  gem 'annotate', '~> 2.7.0'
  gem 'foreman', '~> 0.82.0', require: false
end

# this is an optional gem, it provides a high performance replacement
# to String#blank? a method that is called quite frequently in current
# ActiveRecord, this may change in the future
gem 'fast_blank', '~> 1.0' #, github: "SamSaffron/fast_blank"

# this provides a very efficient lru cache
gem 'lru_redux', '~> 1.1.0'

gem 'htmlentities', '~> 4.3.0', require: false

# IMPORTANT: mini profiler monkey patches, so it better be required last
#  If you want to amend mini profiler to do the monkey patches in the railties
#  we are open to it. by deferring require to the initializer we can configure discourse installs without it

gem 'flamegraph', '~> 0.9.0', require: false
gem 'rack-mini-profiler', '~> 0.10.0', require: false

gem 'unicorn', '~> 5.3.0', require: false
gem 'puma', '~> 3.0', require: false
gem 'rbtrace', require: false, platform: :mri
gem 'gc_tracer', '~> 1.5.0', require: false, platform: :mri

# required for feed importing and embedding
#
gem 'ruby-readability', '~> 0.7.0', require: false
gem 'simple-rss', '~> 1.3.0', require: false

gem 'stackprof', '~> 0.2.0', require: false, platform: :mri
gem 'memory_profiler', '~> 0.9.0', require: false, platform: :mri

gem 'rmmseg-cpp', '~> 0.2.0', require: false

gem 'logster', '~> 1.2.0'

gem 'sassc', require: false


if ENV["IMPORT"] == "1"
  gem 'mysql2'
  gem 'redcarpet'
  gem 'sqlite3', '~> 1.3.0'
end

# https://github.com/tzinfo/tzinfo/wiki/Resolving-TZInfo::DataSourceNotFound-Errors
gem 'tzinfo-data'
