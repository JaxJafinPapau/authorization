require 'rails_helper'

RSpec.describe 'As a visitor' do
  it 'can create a new user profile' do
    visit root_path

    click_link "Register"


  end
end
