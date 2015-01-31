class PalsController < ApplicationController
  def poster
    @pal = Pal.find(params[:id])
  end
end
