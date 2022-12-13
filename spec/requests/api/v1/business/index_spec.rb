# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Businesses | Index', type: :request do
  describe 'As a User, when I send a get request to /businesses', :vcr do
    it 'I see a index of businesses with the params I requested' do
      get api_v1_business_index_path, params: { business: 'brewery', location: 'littleton, CO' }

      expect(response).to have_http_status :ok

      business_response = JSON.parse(response.body, symbolize_names: true)
      business_response[:data].each do |business|
        expect(business).to have_key(:id)
        expect(business[:type]).to eq 'business'
        expect(business[:attributes]).to be_an Hash
        expect(business[:attributes][:title]).to be_an String
        expect(business[:attributes][:venue_type]).to be_an String
        expect(business[:attributes][:display_address]).to be_an Hash
        expect(business[:attributes][:rating]).to be_an Float
        expect(business[:attributes][:site]).to be_an String
        expect(business[:attributes][:img]).to be_an String
        expect(business[:attributes][:is_closed]).to be_in([true, false])
        expect(business[:attributes][:price]).to be_in(['Bargain-basement', "Sir, this is a Wendy's",
                                                        'It may cost you an arm and a leg', "Worth a King's ransom", nil])
        expect(business[:attributes][:display_phone]).to be_an String
        expect(business[:attributes][:coordinates]).to be_an Hash
        expect(business[:attributes][:alias]).to be_a String
      end
    end
  end

  it 'I see a index of businesses with the other resteraunt I requested', :vcr do
    get api_v1_business_index_path, params: { business: 'Potager', location: 'Denver, CO' }

    expect(response).to have_http_status :ok

    business_response = JSON.parse(response.body, symbolize_names: true)
    business_response[:data].each do |business|
      expect(business).to have_key(:id)
      expect(business[:type]).to eq 'business'
      expect(business[:attributes]).to be_an Hash
      expect(business[:attributes][:title]).to be_an String
      expect(business[:attributes][:venue_type]).to be_an String
      expect(business[:attributes][:display_address]).to be_an Hash
      expect(business[:attributes][:rating]).to be_an Float
      expect(business[:attributes][:site]).to be_an String
      expect(business[:attributes][:img]).to be_an String
      expect(business[:attributes][:is_closed]).to be_in([true, false])
      expect(business[:attributes][:price]).to be_in(['Bargain-basement', "Sir, this is a Wendy's",
                                                      'It may cost you an arm and a leg', "Worth a King's ransom", nil])
      expect(business[:attributes][:display_phone]).to be_an String
      expect(business[:attributes][:coordinates]).to be_an Hash
      expect(business[:attributes][:alias]).to be_a String
    end
  end
end
