require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it "displays the company slogan" do
    render
    expect(rendered).to have_text("Discover the nature and have fun!")
  end
end
