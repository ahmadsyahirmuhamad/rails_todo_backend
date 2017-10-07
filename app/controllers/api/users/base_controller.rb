class Api::Users::BaseController < Api::Users::ApplicationController

  # authentication
  def http_auth_header_content
    request.headers['Authorization'] if request.headers['Authorization'].present?
  end

  def current_user
    decoded_auth_token ||= AuthTokenService.decode(http_auth_header_content)
    User.find_by(id: decoded_auth_token["user_id"]) if decoded_auth_token
  end

end
