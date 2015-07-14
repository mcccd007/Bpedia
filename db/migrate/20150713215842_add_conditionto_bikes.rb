class AddConditiontoBikes < ActiveRecord::Migration
  def change
    add_column :bicycles, :condition, :string
  end
end
