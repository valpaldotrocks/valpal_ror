class HomeController < ApplicationController

  def index
    @pals = Pal.where("latitude is NOT NULL and longitude is NOT NULL").all
  end

  private

  helper do
    def pal_data(pal)
      {name: pal.name, lat: pal.latitude, long: pal.longitude, url: pal.avatar.url }
    end
  end

end
