# frozen_string_literal: true

class Business
  attr_reader :type,
              :title,
              :address,
              :rating,
              :site,
              :img

  def initialize(data)
    @type = data[:categories][0][:title]
    @title = data[:name]
    # @description = ???
    @address = data[:location]
    @rating = data[:rating]
    @site = data[:url]
    @img = data[:image_url]
    # @hours = data[:is_closed]???
    # @phone = ???
    # @wheelchair_accessible = exstension???
  end
end
