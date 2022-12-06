# frozen_string_literal: true

require 'rails_helper'

RSpec.describe YelpService, :vcr, type: :service do
  describe '.get_businesses' do
    it 'should return businesses that are local ordered by distance' do
      response = described_class.get_businesses('Frisco, CO', 'brewery')

      response[:businesses].each do |business|
        expect(business[:location][:state]).to be_an String
        expect(business[:location][:state]).to eq 'CO'

        expect(business[:categories][0][:alias]).to be_an String
      end
    end
  end
end
