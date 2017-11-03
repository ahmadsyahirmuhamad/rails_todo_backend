if Rails.env.development?
  GraphiQL::Rails.config.headers['Authorization'] = -> (context) {
    "#{User.first.generate_auth_token}"
  }
end