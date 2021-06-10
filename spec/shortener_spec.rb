require "rails_helper"

RSpec.describe Shortener do
  it "generates a 7 character code to for a given URL" do
    url = 'https://www.food.ee/restaurants/vancouver/blaze-gourmet-burgers'
    shortener = Shortener.new(url)
    expect(shortener.getShortURL.length).to eq(7)
  end

  it "generates different short URL each time" do
    url = 'https://www.food.ee/restaurants/vancouver/blaze-gourmet-burgers'
    shortener = Shortener.new(url)
    shortURL1 = shortener.getShortURL

    url = 'https://www.food.ee/restaurants/vancouver/brick-n-cheese'
    shortener = Shortener.new(url)
    shortURL2 = shortener.getShortURL

    expect(shortURL1).not_to eq(shortURL2)
  end


  it "returns long url if provided short url" do
    url = 'https://www.food.ee/restaurants/vancouver/blaze-gourmet-burgers'
    shortener = Shortener.new(url)
    result = shortener.generateShortUrl
    expect(result.valid?).to be(true)
  end
end
