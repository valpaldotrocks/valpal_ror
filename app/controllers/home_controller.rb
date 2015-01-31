class HomeController < ApplicationController

  def index
    @pals = Pal.where("latitude is NOT NULL and longitude is NOT NULL").all
  end

end
