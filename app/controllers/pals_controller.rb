class PalsController < ApplicationController

  def index
    @paypal_endpoint = params[:sandbox].present? ? "www.sandbox.paypal.com" : "www.paypal.com"
    if params[:id]
      @pal = Pal.find(params[:id])
    else
      if params[:pal_name]
        @pal = Pal.where(name: params[:pal_name]).first
      end

      @pal = Pal.new unless @pal
    end

  end

  def explore

  end

  def poster
    @pal = Pal.find(params[:id])
  end
end
