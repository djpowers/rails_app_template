# djpowers' Rails App Template

### Purpose
This script is an [Rails Application Template](http://guides.rubyonrails.org/rails_application_templates.html), which can be run by passing the template option (-m), followed by the file path or URL of the script upon creation of a new Rails app: ```rails new example_app -m https://raw.githubusercontent.com/djpowers/rails_app_template/master/app_template.rb```

### Customizations

This script will make the following changes:

* Use Markdown instead of RDoc for the README
* Create a developement/test gem group with the following:
    * pry-rails
    * rspec-rails
    * capybara
    * factory_girl_rails
    * shoulda-matchers
    * valid_attribute
* Create a development gem group with the following:
    * better_errors
    * binding_of_caller
    * quiet_assets
* Install gems
* Generate RSpec files
* Prompt to create a root controller
* Initialize Git
* Add all files to Git and commit

### Resources
* Railscasts episode [\#148 Custom App Generators (revised)](http://railscasts.com/episodes/148-custom-app-generators-revised)
* [RailsGuides: Creating and Customzing Rails Generators & Templates](http://guides.rubyonrails.org/generators.html)
