# frozen_string_literal: true

class BusinessSerializer
  include JSONAPI::Serializer
  attributes :title, :venue_type, :display_address, :rating, :site, :img, :is_closed, :price, :display_phone, :coordinates
end
