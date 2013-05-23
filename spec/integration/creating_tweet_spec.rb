require 'spec_helper'

feature "create a new tweet" do
  before do
    visit '/'
  end

  scenario "create a tweet in the database" do
    click_link "New Tweet"
    fill_in "Body", :with => "here is a new tweet."
    click_button "Create Tweet" 
    page.should have_content("You just created a new tweet.")
    ends
