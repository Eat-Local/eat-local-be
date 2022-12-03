# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'user attributes' do
    it 'has attributes' do
      user = create(:user, email: 'user@email.com')
      expect(user.id).to be_an Integer
      expect(user.email).to eq('user@email.com')
      expect(user.password).to eq('password')
    end
  end
end
