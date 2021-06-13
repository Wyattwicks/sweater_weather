class HourlyWeather
  attr_reader :time, 
              :temperature, 
              :conditions, 
              :icon
  def initialize(data)
    @time = convert_time(data[:dt])
    @temperature = data[:temp]
    @conditions = data[:weather][0][:description]
    @icon = data[:weather][0][:icon]
  end

  def convert_time(time)
    Time.at(time)
    .strftime("%I:%M%p")
  end
end