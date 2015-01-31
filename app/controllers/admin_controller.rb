class AdminController < ApplicationController

  before_filter :authenticate_pal!
  before_filter :only_admin!

  def index
    @pals = Pal.all

  end

  def edit_pal
    @pal = Pal.find(params[:id])
  end

  def update_pal
    @person = Pal.find(params[:id])
    @person.update(pal_params)

    @person.avatar = params[:avatar] # Assign a file like this, or
    # u.avatar = File.open('somewhere') # like this
    @person.save!
    # u.avatar.url # => '/url/to/file.png'
    # u.avatar.current_path # => 'path/to/file.png'
    # u.avatar.identifier # => 'file.png'

    redirect_to :action => 'edit_pal'
  end


  private

  def pal_params
    params.require(:pal).permit(:email, :name, :avatar)
  end

  def only_admin!
    unless current_pal.admin?
      render :file => "#{Rails.root}/public/404.html",  :status => 404
    end
  end

end
