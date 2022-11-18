require 'rails_helper'

RSpec.describe 'User Signup', type: :feature do
  it 'should sign up successfully' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Name', with: 'John'
    fill_in 'Email', with: 'john@gmail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end