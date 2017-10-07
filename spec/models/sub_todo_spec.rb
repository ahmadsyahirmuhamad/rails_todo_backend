require 'rails_helper'

describe SubTodo do

  describe 'associations' do
    context 'associations' do
      it {should belong_to(:todo)}
    end
  end

end