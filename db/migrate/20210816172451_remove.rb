class Remove < ActiveRecord::Migration[6.1]
  def change
    remove_column :teams, :user_id, :integer
  end
end
