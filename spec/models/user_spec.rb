require 'rails_helper'

describe User do

  describe 'associations' do
    context 'associations' do
      it {should have_many(:todos)}
    end
  end

  context 'instance methods' do
    # it { should respond_to(:set_default_role) }
    # it { should respond_to(:generate_auth_token) }
    # it { should respond_to(:filtered_course) }
    # it { should respond_to(:filtered_social_wall) }
  end

  # context '#before_create' do
  #   describe '#set_default_role' do

  #     before(:all) do
  #       RoleGenerator.populate_db
  #     end

  #     it 'should set_default_role to user' do
  #       user = create(:user, :user_role)
  #       expect(user).to be_valid
  #       expect(user.role.name).to eql("user")

  #     end

  #     it 'should set_default_role to tutor' do
  #       user = create(:user, :tutor_role)
  #       expect(user).to be_valid
  #       expect(user.role.name).to eql("tutor")
  #     end

  #   end
  # end

  # context '#auth_token' do
  #   describe '#generate_auth_token' do

  #     before(:all) do
  #       @user = create(:user, :user_role)
  #     end

  #     it 'should generate auth token' do
  #       token = @user.generate_auth_token
  #       expect(@user.generate_auth_token).to eql(token)
  #     end

  #   end
  # end

end