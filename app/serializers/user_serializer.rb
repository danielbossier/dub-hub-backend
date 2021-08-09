class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  belongs_to :group
  has_many :teams
  has_many :leagues, through: :teams
end
