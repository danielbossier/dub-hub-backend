class DropUserTeams < ActiveRecord::Migration[6.1]
  def change
    drop_table :user_teams
  end
end
