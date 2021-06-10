require "rails_helper"

RSpec.describe "URL redirection", type: :request do

  it "redirects to the long url" do
    url = "https://www.google.com"
    shortener = Shortener.new(url)
    link = shortener.generateShortUrl
    get link.shortened_url
    expect(response).to redirect_to(link.long_url)
  end

end