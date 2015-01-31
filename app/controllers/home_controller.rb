class HomeController < ApplicationController
  def index
    if params[:id]
      @pal = Pal.find(params[:id]) 
    else
      @pal = Pal.new
    end
    
  end
end
