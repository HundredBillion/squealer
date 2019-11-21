require 'rails_helper'
require 'capybara/rails'


require "rails_helper"

RSpec.describe "Home Page", type: :system do
  it 'shows the home page' do
    visit "users/landing_page"
    expect(page).to have_text("Tired of the blah blah blah?")
  end

  it 'allows user to create account' do
    visit "users/landing_page"
    click_link "sign-up"
    fill_in "full name",	:with=> "David Lee" 
    fill_in "email",	with: "david.lee@email.com"
    fill_in "password",	with: "password1!"  
    click_on ("Sign Up")
    binding.pry
  
    expect(page).to have_current_path "root" 
  end
end

# feature 'registered user can log in and out' do

#   scenario 'registered user logs in from the landing page and is redirected to registerd users home page' do
#     visit root_path
#     user signs_in
#     expect(page).to have_current_path(users_home_path)
#   end

#   scenario 'registered user logs out from the home page and is redirected to landing page' do
#     visit root path
#     user signs_in
#     user logs_out
#     expect(page).to have_current_path(root_path)
#   end

# end

# feature 'registered user can perform basic website funtions' do

#     scenario 'registered user posts a squeal' do
#       vist root_path
#       user signs_in
#       user submits squeal form with text "my first squeal"
#       expect(page).to have_contenct("my first squeal")
#     end

#     scenario 'registered user can follow another user' do
#       before(:each) do
#         @user1 = FB.create 
#         @user2 = FB.create

#         @user1_squeal = FB.create
#         @user2_squeal = FB.create
#       end

#       @user1 signs_in
#       visit user_explore_path
#       click_button "Follow"
#       visit users_home_path
#       expect(page). to have_content("@user2.fullname")
#     end

# end