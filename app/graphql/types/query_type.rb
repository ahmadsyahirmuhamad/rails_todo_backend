Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  # single query
  field :user do
    type Types::UserType
    description "find current user"
    resolve ->(obj, args, ctx) { ctx[:current_user] }
  end

  # multiple query
  connection :todos, Types::TodoType.connection_type, max_page_size: 3, property: :todos do
    resolve ->(obj, args, ctx) {
      ctx[:current_user].todos
    }
  end

  connection :sub_todos, Types::SubTodoType.connection_type, max_page_size: 3, property: :sub_todos do
    argument :todo_id, !types.ID
    resolve ->(obj, args, ctx) {
      todo = Todo.find(args[:todo_id])
      if todo
        todo.sub_todos
      else
      end
    }
  end

end
