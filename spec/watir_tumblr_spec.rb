require 'rspec'
require 'spec_helper'

describe "tumblr" do

  it "should login" do
    # @browser.button(id: "signup_login_button").click
    # @browser.text_field(name: 'determine_email').set("mrkhan89@hotmail.co.uk")
    # @browser.button(id: "signup_forms_submit").click
    # @browser.text_field(id: 'signup_password').set("sparta101")
    # @browser.button(id: "signup_forms_submit").click
    login
    expect(@browser.url).to eq "https://www.tumblr.com/dashboard"
  end

  

  # it "should post a post" do
  #   login
  #
  #   binding.pry
  # end

end



#
# it "should sucessfully post a text post" do
#   @browser = Watir::Browser.new
#   @browser.goto "https://www.tumblr.com/"
#   @browser.button(id: "signup_login_button").click
#   expect(@browser.url).to eq "https://www.tumblr.com/login"
#
# end
