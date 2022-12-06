# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Business, :vcr, type: :object do
  describe '.initialize' do
    let(:object) { Business.new(YelpService.get_businesses('Frisco, CO', 'brewery')[:businesses].first) }

    it 'should initialize a instance of described_class' do
      expect(object).to be_an_instance_of described_class
    end

    it 'should have correct attribute data types' do
      expect(object).to have_attributes({
                                          address: Hash,
                                          img: String,
                                          rating: Float,
                                          site: String,
                                          title: String,
                                          type: String
                                        })
    end
  end
end
