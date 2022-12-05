# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :favorites }

  describe 'user attributes' do
    it 'has attributes' do
      user = create(:user, email: 'user@email.com')
      expect(user.id).to be_an Integer
      expect(user.email).to eq('user@email.com')
      expect(user.fname).to be_a String
      expect(user.lname).to be_a String
    end
  end
end
