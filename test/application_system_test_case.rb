require "test_helper"
require 'capybara/poltergeist'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.register_driver(:headless_chrome) do |app|
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome \
      chromeOptions: { args: %w[disable-gpu window-size=1280x760] }
    Capybara::Selenium::Driver.new app,
      browser: :chrome, desired_capabilities: capabilities
  end
  driven_by :selenium
end
