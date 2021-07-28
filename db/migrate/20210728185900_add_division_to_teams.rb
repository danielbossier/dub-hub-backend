class AddDivisionToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :division, :string
    add_column :teams, :conference, :string
  end
end
