class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # associations
  has_many :todos

  # validations
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :password, length: { minimum: 8 }, confirmation: true
  validates :password_confirmation, presence: true

  def generate_auth_token
    payload = { user_id: id }
    AuthTokenService.encode(payload)
  end

end

