class DailyWeather
  attr_reader :date, 
              :sunrise, 
              :sunset, 
              :max_temp, 
              :min_temp, 
              :conditions, 
              :icon
  def initialize(data)
    @date = convert_time_just_date(data[:dt])
    @sunrise = convert_time(data[:sunrise])
    @sunset = convert_time(data[:sunset])
    @max_temp = data[:temp][:max]
    @min_temp = data[:temp][:min]
    @conditions = data[:weather].first[:description]
    @icon = data[:weather].first[:icon]
  end

  def convert_time(time)
    Time.at(time)
    .strftime("%m/%d/%Y at %I:%M%p")
  end

  def convert_time_just_date(time)
    Time.at(time)
    .strftime("%m/%d/%Y")
  end
end