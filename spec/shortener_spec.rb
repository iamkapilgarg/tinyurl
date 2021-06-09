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
    shortURL1 = shortener.getShortURL(url)

    url = 'https://www.food.ee/restaurants/vancouver/brick-n-cheese'
    shortener = Shortener.new(url)
    shortURL2 = shortener.getShortURL(url)

    expect(shortURL1).not_to eq(shortURL2)
  end
end
