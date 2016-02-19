require "rails_helper"

feature "user session" do

  describe "with valid information" do
    let(:user) { FactoryGirl.create(:user) }
    subject { page }

    before do
      visit root_path
      click_link "Login"
      fill_in_signin_fields
    end

    it { should have_link('Sign out', href: destroy_user_session_path) }
    it { should have_content("Welcome! You have signed up successfully.") }

    describe "followed by signout" do
      before { click_link "Sign out" }
      it { should have_link('Login') }
      it { should have_content("Signed out successfully.")}
    end
  end

  def fill_in_signin_fields
    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password
    click_button "Log in"
  end
end
