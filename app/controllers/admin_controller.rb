class AdminController < ApplicationController

  before_filter :authenticate_pal!
  before_filter :only_admin!

  def edit_pal
    @pal = Pal.find(params[:id])
  end

  def update_pal
    @person = Pal.find(params[:id])
    @person.update(pal_params)

    redirect_to :action => 'edit_pal'
  end


  private

  def pal_params
    params.require(:pal).permit(:email, :name)
  end

  def only_admin!
    unless current_pal.admin?
      render :file => "#{Rails.root}/public/404.html",  :status => 404
    end
  end

end
