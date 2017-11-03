Types::UserType = GraphQL::ObjectType.define do
  name "User"

  field :id, !types.ID
  field :email, types.String
  field :first_name, types.String
  field :last_name, types.String
  field :full_name do
    type !types.String
    description 'user full name'
    resolve -> (obj, args, ctx) { "#{obj.first_name} #{obj.last_name}" }
  end
  field :auth_token do
    type !types.String
    description 'user auth_token'
    resolve -> (obj, args, ctx) { obj.generate_auth_token }
  end
  field :created_at, !types.String
  field :updated_at, !types.String

  # errors
  field :errors, types[types.String], "Reasons the object couldn't be created or updated" do
    resolve ->(obj, args, ctx) { obj.errors.full_messages }
  end

  # associations
  field :todos, types[!Types::TodoType]

  connection :todos, Types::TodoType.connection_type, max_page_size: 15, property: :todos do
    resolve ->(obj, args, ctx) {
      obj.todos.all
    }
  end

end
