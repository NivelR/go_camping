require "rails_helper"

feature "profiles" do
  let(:user) { FactoryGirl.create(:user) }

  scenario "host creates profile" do
    visit new_user_profile_path(user)
    fill_in "profile[bio]", with: Faker::Lorem.paragraph(2)
    click_button "Create Profile"
    expect(page).to have_content("Profile was successfully created.")
  end
end
