class Todo < ApplicationRecord

  # associations
  belongs_to :user
  has_many :sub_todos

  # validations
  validates :user_id, presence: true
  validates :title, presence: true
  validates :description, presence: true

end