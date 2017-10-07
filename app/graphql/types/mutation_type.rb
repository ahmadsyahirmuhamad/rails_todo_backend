Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # user session
  field :userLogin, field: Mutations::UserSessionMutations::Login.field

end
