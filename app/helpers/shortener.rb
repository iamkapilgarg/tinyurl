class Shortener

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def getShortURL
     loop do
        code = SecureRandom.uuid[0..6];
        break code unless Url.exists?(short_url: code)
     end
  end

  def generateShortUrl
    Url.create(long_url: url, short_url: getShortURL)
  end
end 