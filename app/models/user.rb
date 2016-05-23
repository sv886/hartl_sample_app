class User < ActiveRecord::Base
  validates :name, :email, presence: true, length: { maximum: 50 }
end
