class Invalid
  attr_reader :id,
              :start_city, 
              :end_city,
              :message,
              :travel_time,
              :weather_at_eta

  def initialize(data)
    @id = nil
    @type = "roadtrip"
    @start_city = data[:origin]
    @end_city = data[:destination]
    @travel_time = "Impossible route"
    @weather_at_eta = {}
  end
end