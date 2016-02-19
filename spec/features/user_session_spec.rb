require "rails_helper"

feature "user session" do
  let(:user) {FactoryGirl.create(:user)}

  scenario "user visits the site to log in" do
    visit root_path
    click_link "Login"
    fill_in_signin_fields
    expect(page).to have_content("Signed in successfully.")
  end

  scenario "user logs out of site" do
    click_link "Sign out"
    expect(page).to have_content("Signed out successfully.")
  end

  def fill_in_signin_fields
    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password
    click_button "Login"
  end
end
