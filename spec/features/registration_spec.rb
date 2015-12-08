require 'rails_helper'

RSpec.feature "user registers for site" do
  scenario "host registers" do
    visit root_path
    click_link "Become a host"
    fill_in_registration_fields
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end

  def fill_in_registration_fields
    fill_in "user[name]", with: Faker::Name.name
    fill_in "user[email]", with: Faker::Internet.email
    fill_in "user[password]", with: Devise.friendly_token.first(8)
    click_button "Sign up"
  end
end
