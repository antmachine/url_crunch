class HomeController < ApplicationController
  def url_crunch
    @url = Url.new
  end
end
