class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :league

  has_many :teams
end
