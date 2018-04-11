require 'rails_helper'

RSpec.feature "SigningIns", type: :feature do
  
  scenario "Signing in with correct info" do
    visit '/sign_up'
    fill_in 'Email', with: 'example@gmail.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up'
    expect(page).to have_content 'Please follow the link to activate your account.'
  end

  scenario "Signing in with invalid email" do
    visit '/sign_up'
    fill_in 'Email', with: 'example@@@gmail.com.123'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up'
    expect(page).to have_content 'Email is invalid'
  end

  scenario "Signing in with correct info" do
    visit '/sign_up'
    fill_in 'Email', with: 'example@gmail.com'
    fill_in 'Password', with: ''
    fill_in 'Password confirmation', with: ''
    click_button 'Sign up'
    expect(page).to have_content "can't be blank"
  end

end
