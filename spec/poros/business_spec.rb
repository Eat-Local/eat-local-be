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
                                          venue_type: String,
                                          title: String,
                                          alias: String,
                                          display_address: Hash,
                                          rating: Float,
                                          site: String,
                                          img: String,
                                          is_closed: be_in([true, false]),
                                          price: String,
                                          display_phone: String,
                                          coordinates: Hash
                                        })
    end
  end
end
