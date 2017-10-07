Types::TodoType = GraphQL::ObjectType.define do
  name "Todo"

  field :id, !types.ID
  field :title, types.String
  field :description, types.String
  field :completed, types.Boolean
  field :created_at, !types.String
  field :updated_at, !types.String

  # errors
  field :errors, types[types.String], "Reasons the object couldn't be created or updated" do
    resolve ->(obj, args, ctx) { obj.errors.full_messages }
  end

  # associations
  field :user, Types::UserType
  field :sub_todos, types[!Types::SubTodoType]

  connection :sub_todos, Types::SubTodoType.connection_type, max_page_size: 3, property: :sub_todos do
    resolve ->(obj, args, ctx) {
      obj.sub_todos.all
    }
  end

end
