require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "headless"
  @driver = :selenium_chrome_headless
else
  puts "Invalid Browser"
end

Capybara.configure do |config|
    config.default_driver = @driver 
    config.app_host = 'https://www.webmotors.com.br'
    config.default_max_wait_time = 5
end
  