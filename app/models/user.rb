class User < ActiveRecord::Base
  validates :password, presence: true
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password

  def mood
    if self.nausea > self.happiness
      'sad'
    else
      'happy'
    end
  end
end
