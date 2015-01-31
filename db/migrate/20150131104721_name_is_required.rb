class NameIsRequired < ActiveRecord::Migration
  def change
    change_column :pals, :name, :string, :null => false
  end
end
