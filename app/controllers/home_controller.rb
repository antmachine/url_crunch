class HomeController < ApplicationController
  def url_crunch
    @url = Url.new
  end

  def url_index
    @urls = Url.all
  end
end
