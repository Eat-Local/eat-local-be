class YelpService
  def self.get_businesses(location, business)
   response = conn.get("/v3/businesses/search?") do |request|
    request.params['term'] = "locally owned #{business}"
    request.params['location'] = location
   end
   parse(response)
  end

  def self.conn
    Faraday.new('https://api.yelp.com') do |faraday|
      faraday.params['limit'] = '40'
      faraday.params['sort_by'] = 'distance'
      faraday.params['radius'] = '16100'
      faraday.headers['Authorization'] = ENV['YELP_API_KEY']
    end
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  private_class_method :conn, :parse
end