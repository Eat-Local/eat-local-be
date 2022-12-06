class YelpFacade

 def self.business_details(location, business)
  business_data = YelpService.get_businesses(location, business)
  businesses = business_data.map do |data|
   Business.new(data)
  end
 end
end