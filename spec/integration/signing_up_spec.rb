require 'spec_helper'

feature "signing_up" do
  scenario "a successful sign up" do
    visit '/'
    click_link "Sign up"
    fill_in "Email", :with => "user@tweettime.com"
    fill_in "Password", :with => "foobar"
    fill_in "Password confirmation", :with => "foobar"
    click_button "Sign up"
    page.should have_content("A message with a confirmation link has been sent to your email address. Please open the link to activate your account.")
  end
end