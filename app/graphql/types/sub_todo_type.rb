Types::SubTodoType = GraphQL::ObjectType.define do
  name "SubTodo"

  field :id, !types.ID
  field :todo_id, types.ID
  field :title, types.String
  field :completed, types.Boolean
  field :created_at, !types.String
  field :updated_at, !types.String

  # errors
  field :errors, types[types.String], "Reasons the object couldn't be created or updated" do
    resolve ->(obj, args, ctx) { obj.errors.full_messages }
  end

  # associations
  field :todo, Types::TodoType

end
