class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses

  belongs_to :user
  belongs_to :league
end
