module Mutations::SubTodoMutations
  Create = GraphQL::Relay::Mutation.define do
    name "createSubTodo"

    input_field :todo_id, !types.ID
    input_field :title, !types.String

    return_field :sub_todo, Types::SubTodoType

    resolve ->(object, inputs, ctx) {
      todo = Todo.find_by(id: inputs[:todo_id])
      if todo
        sub_todo = todo.sub_todos.create(inputs.to_h)
        {
          sub_todo: sub_todo
        }
      else
        GraphQL::ExecutionError.new("error")
      end
    }
  end

  Update = GraphQL::Relay::Mutation.define do
    name "updateSubTodo"

    input_field :id, !types.ID
    input_field :title, types.String
    input_field :completed, types.Boolean

    return_field :sub_todo, Types::SubTodoType

    resolve ->(object, inputs, ctx) {
      sub_todo = SubTodo.find_by(id: inputs[:id])
      if sub_todo
        sub_todo.update_attributes(inputs.to_h)
        {
          sub_todo: sub_todo
        }
      else
        GraphQL::ExecutionError.new("error")
      end
    }
  end

  Delete = GraphQL::Relay::Mutation.define do
    name "deleteSubTodo"

    input_field :id, !types.ID

    return_field :sub_todo, Types::SubTodoType

    resolve ->(object, inputs, ctx) {
      sub_todo = SubTodo.find_by(id: inputs[:id])
      if sub_todo
        result = sub_todo.destroy
        {
          sub_todo: result
        }
      else
        GraphQL::ExecutionError.new("error")
      end
    }
  end
end