class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :teams

  belongs_to :group
  has_many :teams
  has_many :leagues, through: :teams
end
