class RemoveCityFromTeams < ActiveRecord::Migration[6.1]
  def change
    remove_column :teams, :city, :string
  end
end
