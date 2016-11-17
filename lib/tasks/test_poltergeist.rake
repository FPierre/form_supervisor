require 'capybara/rails'
require 'capybara/poltergeist'

namespace :test_poltergeist do
  include Capybara::DSL

  Capybara.javascript_driver = :poltergeist

  Capybara.app_host = 'https://news.ycombinator.com'

  # visit '/'

  # session.click_button 'Recherche Google'
  click_link 'new'
end
