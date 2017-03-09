require 'watir'
require 'rspec'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.before(:all) do
    @browser = Watir::Browser.new :chrome
  end

  config.after(:all) do
    @browser.quit
  end
end

def base_url
  "https://www.tumblr.com"
end

def visit(path)
  @browser.goto "#{base_url}#{path}"
end

def logout!
  @browser.goto "#{base_url}/logout"
end

def logged_in?
  @browser.body.attribute_value('class').include? "logged_in?"
end

def login(email="mrkhan89@hotmail.co.uk", password="sparta101")
  unless logged_in?
    visit '/login'
    @browser.text_field(name: 'determine_email').set(email)
    @browser.button(id: "signup_forms_submit").click
    sleep 1
    @browser.text_field(id: 'signup_password').set(password)
    @browser.button(id: "signup_forms_submit").click
    sleep 1
  end
end

def login_bad(email="mrkhan89@hotmail.co.uk", password)
  unless logged_in?
    visit '/login'
    @browser.text_field(name: 'determine_email').set(email)
    @browser.button(id: "signup_forms_submit").click
    @browser.text_field(id: 'signup_password').set(password)
    @browser.button(id: "signup_forms_submit").click
  end
end







#
