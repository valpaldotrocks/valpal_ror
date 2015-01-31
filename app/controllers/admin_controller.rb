class AdminController < ApplicationController

  before_filter :authenticate_pal!
  before_filter :only_admin!

  def edit_pal

  end

  def update_pal

  end


  private

  def only_admin!
    unless current_pal.admin?
      render :file => "#{Rails.root}/public/404.html",  :status => 404
    end
  end

end
