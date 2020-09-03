class Member < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :tasks, through: :assignments

  validates :name, presence: true, length: { maximum: 50 }
end
