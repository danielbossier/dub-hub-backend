class Team < ApplicationRecord
  belongs_to :user
  belongs_to :league
  has_many :user_teams
  has_many :users, through: :user_teams
end
