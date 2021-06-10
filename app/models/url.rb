class Url < ApplicationRecord
  validates_presence_of :short_url, :long_url
  validates_uniqueness_of :short_url
  validate :long_url_format
  
  def long_url_format
    uri = URI.parse(long_url || "")
    if uri.host.nil?
      errors.add(:long_url, "Invalid URL format")
    end
  end 

  def shortened_url
    "#{ENV[HOST]}#{short_url}"
  end
  
end


