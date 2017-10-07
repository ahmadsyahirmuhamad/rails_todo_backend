module Mutations::UserSessionMutations
  Login = GraphQL::Relay::Mutation.define do
    name "userLogin"

    input_field :email, !types.String
    input_field :password, !types.String

    return_field :user, Types::UserType

    resolve ->(object, inputs, ctx) {
      user = User.find_by(email: inputs[:email])
      user.valid_password?(inputs[:password]) ? user : nil
      {
        user: user
      }
    }
  end
end