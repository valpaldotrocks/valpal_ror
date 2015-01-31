class MakeNamesUniq < ActiveRecord::Migration
  def change
    add_index :pals, [:name], :unique => true
  end
end
