class UrlsController < ApplicationController

  def create
    shortener = Shortener.new(url_params[:long_url])
    @url = shortener.generateShortUrl 

    if @url.persisted?
      respond_to :js
    else
      render 'error.js.erb'
    end

  end

  private 

  def url_params
    params.require(:url).permit(:long_url)
  end
end