class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :name
      t.string :make
      t.string :model

      t.string :year


      t.timestamps null: false
    end
  end
end
