source 'http://rubygems.org'

# Declare your gem's dependencies in socialite.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

gem "omniauth-identity", git: 'git://github.com/intridea/omniauth-identity'
gem "launchy"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'

group :travis_ci do
  gem 'pg', '~> 0.14'
  gem 'mysql2'
end
