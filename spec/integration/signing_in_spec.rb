require 'spec_helper'

feature "signing in" do
  let!(:user) {Factory(:user, :email => "user@example.com")}

  scenario "signing in via confirmation" do
    open_email "user@example.com", :with_subject => /Confirmation/
    click_first_link_in_email
    page.should have_content("Your account was successfully confirmed")
    page.should have_content("Signed in as user@example.com")
  end
end