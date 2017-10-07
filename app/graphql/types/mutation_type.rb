Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # user session
  field :userLogin, field: Mutations::UserSessionMutations::Login.field

  # todo mutation
  field :createTodo, field: Mutations::TodoMutations::Create.field
  field :updateTodo, field: Mutations::TodoMutations::Update.field
  field :deleteTodo, field: Mutations::TodoMutations::Delete.field

end
