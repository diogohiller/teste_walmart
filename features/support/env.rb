# encoding: utf-8
require 'capybara'
require 'capybara/cucumber'

Before do |scenario|
 page.driver.browser.manage.window.maximize
end
 
Capybara.default_driver = :selenium
Capybara.app_host = "https://www.walmart.com"
Capybara.default_wait_time = 20
 
World(Capybara)