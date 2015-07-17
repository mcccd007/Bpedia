class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :content
      t.references :bicycle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end