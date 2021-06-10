class UrlsController < ApplicationController

  def create
    shortener = Shortener.new(url_params[:long_url])
    @url = shortener.generateShortUrl
  end

  private 

  def url_params
    params.require(:url).permit(:long_url)
  end
end