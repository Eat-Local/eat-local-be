# frozen_string_literal: true

require 'rails_helper'

RSpec.describe YelpFacade, :vcr, type: :facade do
  describe '.initialize' do
    let(:object) { described_class.business_details('Frisco, CO', 'brewery') }

    it 'returns an array of Business objects' do
      expect(object).to be_an Array
      expect(object).to all(be_an_instance_of(Business))
    end
  end
end
