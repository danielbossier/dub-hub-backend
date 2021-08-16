class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :teams

  has_many :group_users
  has_many :groups, through: :group_users
  has_many :leagues, through: :teams
  has_many :user_teams
  has_many :teams, through: :user_teams
end
