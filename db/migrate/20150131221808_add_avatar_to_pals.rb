class AddAvatarToPals < ActiveRecord::Migration
  def change
    add_column :pals, :avatar, :string
  end
end
