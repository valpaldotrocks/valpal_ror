class CreatePals < ActiveRecord::Migration
  def change
    create_table :pals do |t|
      t.string :email
      t.string :name

      t.timestamps null: false
    end
  end
end
