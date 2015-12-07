require 'rails_helper'

RSpec.feature "visiting the homepage" do
  scenario "the visitor sees company slogan" do
    visit root_path
    expect(page).to have_text("Discover the nature and have fun!")
  end
end
