class Route
  attr_reader :id, 
              :start_city, 
              :end_city, 
              :travel_time, 
              :hours_to_arrival,
              :weather_at_eta,
              :conditions,
              :temperature
              

  def initialize(data, forecast)
    @id = nil
    @type = "roadtrip"
    @start_city = "#{data[:route][:locations][0][:adminArea5]}, #{data[:route][:locations][0][:adminArea3]}"
    @end_city = "#{data[:route][:locations][1][:adminArea5]}, #{data[:route][:locations][1][:adminArea3]}"
    @travel_time = "#{data[:route][:formattedTime].split(":")[0]} hour(s) and #{data[:route][:formattedTime].split(":")[1]} minutes"
    @hours_to_arrival = data[:route][:formattedTime].split(":").first.to_i
    @weather_at_eta = {}
    @weather_at_eta[:conditions] = forecast[@hours_to_arrival][:weather][0][:description]
    @weather_at_eta[:temperature] = forecast[@hours_to_arrival][:weather][0][:temperature]
  end
end