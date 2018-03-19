class AddColumnsUseridToCounttypes < ActiveRecord::Migration[5.2]
  def change
    add_column :counttypes, :user_id, :integer
  end
end
