require "rails_helper"

RSpec.describe Url do
  it "is able to save short and long url" do
    url = Url.new(
      long_url: "https://www.food.ee/restaurants/vancouver/blaze-gourmet-burgers",
      short_url: "1234567"
    )
    Url.save
  end
end