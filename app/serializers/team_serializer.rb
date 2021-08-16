class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses

  belongs_to :league
  has_many :user_teams
  has_many :users, through: :user_teams
end
