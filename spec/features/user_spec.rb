require 'rails_helper'

RSpec.describe 'As a visitor' do
  it 'can create a new user profile' do
    visit root_path

    click_link "Register"

    fill_in "user[name]", with: "test_user"
    fill_in "user[email]", with: "tu@test.com"
    fill_in "user[password]", with: "sonsbirhday"

    click_on "Create User"

    expect(current_path).to eq(root_path)
    expect(User.last.name).to eq("test_user")
  end

  it 'can log in' do
    visit root_path

    click_link "Login"

    fill_in "email", with: "tu@test.com"
    fill_in "password", with: "sonsbirhday"

    click_on "Login"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("You have successfully logged in!")
  end
end
