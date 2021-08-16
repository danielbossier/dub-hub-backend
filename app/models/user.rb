class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :teams
  has_many :leagues, through: :teams
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :group_users
  has_many :groups, through: :group_users
end
