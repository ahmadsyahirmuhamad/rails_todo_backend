class Todo < ApplicationRecord

  # associations
  belongs_to :user
  has_many :sub_todos
end
