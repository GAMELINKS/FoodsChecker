class AddColumnsUseridToCounts < ActiveRecord::Migration[5.2]
  def change
    add_column :counts, :user_id, :integer
  end
end
