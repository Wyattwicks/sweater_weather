class CurrentWeather
  attr_reader :datetime, 
              :sunrise, 
              :sunset, 
              :temperature, 
              :feels_like,
              :humidity, 
              :uvi, 
              :visibility, 
              :conditions, 
              :icon

  def initialize(data)
    @datetime = convert_time(data[:dt])
    @sunrise = convert_time(data[:sunrise])
    @sunset = convert_time(data[:sunset])
    @temperature = data[:temp]
    @feels_like = data[:feels_like]
    @humidity = data[:humidity]
    @uvi = data[:uvi]
    @visibility = data[:visibility]
    @conditions = data[:weather][0][:description]
    @icon = data[:weather][0][:icon]
  end

  def convert_time(time)
    Time.at(time)
    .strftime("%m/%d/%Y at %I:%M%p")
  end
end