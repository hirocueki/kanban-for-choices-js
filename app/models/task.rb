class Task < ApplicationRecord
  belongs_to :board

  has_many :assignments, dependent: :destroy
  has_many :members, through: :assignments

  validates :title, presence: true, length: { maximum: 80 }
  validates :content, presence: true, length: { maximum: 200 }
  validates :members, presence: true

  def member_names
    members.pluck(:name).join(', ')
  end
end
