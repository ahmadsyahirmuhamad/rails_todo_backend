class SubTodo < ApplicationRecord

  # associations
  belongs_to :todo

  # validations
  validates :todo_id, presence: true
  validates :title, presence: true

end