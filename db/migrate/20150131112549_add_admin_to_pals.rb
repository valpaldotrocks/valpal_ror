class AddAdminToPals < ActiveRecord::Migration
  def change
    add_column :pals, :admin, :boolean
  end
end
