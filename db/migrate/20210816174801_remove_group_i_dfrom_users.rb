class RemoveGroupIDfromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :group_id, :integer
  end
end
