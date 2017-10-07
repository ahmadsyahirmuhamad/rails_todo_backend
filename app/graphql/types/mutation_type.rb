Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # user session
  field :userLogin, field: Mutations::UserSessionMutations::Login.field

  # todo mutation
  field :createTodo, field: Mutations::TodoMutations::Create.field
  field :updateTodo, field: Mutations::TodoMutations::Update.field
  field :deleteTodo, field: Mutations::TodoMutations::Delete.field

  # subtodo mutation
  field :createSubTodo, field: Mutations::SubTodoMutations::Create.field
  field :updateSubTodo, field: Mutations::SubTodoMutations::Update.field
  field :deleteSubTodo, field: Mutations::SubTodoMutations::Delete.field

end
