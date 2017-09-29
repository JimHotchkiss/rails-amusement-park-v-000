class User < ActiveRecord::Base
  validates :password, presence: true
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
end
