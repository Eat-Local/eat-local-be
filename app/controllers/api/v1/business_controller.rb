# frozen_string_literal: true

module Api
  module V1
    class BusinessController < ApplicationController
      def index                                                              
        render json: BusinessSerializer.new(YelpFacade.business_details(business_params[:location],
                                                                        business_params[:business]))
      end

      def business_params
        params.permit(:location, :business)
      end

      private_methods :business_params
    end
  end
end
