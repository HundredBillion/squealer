require 'rails_helper'
require 'capybara/rails'

feature 'registered user logs in and should be directed to squeal page' do
  scenario 'user logs in from the home page' do
    visit root_path

    log_in 'Full Name', with: 'user'
    click_button 'Create Foobar'

    expect(page).to have_css '.foobar-name', 'My foobar'
  end
end