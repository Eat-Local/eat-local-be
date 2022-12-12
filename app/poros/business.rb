# frozen_string_literal: true

class Business
  attr_reader :title,
              :id,
              :alias,
              :venue_type,
              :display_address,
              :rating,
              :site,
              :img,
              :is_closed,
              :price,
              :display_phone,
              :coordinates

  def initialize(data)
    @id = data[:id]
    @alias = data[:alias]
    @title = data[:name]
    @venue_type = data[:categories][0][:title]
    @display_address = data[:location]
    @rating = data[:rating]
    @site = data[:url]
    @img = data[:image_url]
    @is_closed = data[:is_closed]
    @price = price_conversion(data[:price])
    @display_phone = data[:display_phone]
    @coordinates = data[:coordinates]
  end


  private

  def price_conversion(data)
    case data
    when '$'
      "Bargain-basement"
    when '$$'
      "Sir, this is a Wendy's"
    when '$$$'
      "Worth a King's ransom"
    end
  end 
end
