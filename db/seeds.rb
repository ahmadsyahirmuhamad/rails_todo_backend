# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# example
user = User.create!(email: "user@example.com", password: "password", password_confirmation: "password", first_name: "user", last_name: "dummy")
todo = user.todos.create!(title: "things todo", description: "description of things todo")
subtodo = todo.sub_todos.create!(title: "sub todo title")
