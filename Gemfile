source 'https://rubygems.org'

ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')

  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'rails', '~> 5.0.2'

# Use mysql as the database for Active Record

# Use Puma as the app server

gem 'puma', '~> 3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

# gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production

# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password

# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment

# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible

# gem 'rack-cors'

gem 'active_model_serializers', '~> 0.10.0'

gem 'devise'

gem 'devise_token_auth'

gem 'rails-i18n', '~> 5.0.0'

gem 'omniauth'

gem 'ransack'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console

  gem 'byebug', platform: :mri

  gem 'rspec-rails', '~> 3.5'

  gem 'mysql2', '>= 0.3.18', '< 0.5'
end

group :production do
  gem 'pg', '~> 0.20'
end

group :test do
  gem 'database_cleaner'

  gem 'factory_girl_rails'

  gem 'faker'

  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'listen', '~> 3.0.5'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  gem 'spring'

  gem 'spring-commands-rspec'

  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
