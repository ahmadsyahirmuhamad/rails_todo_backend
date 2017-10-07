module Mutations::TodoMutations
  Create = GraphQL::Relay::Mutation.define do
    name "createTodo"

    input_field :title, !types.String
    input_field :description, !types.String

    return_field :todo, Types::TodoType

    resolve ->(object, inputs, ctx) {
      todo = ctx[:current_user].todos.create(inputs.to_h)
      {
        todo: todo
      }
    }
  end

  Update = GraphQL::Relay::Mutation.define do
    name "updateTodo"

    input_field :id, !types.ID
    input_field :title, types.String
    input_field :description, types.String
    input_field :completed, types.Boolean

    return_field :todo, Types::TodoType

    resolve ->(object, inputs, ctx) {
      todo = Todo.find(inputs[:id])
      todo.update_attributes(inputs.to_h)
      {
        todo: todo
      }
    }
  end

  Delete = GraphQL::Relay::Mutation.define do
    name "deleteTodo"

    input_field :id, !types.ID

    return_field :todo, Types::TodoType

    resolve ->(object, inputs, ctx) {
      todo = Todo.find_by(id: inputs[:id])
      if todo
        result = todo.destroy
        {
          todo: result
        }
      else
        GraphQL::ExecutionError.new("error")
      end
    }
  end
end