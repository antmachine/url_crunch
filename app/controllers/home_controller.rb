class HomeController < ApplicationController
  def url_crunch
    @url = Url.new
  end

  def crunch_it
    url = Url.create(url_crunch_params)
    letters_and_numbers = [*'0'..'9',*'A'..'Z',*'a'..'z']
    random_letters_and_nubmers = Array.new(15){letters_and_numbers.sample}.join
    url.crunched_url = random_letters_and_nubmers
    url.save! ? flash[:notice] = "Url CRUNCHED!" : flash[:warning] = "Url not crunched, try again!"
    redirect_to url_index_path
  end

  def url_index
    @urls = Url.all
  end


  private
  def url_crunch_params
    params.require(:url).permit(:original_url)
  end
end
