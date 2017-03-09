require 'watir'

browser = Watir::Browser.new :chrome
browser.goto "https://www.tumblr.com/"

# Post a text post
browser.button(id: "signup_login_button").click
sleep 2
browser.text_field(name: 'determine_email').set("mrkhan89@hotmail.co.uk")
browser.button(id: "signup_forms_submit").click
sleep 1
browser.text_field(id: 'signup_password').set("sparta101")
browser.button(id: "signup_forms_submit").click
sleep 2
browser.a(id: "new_post_label_text").click
sleep 2
browser.element(css: "div[aria-label='Post title']").send_keys 'Hello'
sleep 2
browser.element(css: "div[aria-label='Post body']").send_keys 'The three Amigos!'
sleep 2
browser.element(css: "div[aria-label='Post tags']").send_keys 'sparta'
browser.button(class: "create_post_button").click
sleep 2
