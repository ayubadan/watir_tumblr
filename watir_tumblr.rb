require 'watir'

browser = Watir::Browser.new :chrome
browser.goto "https://www.tumblr.com/"

browser.button(id: "signup_login_button").click
sleep 2
browser.text_field(name: 'determine_email').set("mrkhan89@hotmail.co.uk")
browser.button(id: "signup_forms_submit").click
sleep 1
browser.text_field(id: 'signup_password').set("sparta101")
browser.button(id: "signup_forms_submit").click
sleep 2
browser.button(id: "new_post_label_text").click
sleep 2
browser.text_field(class: 'field').set("sparta101")
