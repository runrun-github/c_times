class Event < ApplicationRecord
  has_many :users,dependent: :destroy
  validates :name, presence: true
end
