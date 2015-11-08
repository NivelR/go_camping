class HomeController < ApplicationController
  layout "landing"

  def index
  	render layout: "landing"
  end
end
