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