class Url < ApplicationRecord
  validates_presence_of :short_url, :long_url
  validates_uniqueness_of :short_url
end
