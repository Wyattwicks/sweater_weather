class BackgroundFacade
  class << self
    def picture(location)
      data = BackgroundService.get_picture(location)
      pic = data[:results].first
      Background.new(pic)
    end
  end
end