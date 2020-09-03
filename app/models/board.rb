class Board < ApplicationRecord
  has_many :tasks, dependent: :destroy

  scope :default_order, -> { order(id: :desc) }
end
