class User < ApplicationRecord
  belongs_to :event
  validates :user_name, presence: true
end
