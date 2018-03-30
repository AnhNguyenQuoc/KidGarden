require 'rails_helper'

RSpec.feature "Logins", type: :feature do

  before(:each) do
    @user = User.create(email: "example@gmail.com", password: "123456", password_confirmation: "123456")
  end

  scenario "Login with valid user without active mail" do
    visit "/login"
    fill_in "Email", with: @user.email
    fill_in "Password",with: "123456"
    click_button "Log in"
    expect(page).to have_content "You have to confirm your email address before continuing."
  end

  scenario "Login with invalid user without active mail" do
    visit "/login"
    fill_in "Email", with: ""
    fill_in "Password",with: "123456"
    click_button "Log in"
    expect(page).to have_content "Invalid Email or password"
  end
end
