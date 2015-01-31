class Pal < ActiveRecord::Base
  def encoded_url
    "http://valpal.rocks/pal/#{id}"
  end
end
