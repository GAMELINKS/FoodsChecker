class AddColumnsToFoodtypes < ActiveRecord::Migration[5.2]
  def change
    add_column :foodtypes, :user_id, :integer
  end
end
