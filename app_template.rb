remove_file 'README.rdoc'
create_file 'README.md', 'TODO'

gem_group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
end

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'meta_request'
  gem 'rails-erd'
end

gem_group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'launchy'
end

run 'bundle install'
generate 'rspec:install'

if yes? 'Do you want to generate a root controller?'
  name = ask('What should it be called?').underscore
  generate :controller, '#{name} index'
  route "root to: #{name}\#index"
  remove_file 'public/index.html'
end

git :init
git add: '.', commit: "-m 'Initial commit'"
