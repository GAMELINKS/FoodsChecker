class AddColumnsToPlacetypes < ActiveRecord::Migration[5.2]
  def change
    add_column :placetypes, :user_id, :integer
  end
end
