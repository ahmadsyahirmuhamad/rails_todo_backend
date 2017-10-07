require 'rails_helper'

describe Todo do

  describe 'associations' do
    context 'associations' do
      it {should belong_to(:user)}
      it {should have_many(:sub_todos)}
    end
  end

end