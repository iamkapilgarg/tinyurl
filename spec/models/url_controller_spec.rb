require 'rails_helper'

RSpec.describe UrlsController, type: :controller do
  it "can create a short url provided by a user" do
    longUrl = "https://www.food.ee/restaurants/vancouver/blaze-gourmet-burgers"
    request.env["HTTP_ACCEPT"] = "text/javascript"
    post :create, params: {url: {long_url: longUrl}}
    url = assigns(:url)
    expect(url.length).to eq(7)
    expect(response).to render_template('create')
  end
end